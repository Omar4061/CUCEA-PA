<?php
include './../../config/db.php';

$espacio = $_GET['espacio'];
$modulo = $_GET['modulo'];

// Activar reporte de errores
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Imprimir variables para depuración
error_log("Espacio: " . $espacio);
error_log("Módulo: " . $modulo);

$departamentos = [
    'Estudios_Regionales', 'Finanzas', 'Ciencias_Sociales', 'PALE', 'Posgrados',
    'Economía', 'Recursos_Humanos', 'Métodos_Cuantitativos', 'Políticas_Públicas',
    'Administración', 'Auditoría', 'Mercadotecnia', 'Impuestos',
    'Sistemas_de_Información', 'Turismo', 'Contabilidad'
];

$horarios = array(
    'Lunes' => array(),
    'Martes' => array(),
    'Miercoles' => array(),
    'Jueves' => array(),
    'Viernes' => array(),
    'Sabado' => array()
);

foreach ($departamentos as $departamento) {
    $tabla = "Data_" . str_replace(' ', '_', $departamento);
    
    $query = "SELECT L, M, I, J, V, S, HORA_INICIAL, HORA_FINAL, CVE_MATERIA, MATERIA, NOMBRE_PROFESOR 
              FROM $tabla 
              WHERE MODULO = '$modulo' AND AULA = '$espacio'
              ORDER BY HORA_INICIAL";

    error_log("Consulta ejecutada: " . $query);

    $result = mysqli_query($conexion, $query);

    if ($result) {
        while ($row = mysqli_fetch_assoc($result)) {
            $dias = array('L' => 'Lunes', 'M' => 'Martes', 'I' => 'Miercoles', 'J' => 'Jueves', 'V' => 'Viernes', 'S' => 'Sabado');
            foreach ($dias as $inicial => $nombreDia) {
                if ($row[$inicial] !== null) {
                    $horarios[$nombreDia][] = array(
                        'hora_inicial' => $row['HORA_INICIAL'],
                        'hora_final' => $row['HORA_FINAL'],
                        'cve_materia' => $row['CVE_MATERIA'],
                        'materia' => $row['MATERIA'],
                        'profesor' => $row['NOMBRE_PROFESOR']
                    );
                }
            }
        }
    } else {
        error_log("Error en la consulta: " . mysqli_error($conexion));
    }
}

// Asegurarse de que no haya salida antes del JSON
ob_clean();

// Establecer las cabeceras correctas
header('Content-Type: application/json');
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");

// Imprimir el JSON y terminar la ejecución
// Al final del archivo, justo antes de enviar el JSON
header('Content-Type: application/json');
echo json_encode($horarios);
exit;
?>