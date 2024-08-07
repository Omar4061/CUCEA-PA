let changedCells = new Set();

const columnMap = {
    'ID': 'ID_Plantilla',
    'CICLO': 'CICLO',
    'CRN': 'CRN',
    'MATERIA': 'MATERIA',
    'CVE MATERIA': 'CVE_MATERIA',
    'SECCIÓN': 'SECCION',
    'NIVEL': 'NIVEL',
    'NIVEL TIPO': 'NIVEL_TIPO',
    'TIPO': 'TIPO',
    'C. MIN': 'C_MIN',
    'H. TOTALES': 'H_TOTALES',
    'STATUS': 'ESTATUS',
    'TIPO CONTRATO': 'TIPO_CONTRATO',
    'CÓDIGO': 'CODIGO_PROFESOR',
    'NOMBRE PROFESOR': 'NOMBRE_PROFESOR',
    'CATEGORIA': 'CATEGORIA',
    'DESCARGA': 'DESCARGA',
    'CÓDIGO DESCARGA': 'CODIGO_DESCARGA',
    'NOMBRE DESCARGA': 'NOMBRE_DESCARGA',
    'NOMBRE DEFINITIVO': 'NOMBRE_DEFINITIVO',
    'TITULAR': 'TITULAR',
    'HORAS': 'HORAS',
    'CÓDIGO DEPENDENCIA': 'CODIGO_DEPENDENCIA',
    'L': 'L',
    'M': 'M',
    'I': 'I',
    'J': 'J',
    'V': 'V',
    'S': 'S',
    'D': 'D',
    'DÍA PRESENCIAL': 'DIA_PRESENCIAL',
    'DÍA VIRTUAL': 'DIA_VIRTUAL',
    'MODALIDAD': 'MODALIDAD',
    'FECHA INICIAL': 'FECHA_INICIAL',
    'FECHA FINAL': 'FECHA_FINAL',
    'HORA INICIAL': 'HORA_INICIAL',
    'HORA FINAL': 'HORA_FINAL',
    'MÓDULO': 'MODULO',
    'AULA': 'AULA',
    'CUPO': 'CUPO',
    'OBSERVACIONES': 'OBSERVACIONES',
    'EXTRAORDINARIO': 'EXAMEN_EXTRAORDINARIO'
};

const maxLengths = {
    'CICLO': 10,
    'CRN': 15,
    'MATERIA': 80,
    'CVE_MATERIA': 5,
    'SECCION': 5,
    'NIVEL': 25,
    'NIVEL_TIPO': 25,
    'TIPO': 1,
    'C_MIN': 2,
    'H_TOTALES': 2,
    'ESTATUS': 10,
    'TIPO_CONTRATO': 30,
    'CODIGO_PROFESOR': 9,
    'NOMBRE_PROFESOR': 60,
    'CATEGORIA': 40,
    'DESCARGA': 2,
    'CODIGO_DESCARGA': 9,
    'NOMBRE_DESCARGA': 60,
    'NOMBRE_DEFINITIVO': 60,
    'TITULAR': 2,
    'HORAS': 1,
    'CODIGO_DEPENDENCIA': 4,
    'L': 5,
    'M': 5,
    'I': 5,
    'J': 5,
    'V': 5,
    'S': 5,
    'D': 5,
    'DIA_PRESENCIAL': 10,
    'DIA_VIRTUAL': 10,
    'MODALIDAD': 10,
    'FECHA_INICIAL': 10,
    'FECHA_FINAL': 10,
    'HORA_INICIAL': 10,
    'HORA_FINAL': 10,
    'MODULO': 10,
    'AULA': 10,
    'CUPO': 3,
    'OBSERVACIONES': 150,
    'EXAMEN_EXTRAORDINARIO': 2
};

function makeEditable() {
    const table = document.getElementById('tabla-datos');
    const rows = table.getElementsByTagName('tr');
    
    for (let i = 1; i < rows.length; i++) {
        const cells = rows[i].getElementsByTagName('td');
        for (let j = 1; j < cells.length; j++) {
            if (j !== 1) {
                cells[j].setAttribute('data-original-value', cells[j].textContent.trim());
                cells[j].setAttribute('contenteditable', 'true');
                cells[j].addEventListener('input', function() {
                    updateCell(this);
                });
            }
        }
    }
}

