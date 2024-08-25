document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault();
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;

    if (username === 'student' && password === 'password') {
        window.location.href = 'crud.jsp';
    } else {
        alert('Invalid credentials');
    }
});
