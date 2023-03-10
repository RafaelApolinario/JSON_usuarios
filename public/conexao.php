<?php
// Variáveis de configuração da conexão com o banco de dados
$servidor = '127.0.0.1:3306';
$usuario = 'root';
$senha = 'root';
$dbname = 'lista';
// Tenta estabelecer uma conexão com o banco de dados    
try {
    $conn =  new PDO("mysql:host=$servidor;dbname=" . $dbname, $usuario, $senha);
    // echo "Banco de dados conectado com sucesso";
    // Se a conexão for estabelecida com sucesso, exibe a mensagem abaixo
} catch (PDOException $err) {
    // Se houver um erro ao conectar, exibe a mensagem de erro abaixo
    die('Erro: ' . $err->getMessage());
}


// echo "fim!"
