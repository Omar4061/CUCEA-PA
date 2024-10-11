<?php

// Evitar que se muestren errores en la salida
error_reporting(0);
ini_set('display_errors', 0);

include './../../config/db.php';

// Verificar la conexión
if (!$conexion) {
    header('Content-Type: application/json');
    echo json_encode(['error' => 'Error de conexión a la base de datos']);
    exit;
}

// Obtener el departamento
$departamento = isset($_POST['departamento']) ? $_POST['departamento'] : '';

    function getDepartamentoQuery($departamento) {
        $departamentosMap = [
            'Administración'  => ['Administracion'],
            'PALE'  => ['ADMINISTRACION/PROGRAMA DE APRENDIZAJE DE LENGUA EXTRANJERA'],
            'Auditoría'  => ['Auditoria', 'SECRETARIA ADMINISTRATIVA/AUDITORIA'],
            'Ciencias_Sociales'  => ['CERI/CIENCIAS SOCIALES', 'CIENCIAS SOCIALES'],
            'Politicas_Públicas'  => ['POLITICAS PUBLICAS'],
            'Contabilidad'  => ['CONTABILIDAD'],
            'Economía'  => ['ECONOMIA'],
            'Estudios_Regionales'  => ['ESTUDIOS REGIONALES'],
            'Finanzas'  => ['Finanzas'],
            'Impuestos'  => ['IMPUESTOS'],
            'Mercadotecnia y Negocios Internacionales'  => ['MERCADOTECNIA'],
            'Métodos_Cuantitativos'  => ['METODOS CUANTITATIVOS'],
            'Recursos_Humanos'  => ['RECURSOS_HUMANOS'],
            'Mercadotecnia'  => ['MERCADOTECNIA'],
            'Sistemas_de_Información'  => ['SISTEMAS DE INFORMACION'],
            'Turismo' => ['Turismo', 'Turismo R. y S.']
        ];

        if (isset($departamentosMap[$departamento])) {
            $conditions = array_map(function($dep) {
                return "Departamento = ?";
            }, $departamentosMap[$departamento]);
            return [
                'query' => "WHERE " . implode(" OR ", $conditions),
                'valores' => $departamentosMap[$departamento]
            ];
        }

        return [
            'query' => "WHERE Departamento = ?",
            'valores' => [$departamento]
        ];
    }

    try {
        // Modificar la consulta base
        if ($departamento === 'todos') {
            $query = "SELECT Codigo, Nombre_completo, Departamento, Tipo_plaza, 
                             Horas_frente_grupo, Carga_horaria, Horas_definitivas 
                      FROM Coord_Per_Prof 
                      ORDER BY Nombre_completo";
            $stmt = $conexion->prepare($query);
        } else {
            $queryInfo = getDepartamentoQuery($departamento);
            $query = "SELECT Codigo, Nombre_completo, Departamento, Tipo_plaza, 
                             Horas_frente_grupo, Carga_horaria, Horas_definitivas 
                      FROM Coord_Per_Prof " . 
                      $queryInfo['query'] . " 
                      ORDER BY Nombre_completo";
            $stmt = $conexion->prepare($query);
            
            // Bind dinámico de parámetros
            $types = str_repeat("s", count($queryInfo['valores']));
            $stmt->bind_param($types, ...$queryInfo['valores']);
        }

    // Ejecutar la consulta
    $stmt->execute();
    $result = $stmt->get_result();

    // Obtener los resultados
    $personal = array();
    while ($row = $result->fetch_assoc()) {
        // Asegurarse de que los valores numéricos sean números
        $row['Horas_frente_grupo'] = intval($row['Horas_frente_grupo']);
        $row['Horas_definitivas'] = intval($row['Horas_definitivas']);
        $personal[] = $row;
    }

    // Enviar la respuesta
    header('Content-Type: application/json');
    echo json_encode($personal);

} catch (Exception $e) {
    header('Content-Type: application/json');
    echo json_encode(['error' => 'Error en la consulta: ' . $e->getMessage()]);
}

// Cerrar la conexión y el statement
if (isset($stmt)) {
    $stmt->close();
}
if (isset($conexion)) {
    $conexion->close();
}