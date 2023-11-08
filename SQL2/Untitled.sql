CREATE TABLE `usuario` (
  `cpf` interger PRIMARY KEY,
  `id` interger,
  `nome` varchar(255),
  `sobrenome` varchar(255)
);

CREATE TABLE `cadastro` (
  `cnpj_num` interger PRIMARY KEY,
  `cnpj_nome` varchar(255),
  `id` interger,
  `email` varchar(255),
  `descricao` varchar(255)
);

CREATE TABLE `produto` (
  `id` interger PRIMARY KEY,
  `nome` varchar(255),
  `descricao` varchar(255),
  `preco` interger
);

ALTER TABLE `cadastro` ADD FOREIGN KEY (`cnpj_num`) REFERENCES `usuario` (`cpf`);

ALTER TABLE `produto` ADD FOREIGN KEY (`id`) REFERENCES `usuario` (`cpf`);
