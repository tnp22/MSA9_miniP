/**
 * 헤더, 푸터 삽입
 */

document.addEventListener('DOMContentLoaded', function() {
    // Header 삽입
    fetch('header.jsp')
        .then(response => response.text())
        .then(data => {
            document.getElementById('header').innerHTML = data;
        });
    
    // Footer 삽입
    fetch('footer.jsp')
        .then(response => response.text())
        .then(data => {
            document.getElementById('footer').innerHTML = data;
        });
});