function mostrarModal(espacio, horarios) {
    $('#modalTitle').text('Características del espacio');
    $('#espacioInfo').text(espacio);
    $('#moduloInfo').text(modulo);
    $('#tabContent').empty(); // Limpiar el contenido anterior
    
    var dias = ['Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado'];
    
    dias.forEach(function(dia) {
        var contenido = '<table class="horario-table">';
        contenido += '<thead><tr><th>Hora</th><th>Clase</th><th>Profesor</th></tr></thead><tbody>';
        
        if (horarios[dia] && horarios[dia].length > 0) {
            horarios[dia].forEach(function(clase) {
                contenido += `<tr>
                    <td>${clase.hora_inicial} - ${clase.hora_final}</td>
                    <td>${clase.materia}</td>
                    <td>${clase.profesor}</td>
                </tr>`;
            });
        } else {
            contenido += '<tr><td colspan="3">No hay clases programadas para este día.</td></tr>';
        }
        
        contenido += '</tbody></table>';
        $(`#tabContent`).append(`<div id="${dia}" class="tabcontent">${contenido}</div>`);
    });
    
    $('#claseModal').show();
    openDay(null, 'Lunes');  // Mostrar el lunes por defecto
}

function openDay(evt, dayName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(dayName).style.display = "block";
    if (evt) evt.currentTarget.className += " active";
}
