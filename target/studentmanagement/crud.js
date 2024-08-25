let students = [];

function addStudent(name, email, age) {
    const student = { id: students.length + 1, name, email, age };
    students.push(student);
    displayStudents();
}

function updateStudent(id, name, email, age) {
    const student = students.find(stu => stu.id === id);
    if (student) {
        student.name = name;
        student.email = email;
        student.age = age;
        displayStudents();
    }
}

function deleteStudent(id) {
    students = students.filter(stu => stu.id !== id);
    displayStudents();
}

function displayStudents() {
    const crudContainer = document.getElementById('crudContainer');
    crudContainer.innerHTML = students.map(student => `
        <div>
            <span>${student.name}</span>
            <span>${student.email}</span>
            <span>${student.age}</span>
            <button onclick="deleteStudent(${student.id})">Delete</button>
        </div>
    `).join('');
}
