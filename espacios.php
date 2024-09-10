<!--header -->
<?php include './template/header.php' ?>
<!-- navbar -->
<?php include './template/navbar.php' ?>
<!-- Conexión a la base de datos -->
<?php include './config/db.php' ?>

<?php
// Obtener el módulo seleccionado (por defecto CEDA)
$modulo_seleccionado = isset($_GET['modulo']) ? $_GET['modulo'] : 'CEDA';

// Consulta para obtener los espacios del módulo seleccionado
$query = "SELECT * FROM Espacios WHERE Modulo = '$modulo_seleccionado' ORDER BY Espacio";
$result = mysqli_query($conexion, $query);

// Organizar los espacios por piso
$espacios = [
    '03' => [],
    '02' => [],
    '01' => []
];

while ($row = mysqli_fetch_assoc($result)) {
    $piso = substr($row['Espacio'], 0, 2);
    if (isset($espacios[$piso])) {
        $espacios[$piso][] = $row;
    }
}
?>

<title>Espacios</title>
<link rel="stylesheet" href="./CSS/espacios.css" />

<!--Cuadro principal del home-->
<div class="cuadro-principal">
    <!--Pestaña azul-->
    <div class="encabezado">
        <div class="titulo-bd">
            <h3>Espacios</h3>
        </div>
    </div>

<!-- Cuadros de texto y desplegables -->
<div class="filtros">

    <div class="filtro">
        <label for="modulo">Módulo</label>
        <select id="modulo" name="modulo">
            <!-- <option value="">Seleccione un módulo</option> -->
            <?php
            $query = "SELECT DISTINCT modulo FROM Espacios ORDER BY modulo";
            $result = mysqli_query($conexion, $query);
            while ($row = mysqli_fetch_assoc($result)) {
                $selected = ($row['modulo'] == $modulo_seleccionado) ? 'selected' : '';
                echo "<option value='" . $row['modulo'] . "' $selected>" . $row['modulo'] . "</option>";
            }
            ?>
        </select>
    </div>
    <div class="filtro">
        <label for="dia">Día</label>
        <select id="dia" name="dia">
            <option value="">Seleccione un día</option>
            <option value="L">Lunes</option>
            <option value="M">Martes</option>
            <option value="I">Miércoles</option>
            <option value="J">Jueves</option>
            <option value="V">Viernes</option>
            <option value="S">Sábado</option>
            <option value="D">Domingo</option>
        </select>
    </div>
    <div class="filtro">
        <label for="horario_inicio">Hora Inicio</label>
        <select id="horario_inicio" name="horario_inicio">
            <option value="">Hora inicio</option>
            <?php
            for ($i = 7; $i <= 20; $i++) {
                $hour = str_pad($i, 2, "0", STR_PAD_LEFT) . ":00";
                echo "<option value='$hour'>$hour</option>";
            }
            ?>
        </select>
    </div>
    <div class="filtro">
        <label for="horario_fin">Hora Fin</label>
        <select id="horario_fin" name="horario_fin">
            <option value="">Hora fin</option>
            <?php
            for ($i = 8; $i <= 21; $i++) {
                $hour = str_pad($i, 2, "0", STR_PAD_LEFT) . ":55";
                echo "<option value='$hour'>$hour</option>";
            }
            ?>
        </select>
    </div>
    <div class="filtro tiempo-real-container">
        <label for="tiempo-real">Tiempo Real</label>
        <div class="toggle-switch">
            <input type="checkbox" id="tiempo-real" name="tiempo-real">
            <label for="tiempo-real"></label>
        </div>
    </div>
    <div id="filtrar-container">
        <button id="filtrar">Filtrar</button>
    </div>
</div>

<!-- Aquí empieza el código del Edificio -->
<div class="contenedor-principal">
    <div class="techo"></div>
    <div class="contenido-edificio">
        <div class="columna-lateral izquierda">
            <div class="letra-piso">
                <span><?php echo substr($modulo_seleccionado, -1); ?></span>
            </div>
            <div class="escaleras-container">
                <div class="escalera-superior"></div>
                <div class="escalera-inferior"></div>
            </div>
        </div>

        <div class="cuadro-grande">
        <?php foreach ($espacios as $piso => $espacios_piso): ?>
            <div class="piso">
                <div class="numero-piso"></div>
                <div class="salas">
                <?php $espacios_piso = array_reverse($espacios_piso); // Invertir el orden de los espacios
                    foreach ($espacios_piso as $espacio): ?>
                        <div class="sala-container">
                            <span class="sala-texto"><?php echo $espacio['Espacio']; ?></span>
                            <div class="sala <?php echo strtolower(str_replace(' ', '-', $espacio['Etiqueta'])); ?> <?php echo (strpos(strtolower($espacio['Etiqueta']), 'aula') !== false) ? 'aula' : ((strpos(strtolower($espacio['Etiqueta']), 'laboratorio') !== false) ? 'laboratorio' : ''); ?>" data-espacio="<?php echo $espacio['Espacio']; ?>">
                                <img src="./Img/icons/iconos-espacios/icono-<?php echo strtolower(str_replace(' ', '-', $espacio['Etiqueta'])); ?>.png" alt="<?php echo $espacio['Etiqueta']; ?>">
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
                <?php if ($piso == '02'): ?>
                    <div class="barandal"></div>
                <?php elseif ($piso == '01'): ?>
                    <div class="barandal"></div>
                <?php endif; ?>
                <div class="piso-gris"></div>
            </div>
        <?php endforeach; ?>
        </div>

        <div class="columna-lateral derecha">
            <div class="letra-piso">
                <span><?php echo substr($modulo_seleccionado, -1); ?></span>
            </div>
            <div class="escaleras-container">
                <div class="escalera-superior"></div>
                <div class="escalera-inferior"></div>
            </div>
        </div>
    </div>
</div>

<div class="leyenda">
    <div class="leyenda-item">
        <div class="cuadrito aula"></div>
        <span>Aula</span>
    </div>
    <div class="leyenda-item">
        <div class="cuadrito aula-ocupada"></div>
        <span>Aula ocupada</span>
    </div>
    <div class="leyenda-item">
        <div class="cuadrito laboratorio"></div>
        <span>Laboratorio</span>
    </div>
    <div class="leyenda-item">
        <div class="cuadrito laboratorio-ocupado"></div>
        <span>Laboratorio ocupado</span>
    </div>
    <div class="leyenda-item">
        <div class="cuadrito bodega"></div>
        <span>Bodega</span>
    </div>
    <div class="leyenda-item">
        <div class="cuadrito administrativo"></div>
        <span>Administrativo</span>
    </div>
</div>

<div id="claseModal" class="modal">
  <div class="modal-content">
    <span class="close">&times;</span>
    <div class="modal-header">
      <h2 id="modalTitle">Horario de clases</h2>
      <p id="espacioInfo">Espacio: </p>
      <div class="tab">
        <button class="tablinks active" onclick="openDay(event, 'Lunes')">L</button>
        <button class="tablinks" onclick="openDay(event, 'Martes')">M</button>
        <button class="tablinks" onclick="openDay(event, 'Miercoles')">I</button>
        <button class="tablinks" onclick="openDay(event, 'Jueves')">J</button>
        <button class="tablinks" onclick="openDay(event, 'Viernes')">V</button>
        <button class="tablinks" onclick="openDay(event, 'Sabado')">S</button>
      </div>
    </div>
    <div class="modal-body">
      <div id="tabContent"></div>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script src="./JS/espacios/filtros-espacios.js"></script>
<script src="./JS/espacios/modal-dias.js"></script>

<?php include './template/footer.php' ?>