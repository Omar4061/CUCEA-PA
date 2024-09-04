function mostrarFormularioVisualizar() {
    document.getElementById('modal-visualizar').style.display = 'block';
}

function cerrarFormularioVisualizar() {
    document.getElementById('modal-visualizar').style.display = 'none';
}

// Cerrar el modal al hacer clic en la X
document.querySelector('.close').onclick = function() {
    cerrarFormularioVisualizar();
}

// Cerrar el modal al hacer clic fuera de él
window.onclick = function(event) {
    if (event.target == document.getElementById('modal-visualizar')) {
        cerrarFormularioVisualizar();
    }
}

function visualizarInformacionProfesores() {

document.getElementById('modal-visualizar').style.display = 'block';
}

function cerrarModalVisualizar() {
    document.getElementById('modal-visualizar').style.display = 'none';
}