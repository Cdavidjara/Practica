<?php
// Datos de la base de datos
$host = 'localhost';
$dbname = 'formulario';
$username = 'root';
$password = '';

// Conectar a la base de datos
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("No se pudo conectar a la base de datos: " . $e->getMessage());
}

// Obtener datos del formulario
$nombres = $_POST['nombres'];
$apellidos = $_POST['apellidos'];
$cedulaRUC = $_POST['cedulaRUC'];
$telefono = $_POST['telefono'];
$fechaNacimiento = $_POST['fechaNacimiento'];
$salario = $_POST['salario'];
$email = $_POST['email'];
$contrasena = password_hash($_POST['contrasena'], PASSWORD_DEFAULT); // Encriptar contraseña

// Insertar datos en la base de datos
try {
    $stmt = $pdo->prepare("INSERT INTO usuarios (nombres, apellidos, cedulaRUC, telefono, fechaNacimiento, salario, email, contrasena) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->execute([$nombres, $apellidos, $cedulaRUC, $telefono, $fechaNacimiento, $salario, $email, $contrasena]);
    echo "Registro exitoso.";
} catch (PDOException $e) {
    echo "Error al registrar el usuario: " . $e->getMessage();
}
?>
