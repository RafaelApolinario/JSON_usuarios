
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";    -- Define o modo SQL para não permitir valores automáticos em zero
START TRANSACTION;    -- Inicia uma transação para realizar uma sequência de comandos que devem ser executados de forma conjunta ou serem desfeitos em caso de erro
SET time_zone = "+00:00";    -- Define o fuso horário para UTC

DROP TABLE IF EXISTS `usuarios`;    -- Remove a tabela `usuarios`, se ela existir
CREATE TABLE IF NOT EXISTS `usuarios` (    -- Cria a tabela `usuarios`, se ela não existir
  `id` int NOT NULL AUTO_INCREMENT,    -- Cria a coluna `id` como inteiro não nulo e com auto-incremento
  `nome` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,    -- Cria a coluna `nome` como string de até 220 caracteres, com codificação e ordenação de caracteres utf8mb4
  `username` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,    -- Cria a coluna `username` como string de até 220 caracteres, com codificação e ordenação de caracteres utf8mb4
  `email` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,    -- Cria a coluna `email` como string de até 220 caracteres, com codificação e ordenação de caracteres utf8mb4
  PRIMARY KEY (`id`)    -- Define a coluna `id` como chave primária da tabela
) ENGINE=MyISAM AUTO_INCREMENT=3010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;    -- Define o mecanismo de armazenamento como MyISAM, o valor inicial do `id` como 3010, e a codificação e ordenação de caracteres como utf8mb4

INSERT INTO `usuarios` (`id`, `nome`,`username`, `email`) VALUES    -- Insere valores na tabela `usuarios`
 (
  1,
  "Leanne Graham",
  "Bret",
  "Sincere@april.biz"
  ),
  (
  2,
  "Ervin Howell",
  "Antonette",
  "Shanna@melissa.tv"
  ),
  (
  3,
  "Clementine Bauch",
  "Samantha",
  "Nathan@yesenia.net"
  ),
  (
  4,
  "Patricia Lebsack",
  "Karianne",
  "Julianne.OConner@kory.org"
  ),
  (
  5,
  "Chelsey Dietrich",
  "Kamren",
  "Lucio_Hettinger@annie.ca"
  );
COMMIT;

