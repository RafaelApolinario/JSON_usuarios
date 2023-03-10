<?php
// Inclui o arquivo de conexão com o banco de dados
include_once "conexao.php";

// Define a query para selecionar todos os usuários da tabela "usuarios" e ordenar por nome
$query = "SELECT id, nome, username, email FROM usuarios ORDER BY nome";
// Prepara a query para execução
$resultado = $conn->prepare($query);
// Executa a query
$resultado->execute();

// Variável para armazenar os dados dos usuários
$dados = "";

// Itera sobre os resultados da query usando um loop while
while ($row = $resultado->fetch(PDO::FETCH_ASSOC)) {
    // Extrai as colunas do resultado em variáveis individuais
    extract($row);
    // Adiciona os dados do usuário à variável $dados em formato de tabela HTML
    $dados .= "<tr>
                    <td>$id</td>
                    <td>$nome</td>
                    <td>$username</td>
                    <td>$email</td>
                </tr>
    ";
};

echo $dados;
