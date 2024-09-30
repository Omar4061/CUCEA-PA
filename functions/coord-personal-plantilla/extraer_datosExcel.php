<?php
// extraerdatosexcel
session_start();
ini_set('memory_limit', '256M');
require './../../vendor/autoload.php';
include './../notificaciones-correos/email_functions.php';
ob_start();

use PhpOffice\PhpSpreadsheet\IOFactory;

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "pa";

$conn = new mysqli($servername, $username, $password, $dbname);

function convertExcelDate($value)
{
    if (!is_numeric($value)) {
        return $value;
    }
    $unix_date = ($value - 25569) * 86400;
    return date("Y-m-d", $unix_date);
}

function safeSubstr($string, $start, $length = null)
{
    if ($string === null) {
        return null;
    }
    return $length === null ? substr($string, $start) : substr($string, $start, $length);
}

if ($conn->connect_error) {
    echo json_encode(["success" => false, "message" => "Error de conexión a la base de datos: " . $conn->connect_error]);
    exit();
}

if (isset($_FILES["file"]) && $_FILES["file"]["error"] == 0) {
    $file = $_FILES["file"]["tmp_name"];
    $fileName = $_FILES["file"]["name"];
    $fileSize = $_FILES["file"]["size"];

    $usuario_id = $_SESSION['Codigo'] ?? null;
    $rol_id = $_SESSION['Rol_ID'] ?? null;

    if ($usuario_id !== null) {
        $spreadsheet = IOFactory::load($file);
        $sheet = $spreadsheet->getActiveSheet();
        $highestRow = $sheet->getHighestRow();

        $sql = "INSERT INTO Coord_Per_Prof (
            Codigo, Paterno, Materno, Nombres, Nombre_completo, Sexo, Departamento,
            Categoria_actual, Categoria_actual_dos, Horas_frente_grupo, Division, Tipo_plaza, Cat_act,
            Carga_horaria, Horas_definitivas, Horario, Turno, Investigacion_nombramiento_cambio_funcion,
            SNI, SNI_desde, Cambio_dedicacion, Inicio, Fin, `2024A`, Telefono_particular, Telefono_oficina,
            Domicilio, Colonia, CP, Ciudad, Estado, No_imss, CURP, RFC, Lugar_nacimiento, Estado_civil,
            Tipo_sangre, Fecha_nacimiento, Edad, Nacionalidad, Correo, Correos_oficiales, Ultimo_grado,
            Programa, Nivel, Institucion, Estado_pais, Año, Gdo_exp, Otro_grado, Otro_programa,
            Otro_nivel, Otro_institucion, Otro_estado_pais, Otro_año, Otro_gdo_exp,
            Otro_grado_alternativo, Otro_programa_alternativo, Otro_nivel_altenrativo,
            Otro_institucion_alternativo, Otro_estado_pais_alternativo, Otro_año_alternativo,
            Otro_gdo_exp_alternativo, Proesde_24_25, A_partir_de, Fecha_ingreso, Antiguedad
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        $stmt = $conn->prepare($sql);

        if ($stmt === false) {
            echo json_encode(["success" => false, "message" => "Error en la preparación de la consulta: " . $conn->error]);
            exit();
        }

        $errores = array();

        for ($row = 2; $row <= $highestRow; $row++) {
            $codigo = safeSubstr($sheet->getCell('A' . $row)->getCalculatedValue(), 0, 12);
            $paterno = safeSubstr($sheet->getCell('B' . $row)->getCalculatedValue(), 0, 35);
            $materno = safeSubstr($sheet->getCell('C' . $row)->getCalculatedValue(), 0, 35);
            $nombres = safeSubstr($sheet->getCell('D' . $row)->getCalculatedValue(), 0, 60);
            $nombre_completo = safeSubstr($sheet->getCell('E' . $row)->getCalculatedValue(), 0, 60);
            $sexo = safeSubstr($sheet->getCell('F' . $row)->getCalculatedValue(), 0, 10);
            $departamento = safeSubstr($sheet->getCell('G' . $row)->getCalculatedValue(), 0, 60);
            $categoria_actual = safeSubstr($sheet->getCell('H' . $row)->getCalculatedValue(), 0, 60);
            $categoria_actual_dos = safeSubstr($sheet->getCell('I' . $row)->getCalculatedValue(), 0, 60);
            $horas_frente_grupo = intval($sheet->getCell('J' . $row)->getCalculatedValue());
            $division = safeSubstr($sheet->getCell('K' . $row)->getCalculatedValue(), 0, 60);
            $tipo_plaza = safeSubstr($sheet->getCell('L' . $row)->getCalculatedValue(), 0, 60);
            $cat_act = safeSubstr($sheet->getCell('M' . $row)->getCalculatedValue(), 0, 60);
            $carga_horaria = safeSubstr($sheet->getCell('N' . $row)->getCalculatedValue(), 0, 60);
            $horas_definitivas = intval($sheet->getCell('O' . $row)->getCalculatedValue());
            $horario = safeSubstr($sheet->getCell('P' . $row)->getCalculatedValue(), 0, 60);
            $turno = safeSubstr($sheet->getCell('Q' . $row)->getCalculatedValue(), 0, 15);
            $investigacion_nombramiento_cambio_funcion = safeSubstr($sheet->getCell('R' . $row)->getCalculatedValue(), 0, 30);
            $sni = safeSubstr($sheet->getCell('S' . $row)->getCalculatedValue(), 0, 15);
            $sni_desde = convertExcelDate($sheet->getCell('T' . $row)->getCalculatedValue());
            $cambio_dedicacion = safeSubstr($sheet->getCell('U' . $row)->getCalculatedValue(), 0, 30);
            $inicio = convertExcelDate($sheet->getCell('V' . $row)->getCalculatedValue());
            $fin = convertExcelDate($sheet->getCell('W' . $row)->getCalculatedValue());
            $a_2024 = safeSubstr($sheet->getCell('X' . $row)->getCalculatedValue(), 0, 15);
            $telefono_particular = intval($sheet->getCell('Y' . $row)->getCalculatedValue());
            $telefono_oficina = intval($sheet->getCell('Z' . $row)->getCalculatedValue());
            $domicilio = safeSubstr($sheet->getCell('AA' . $row)->getCalculatedValue(), 0, 60);
            $colonia = safeSubstr($sheet->getCell('AB' . $row)->getCalculatedValue(), 0, 60);
            $cp = intval($sheet->getCell('AC' . $row)->getCalculatedValue());
            $ciudad = safeSubstr($sheet->getCell('AD' . $row)->getCalculatedValue(), 0, 30);
            $estado = safeSubstr($sheet->getCell('AE' . $row)->getCalculatedValue(), 0, 30);
            $no_imss = intval($sheet->getCell('AF' . $row)->getCalculatedValue());
            $curp = safeSubstr($sheet->getCell('AG' . $row)->getCalculatedValue(), 0, 30);
            $rfc = safeSubstr($sheet->getCell('AH' . $row)->getCalculatedValue(), 0, 30);
            $lugar_nacimiento = safeSubstr($sheet->getCell('AI' . $row)->getCalculatedValue(), 0, 50);
            $estado_civil = safeSubstr($sheet->getCell('AJ' . $row)->getCalculatedValue(), 0, 15);
            $tipo_sangre = safeSubstr($sheet->getCell('AK' . $row)->getCalculatedValue(), 0, 5);
            $fecha_nacimiento = safeSubstr($sheet->getCell('AL' . $row)->getCalculatedValue(), 0, 15);
            $edad = intval($sheet->getCell('AM' . $row)->getCalculatedValue());
            $nacionalidad = safeSubstr($sheet->getCell('AN' . $row)->getCalculatedValue(), 0, 20);
            $correo = safeSubstr($sheet->getCell('AO' . $row)->getCalculatedValue(), 0, 60);
            $correos_oficiales = safeSubstr($sheet->getCell('AP' . $row)->getCalculatedValue(), 0, 60);
            $ultimo_grado = safeSubstr($sheet->getCell('AQ' . $row)->getCalculatedValue(), 0, 5);
            $programa = safeSubstr($sheet->getCell('AR' . $row)->getCalculatedValue(), 0, 70);
            $nivel = safeSubstr($sheet->getCell('AS' . $row)->getCalculatedValue(), 0, 10);
            $institucion = safeSubstr($sheet->getCell('AT' . $row)->getCalculatedValue(), 0, 30);
            $estado_pais = safeSubstr($sheet->getCell('AU' . $row)->getCalculatedValue(), 0, 25);
            $año = intval($sheet->getCell('AV' . $row)->getCalculatedValue());
            $gdo_exp = safeSubstr($sheet->getCell('AW' . $row)->getCalculatedValue(), 0, 15);
            $otro_grado = safeSubstr($sheet->getCell('AX' . $row)->getCalculatedValue(), 0, 5);
            $otro_programa = safeSubstr($sheet->getCell('AY' . $row)->getCalculatedValue(), 0, 70);
            $otro_nivel = safeSubstr($sheet->getCell('AZ' . $row)->getCalculatedValue(), 0, 10);
            $otro_institucion = safeSubstr($sheet->getCell('BA' . $row)->getCalculatedValue(), 0, 30);
            $otro_estado_pais = safeSubstr($sheet->getCell('BB' . $row)->getCalculatedValue(), 0, 25);
            $otro_año = intval($sheet->getCell('BC' . $row)->getCalculatedValue());
            $otro_gdo_exp = safeSubstr($sheet->getCell('BD' . $row)->getCalculatedValue(), 0, 15);
            $otro_grado_alternativo = safeSubstr($sheet->getCell('BE' . $row)->getCalculatedValue(), 0, 5);
            $otro_programa_alternativo = safeSubstr($sheet->getCell('BF' . $row)->getCalculatedValue(), 0, 70);
            $otro_nivel_alternativo = safeSubstr($sheet->getCell('BG' . $row)->getCalculatedValue(), 0, 10);
            $otro_institucion_alternativo = safeSubstr($sheet->getCell('BH' . $row)->getCalculatedValue(), 0, 30);
            $otro_estado_pais_alternativo = safeSubstr($sheet->getCell('BI' . $row)->getCalculatedValue(), 0, 25);
            $otro_año_alternativo = intval($sheet->getCell('BJ' . $row)->getCalculatedValue());
            $otro_gdo_exp_alternativo = safeSubstr($sheet->getCell('BK' . $row)->getCalculatedValue(), 0, 15);
            $proesde_24_25 = safeSubstr($sheet->getCell('BL' . $row)->getCalculatedValue(), 0, 15);
            $a_partir_de = convertExcelDate($sheet->getCell('BM' . $row)->getCalculatedValue());
            $fecha_ingreso = convertExcelDate($sheet->getCell('BN' . $row)->getCalculatedValue());
            $antiguedad = safeSubstr($sheet->getCell('BO' . $row)->getCalculatedValue(), 0, 25);

            $stmt->bind_param(
                "sssssssssissssisssssssssiissississssssissssssssissssssissssssisssss",
                $codigo,
                $paterno,
                $materno,
                $nombres,
                $nombre_completo,
                $sexo,
                $departamento,
                $categoria_actual,
                $categoria_actual_dos,
                $horas_frente_grupo,
                $division,
                $tipo_plaza,
                $cat_act,
                $carga_horaria,
                $horas_definitivas,
                $horario,
                $turno,
                $investigacion_nombramiento_cambio_funcion,
                $sni,
                $sni_desde,
                $cambio_dedicacion,
                $inicio,
                $fin,
                $a_2024,
                $telefono_particular,
                $telefono_oficina,
                $domicilio,
                $colonia,
                $cp,
                $ciudad,
                $estado,
                $no_imss,
                $curp,
                $rfc,
                $lugar_nacimiento,
                $estado_civil,
                $tipo_sangre,
                $fecha_nacimiento,
                $edad,
                $nacionalidad,
                $correo,
                $correos_oficiales,
                $ultimo_grado,
                $programa,
                $nivel,
                $institucion,
                $estado_pais,
                $año,
                $gdo_exp,
                $otro_grado,
                $otro_programa,
                $otro_nivel,
                $otro_institucion,
                $otro_estado_pais,
                $otro_año,
                $otro_gdo_exp,
                $otro_grado_alternativo,
                $otro_programa_alternativo,
                $otro_nivel_alternativo,
                $otro_institucion_alternativo,
                $otro_estado_pais_alternativo,
                $otro_año_alternativo,
                $otro_gdo_exp_alternativo,
                $proesde_24_25,
                $a_partir_de,
                $fecha_ingreso,
                $antiguedad
            );

            if (!$stmt->execute()) {
                $errores[] = "Error en la fila $row: " . $stmt->error;
            }
        }

        if ($stmt->execute()) {
            // Insertar en Plantilla_CoordP
            $sqlInsertPlantillaCoordP = "INSERT INTO Plantilla_CoordP (Nombre_Archivo_CoordP, Tamaño_Archivo_CoordP, Usuario_ID) VALUES (?, ?, ?)";
            $stmtInsertPlantillaCoordP = $conn->prepare($sqlInsertPlantillaCoordP);
            
            $stmtInsertPlantillaCoordP->bind_param("sis", $fileName, $fileSize, $usuario_id);
        
            if ($stmtInsertPlantillaCoordP->execute()) {
                // Obtener correos de los usuarios de secretaría administrativa
                $sql_secretaria = "SELECT Correo FROM Usuarios WHERE Rol_ID = 2";
                $result_secretaria = $conn->query($sql_secretaria);
        
                $envio_exitoso = true;
        
                while ($secretaria = $result_secretaria->fetch_assoc()) {
                    $destinatario = $secretaria['Correo'];
                    $asunto = "Nuevos datos de Coordinación de Personal subidos";
                    $cuerpo = "
                    <html>
                    <head>
                        <style>
                            body { font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }
                            .container { width: 80%; margin: 40px auto; padding: 20px; border: 1px solid #ccc; border-radius: 10px; background-color: #fff; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
                            .header { text-align: center; padding-bottom: 20px; }
                            .header img { width: 300px; }
                            .content { padding: 20px; }
                            h2 { color: #2c3e50; }
                            p { line-height: 1.5; color: #333; }
                            .footer { text-align: center; padding-top: 20px; color: #999; font-size: 8px; }
                        </style>
                    </head>
                    <body>
                        <div class='container'>
                            <div class='header'>
                                <img src='https://i.imgur.com/gi5dvbb.png' alt='Logo PA'>
                            </div>
                            <div class='content'>
                                <h2>Nuevos datos de Coordinación de Personal subidos</h2>
                                <p>Se han subido nuevos datos de Coordinación de Personal.</p>
                                <p>Nombre del archivo: {$fileName}</p>
                                <p>Fecha de subida: " . date('d/m/y H:i') . "</p>
                                <p>Por favor, ingrese al sistema para más detalles.</p>
                            </div>
                            <div class='footer'>
                                <p>Centro para la Sociedad Digital</p>
                            </div>
                        </div>
                    </body>
                    </html>
                    ";
        
                    if (!enviarCorreo($destinatario, $asunto, $cuerpo)) {
                        $envio_exitoso = false;
                    }
                }
        
                if ($envio_exitoso) {
                    echo json_encode(["success" => true, "message" => "Archivo cargado y datos insertados en la base de datos."]);
                } else {
                    echo json_encode(["success" => true, "message" => "Archivo cargado y datos insertados en la base de datos, pero hubo problemas al enviar algunos correos."]);
                }
            } else {
                echo json_encode(["success" => false, "message" => "Error al insertar en Plantilla_CoordP: " . $stmtInsertPlantillaCoordP->error]);
            }
        } else {
            echo json_encode(["success" => false, "message" => "Error al insertar datos en Coord_Per_Prof: " . $stmt->error]);
        }
    }
}

$output = ob_get_clean();
if (json_decode($output) === null) {
    echo json_encode(["success" => false, "message" => $output]);
} else {
    echo $output;
}

$conn->close();
