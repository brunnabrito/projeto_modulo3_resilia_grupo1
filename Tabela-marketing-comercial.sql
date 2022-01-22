CREATE TABLE Marketing (
	id_campanha SERIAL NOT NULL,
	mes_campanha VARCHAR(50) NULL,
	tipo_midia VARCHAR(50) NULL,
    PRIMARY KEY (id_campanha)
);

CREATE TABLE Comercial (
	id_leads SERIAL NOT NULL,
	id_campanha INT NULL,
	nome VARCHAR(50) NULL,
	curso_interesse VARCHAR(50) NULL,
	vendedor VARCHAR(50) NULL,
	convertido BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (id_leads),
	CONSTRAINT Fk_tipo_midia FOREIGN KEY (id_campanha) REFERENCES Marketing (id_campanha)
);

INSERT INTO Marketing (mes_campanha, tipo_midia) VALUES
	('Janeiro', 'Instagram'),
	('Fevereiro', 'Facebook'),
	('Abril', 'Whatsapp'),
	('Maio', 'Instagram'),
	('Junho', 'Google'),
	('Julho', 'Email'),
	('Agosto', 'Telegram'),
	('Dezembro', 'Instagram');
	
INSERT INTO Comercial (id_campanha, nome, curso_interesse, vendedor, convertido) VALUES
	 ('1', 'Luana Taynara', 'Analise de dados', 'José', 'true'),
	 ('1', 'Graziela Queiroz', 'Analise de dados', 'José', 'true' ),
	 ('1', 'Natalia Thome', 'Analise de dados', 'José', 'false'),
	 ('2', 'Jaqueline Caires', 'Analise de dados', 'Ana', 'true'),
	 ('2', 'Helena Maria', 'Analise de dados', 'Ana', 'true'),
	 ('3', 'Julia Andreia', 'Analise de dados', 'Ana', 'false'),
	 ('3', 'Luiza Cristina', 'ADS', 'Ana', 'true'),
	 ('8', 'Rafaela Binha', 'ADS', 'Fernanda', 'false'),
	 ('4', 'Matheus Felipe', 'ADS', 'Fernanda', 'false'),
	 ('4', 'Anthonny Garotinho','ADS', 'Fernanda', 'true'),
	 ('4', 'Bryan Francisco', 'Python', 'Fernanda', 'true'),
	 ('4', 'Henrique Diego', 'Python', 'Fernanda', 'true'),
	 ('4', 'Ryan Douglas','Python', 'Diego', 'true'),
	 ('5', 'Jurema Bernades','Python', 'Diego', 'true'),
	 ('5', 'Felipe Junior', 'Front-End', 'Diego', 'false'),
	 ('6', 'Erick Roberto', 'Front-End', 'Diego', 'false'),
	 ('7', 'Francisco Jose', 'Front-End', 'Diego', 'true');