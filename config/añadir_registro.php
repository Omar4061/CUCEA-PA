<?php
include '../config/db.php';
session_start(); // Iniciar la sesión

// Obtener el nombre y el ID del departamento del usuario desde la sesión
$nombre_departamento = $_SESSION['Nombre_Departamento'];
$departamento_id = $_SESSION['Departamento_ID'];

// Construir el nombre de la tabla según el departamento
$tabla_departamento = "Data_" . $nombre_departamento;

$ciclo = $_POST['ciclo'];
$nrc = $_POST['nrc'];
$fecha_ini = $_POST['fecha_ini'];
$fecha_fin = $_POST['fecha_fin'];
$l = $_POST['l'];
$m = $_POST['m'];
$i = $_POST['i'];
$j = $_POST['j'];
$v = $_POST['v'];
$s = $_POST['s'];
$d = $_POST['d'];
$hora_ini = $_POST['hora_ini'];
$hora_fin = $_POST['hora_fin'];
$edif = $_POST['edif'];
$aula = $_POST['aula'];

$sql = "INSERT INTO `$tabla_departamento` (CICLO, NRC, FECHA_INI, FECHA_FIN, L, M, I, J, V, S, D, HORA_INI, HORA_FIN, EDIF, AULA, Departamento_ID)
        VALUES ('$ciclo', '$nrc', '$fecha_ini', '$fecha_fin', '$l', '$m', '$i', '$j', '$v', '$s', '$d', '$hora_ini', '$hora_fin', '$edif', '$aula', $departamento_id)";

if (mysqli_query($conexion, $sql)) {
    echo "Registro añadido correctamente";
} else {
    echo "Error añadiendo registro: " . mysqli_error($conexion);
}

mysqli_close($conexion);
?>