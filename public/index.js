// fetch('https://my-json-server.typicode.com/RafaelApolinario/JSON_usuarios/db')
//       .then(response => response.json())
//       .then(json => {
//         const div = document.getElementById("conteudo");
//         div.innerHTML = JSON.stringify(json);
//       })

// Seleciona o elemento tbody do HTML
const tbody = document.querySelector("tbody");

// Define a função assíncrona para listar usuários
const listarUsuario = async () => {
    // Faz uma requisição assíncrona para o arquivo "listaUsuarios.php"
    const dados = await fetch("./listaUsuarios.php");
    // Converte a resposta da requisição para texto
    const resposta = await dados.text();
    // Define o conteúdo do elemento tbody com a resposta da requisição
    tbody.innerHTML = resposta;
}

// Chama a função para listar os usuários assim que a página carregar
listarUsuario();