function updateCell(cell) {

    if (!cell.hasAttribute('data-original-value')) {
        cell.setAttribute('data-original-value', cell.textContent.trim());
    }

    const columnName = getColumnName(cell);
    const maxLength = maxLengths[columnName] || 60;

    // Obtener la posición del cursor
    const selection = window.getSelection();
    const range = selection.getRangeAt(0);
    const cursorPosition = range.startOffset;

    // Convertir a mayúsculas
    let newText = cell.textContent.toUpperCase();
    
    // Limitar la longitud
    if (newText.length > maxLength) {
        newText = newText.slice(0, maxLength);
    }
    
    // Actualizar el contenido de la celda
    cell.textContent = newText;

    // Restaurar la posición del cursor
    range.setStart(cell.firstChild, Math.min(cursorPosition, newText.length));
    range.setEnd(cell.firstChild, Math.min(cursorPosition, newText.length));
    selection.removeAllRanges();
    selection.addRange(range);
    
    cell.style.backgroundColor = '#FFFACD';
    changedCells.add(cell);
    showSaveButton();
    showEditIcons();
}

function showCharacterCount(cell) {
    const columnName = getColumnName(cell);
    const maxLength = maxLengths[columnName] || 60;
    const countSpan = document.createElement('span');
    countSpan.className = 'char-count';
    countSpan.style.position = 'absolute';
    countSpan.style.bottom = '0';
    countSpan.style.right = '0';
    countSpan.style.fontSize = '10px';
    countSpan.style.color = '#888';
    cell.style.position = 'relative';
    cell.appendChild(countSpan);
    updateCharacterCount(cell);
}

function hideCharacterCount(cell) {
    const countSpan = cell.querySelector('.char-count');
    if (countSpan) {
        cell.removeChild(countSpan);
    }
}

function updateCharacterCount(cell) {
    const columnName = getColumnName(cell);
    const maxLength = maxLengths[columnName] || 60;
    const remainingChars = maxLength - cell.textContent.length;
    const countSpan = cell.querySelector('.char-count');
    if (countSpan) {
        countSpan.textContent = remainingChars;
    }
}

function getColumnName(cell) {
    const headerRow = document.querySelector('#tabla-datos tr');
    let columnName = headerRow.cells[cell.cellIndex].textContent.trim();
    console.log('Column name from header:', columnName); // Para depuración
    let mappedName = columnMap[columnName] || columnName;
    console.log('Mapped column name:', mappedName); // Para depuración
    return mappedName;
}

function showSaveButton() {
    const saveIcon = document.getElementById('icono-guardar');
    saveIcon.style.visibility = 'visible';
    saveIcon.style.opacity = '1';
}

function hideSaveButton() {
    const saveIcon = document.getElementById('icono-guardar');
    saveIcon.style.visibility = 'hidden';
    saveIcon.style.opacity = '0';
}

function showEditIcons() {
    const saveIcon = document.getElementById('icono-guardar');
    const undoIcon = document.getElementById('icono-deshacer');
    saveIcon.style.visibility = 'visible';
    saveIcon.style.opacity = '1';
    undoIcon.style.visibility = 'visible';
    undoIcon.style.opacity = '1';
}

function hideEditIcons() {
    const saveIcon = document.getElementById('icono-guardar');
    const undoIcon = document.getElementById('icono-deshacer');
    saveIcon.style.visibility = 'hidden';
    saveIcon.style.opacity = '0';
    undoIcon.style.visibility = 'hidden';
    undoIcon.style.opacity = '0';
}

function undoAllChanges() {
    changedCells.forEach(cell => {
        const originalValue = cell.getAttribute('data-original-value');
        if (originalValue !== null) {
            cell.textContent = originalValue;
        }
        cell.style.backgroundColor = '';
        cell.removeAttribute('data-original-value');
    });
    changedCells.clear();
    hideEditIcons();
}

function saveAllChanges() {
    const promises = [];
    changedCells.forEach(cell => {
        const row = cell.parentNode;
        const id = row.cells[1].textContent;
        const columnName = getColumnName(cell);
        const newValue = cell.textContent;
        
        console.log('Saving changes for column:', columnName, 'with value:', newValue); // Para depuración

        promises.push(fetch('actualizar_celda.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: `id=${encodeURIComponent(id)}&column=${encodeURIComponent(columnName)}&value=${encodeURIComponent(newValue)}`
        }).then(response => response.json()));
    });

    Promise.all(promises)
        .then(results => {
            results.forEach((data, index) => {
                const cell = Array.from(changedCells)[index];
                if (data.success) {
                    cell.style.backgroundColor = '#90EE90';
                    cell.removeAttribute('data-original-value');
                    setTimeout(() => {
                        cell.style.backgroundColor = '';
                    }, 2000);
                } else {
                    cell.style.backgroundColor = '#FFB6C1';
                    cell.textContent = data.oldValue || '';
                    console.error('Error al actualizar:', data.error);
                    alert(`Error al actualizar: ${data.error}`);
                }
            });
            changedCells.clear();
            hideSaveButton();
            changedCells.clear();
            hideEditIcons();
        })
        .catch(error => {
            console.error('Error:', error);
            alert(`Error de red o del servidor: ${error.message}`);
        });
        hideSaveButton();
}

document.addEventListener('DOMContentLoaded', makeEditable);