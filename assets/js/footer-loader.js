document.addEventListener('DOMContentLoaded', function() {
    const footerContainer = document.getElementById('footer-container');
    if (!footerContainer) {
        return;
    }

    fetch('footer.html')
        .then(function(response) {
            if (!response.ok) {
                throw new Error('Footer load failed: ' + response.status);
            }
            return response.text();
        })
        .then(function(html) {
            footerContainer.innerHTML = html;
        })
        .catch(function(error) {
            console.error(error);
        });
});
