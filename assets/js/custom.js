document.addEventListener('DOMContentLoaded', function() {
    const fechaElement = document.getElementById('fecha');
    if (fechaElement) {
        const today = new Date();
        const options = { year: 'numeric', month: 'long', day: 'numeric' };
        const fechaActual = today.toLocaleDateString('es-ES', options);
        fechaElement.innerHTML = '<b>Fecha: ' + fechaActual + '</b>';
    }
});