CREATE TABLE `usuario` (
  `cpf` integer PRIMARY KEY,
  `nome` integer,
  `sobrenome` varchar(255),
  `idade` integer
);

CREATE TABLE `cadastro_pj` (
  `cnpj` integer PRIMARY KEY,
  `nomedaempresa` varchar(255),
  `localizacao` varchar(255)
);

ALTER TABLE `cadastro_pj` ADD FOREIGN KEY (`cnpj`) REFERENCES `usuario` (`cpf`);
