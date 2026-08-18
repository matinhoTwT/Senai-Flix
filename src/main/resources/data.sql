-- Popula as tabelas filmes e series com dados de exemplo.
-- Executado automaticamente pelo Spring Boot no startup (spring.sql.init.mode=always).
-- O DELETE + reset do AUTO_INCREMENT deixam a carga idempotente entre reinicializações.

DELETE FROM filmes;
ALTER TABLE filmes AUTO_INCREMENT = 1;

INSERT INTO filmes (titulo, diretor, ano_lancamento, genero, duracao_minutos, nota_avaliacao, pais_origem) VALUES
('O Poderoso Chefao', 'Francis Ford Coppola', 1972, 'Crime', 175, 9.2, 'EUA'),
('Cidade de Deus', 'Fernando Meirelles', 2002, 'Drama', 130, 8.6, 'Brasil'),
('Interestelar', 'Christopher Nolan', 2014, 'Ficcao Cientifica', 169, 8.7, 'EUA'),
('Parasita', 'Bong Joon-ho', 2019, 'Thriller', 132, 8.5, 'Coreia do Sul'),
('Pulp Fiction', 'Quentin Tarantino', 1994, 'Crime', 154, 8.9, 'EUA'),
('A Vida e Bela', 'Roberto Benigni', 1997, 'Drama', 116, 8.6, 'Italia'),
('Matrix', 'Lana Wachowski', 1999, 'Ficcao Cientifica', 136, 8.7, 'EUA'),
('O Senhor dos Aneis: O Retorno do Rei', 'Peter Jackson', 2003, 'Fantasia', 201, 9.0, 'Nova Zelandia'),
('Forrest Gump', 'Robert Zemeckis', 1994, 'Drama', 142, 8.8, 'EUA'),
('Central do Brasil', 'Walter Salles', 1998, 'Drama', 112, 8.0, 'Brasil'),
('O Cavaleiro das Trevas', 'Christopher Nolan', 2008, 'Acao', 152, 9.0, 'EUA'),
('Clube da Luta', 'David Fincher', 1999, 'Drama', 139, 8.8, 'EUA'),
('Tropa de Elite', 'Jose Padilha', 2007, 'Acao', 115, 8.0, 'Brasil'),
('A Lista de Schindler', 'Steven Spielberg', 1993, 'Drama', 195, 9.0, 'EUA'),
('Vingadores: Ultimato', 'Anthony Russo', 2019, 'Acao', 181, 8.4, 'EUA');

DELETE FROM series;
ALTER TABLE series AUTO_INCREMENT = 1;

INSERT INTO series (titulo, criador, ano_lancamento, genero, temporadas, episodios, nota_avaliacao, plataforma) VALUES
('Stranger Things', 'Duffer Brothers', 2016, 'Ficção Científica', 4, 34, 8.7, 'Netflix'),
('The Crown', 'Peter Morgan', 2016, 'Drama', 6, 60, 8.6, 'Netflix'),
('Wednesday', 'Alfred Gough', 2022, 'Comédia', 1, 8, 8.1, 'Netflix'),
('House of the Dragon', 'Ryan Condal', 2022, 'Fantasia', 2, 18, 8.4, 'HBO'),
('The Last of Us', 'Craig Mazin', 2023, 'Drama', 1, 9, 8.8, 'HBO'),
('Succession', 'Jesse Armstrong', 2018, 'Drama', 4, 39, 8.9, 'HBO'),
('The Mandalorian', 'Jon Favreau', 2019, 'Ficção Científica', 3, 24, 8.7, 'Disney+'),
('Loki', 'Michael Waldron', 2021, 'Ficção Científica', 2, 12, 8.2, 'Disney+'),
('The Boys', 'Eric Kripke', 2019, 'Ação', 4, 32, 8.7, 'Amazon Prime'),
('The Marvelous Mrs. Maisel', 'Amy Sherman-Palladino', 2017, 'Comédia', 5, 43, 8.7, 'Amazon Prime'),
('Ted Lasso', 'Bill Lawrence', 2020, 'Comédia', 3, 34, 8.8, 'Apple TV+'),
('Severance', 'Dan Erickson', 2022, 'Suspense', 2, 19, 8.7, 'Apple TV+');
