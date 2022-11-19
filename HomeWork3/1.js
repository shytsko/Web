const celsius = GetTemperatureCelsius();
const fahrenheit = ConverCelsiusInFahrenheit(celsius);
ViewResult(`Цельсий: ${celsius}, Фаренгейт: ${fahrenheit}`);

function GetTemperatureCelsius() {
    return Number.parseFloat(prompt("Введите температуру в градусах Цельсия:"));
}

function ConverCelsiusInFahrenheit(celsius) {
    return ((9 / 5) * celsius + 32).toFixed(1);
}

function ViewResult(message) {
    alert(message);
}