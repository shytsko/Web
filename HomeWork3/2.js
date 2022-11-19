helloUser(getName());

function helloUser(name) {
    alert(`Привет, ${name}`);
}

function getName() {
    return prompt("Как тебя зовут?");
}