CREATE TABLE `Curso` (
  `nome_curso` varchar(255),
  `Turno` varchar(255),
  `formato_curso` varchar(255),
  `data_inicio` int,
  `data_termino` int
);

CREATE TABLE `Turmas` (
  `Professores` varchar(255),
  `Turno` varchar(255),
  `Alunos` varchar(255)
);

CREATE TABLE `Alunos` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `data_nascimento` int,
  `endereco` varchar(255)
);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`Turno`) REFERENCES `Curso` (`Turno`);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`Alunos`) REFERENCES `Alunos` (`id`);
