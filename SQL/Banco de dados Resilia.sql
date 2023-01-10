CREATE TABLE `Curso` (
  `Nome_curso` varchar(255),
  `Turno` varchar(255),
  `Formato_curso` varchar(255)
);

CREATE TABLE `Turmas` (
  `Turno` varchar(255),
  `Alunos` varchar(255),
  `Professores` varchar(255)
);

CREATE TABLE `Alunos` (
  `id` int PRIMARY KEY,
  `Nome` varchar(255),
  `Data_nascimento` int,
  `Endereco` varchar(255)
);

CREATE TABLE `Turmas_Curso` (
  `Turmas_Turno` varchar,
  `Curso_Turno` varchar,
  PRIMARY KEY (`Turmas_Turno`, `Curso_Turno`)
);

ALTER TABLE `Turmas_Curso` ADD FOREIGN KEY (`Turmas_Turno`) REFERENCES `Turmas` (`Turno`);

ALTER TABLE `Turmas_Curso` ADD FOREIGN KEY (`Curso_Turno`) REFERENCES `Curso` (`Turno`);


ALTER TABLE `Turmas` ADD FOREIGN KEY (`Alunos`) REFERENCES `Alunos` (`id`);
