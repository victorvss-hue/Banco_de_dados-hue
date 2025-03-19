CREATE TABLE IF NOT EXISTS vendedor(
	idPessoa SERIAL PRIMARY KEY,
	nome VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS telefone(
	idPessoa INT NOT NULL, 
	numero CHAR(11) NOT NULL,
	CONSTRAINT fk_idPessoa FOREIGN KEY (idPessoa) REFERENCES vendedor(idPessoa) 
);

CREATE TABLE Pao(
	idPao SERIAL PRIMARY KEY,
	bolo VARCHAR(15) NOT NULL,
	pao VARCHAR(15) NOT NULL
);
drop table vende
drop table endereco

CREATE TABLE Liquido(
	idliquido SERIAL PRIMARY KEY,
	refrigerante VARCHAR(15) NOT NULL,
	suco VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS endereco(
	idEndereco SERIAL PRIMARY KEY,
	cidade VARCHAR(15) NOT NULL,
	rua VARCHAR(15) NOT NULL,
	idPessoa INT NOT NULL,
	CONSTRAINT fk_idPessoa FOREIGN KEY (idPessoa) REFERENCES vendedor(idPessoa) 
);

CREATE TABLE IF NOT EXISTS vende(
	idVenda SERIAL PRIMARY KEY,
	idPessoa INT NOT NULL,
	idPao INT NOT NULL,
	idliquido INT NOT NULL,
	dataDaVenda DATE,
	valor REAL,
	CONSTRAINT fk_idPessoa FOREIGN KEY (idPessoa) REFERENCES vendedor(idPessoa),
	CONSTRAINT fk_idpao FOREIGN KEY (idpao) REFERENCES pao(idpao),
	CONSTRAINT fk_idliquido FOREIGN KEY (idliquido) REFERENCES liquido(idliquido)
);

INSERT INTO vendedor(nome) VALUES ('Vitao');
INSERT INTO vendedor(nome) VALUES ('Wanderson');

INSERT INTO telefone(idPessoa, numero) VALUES (1, '84956254875');
INSERT INTO telefone(idPessoa, numero) VALUES (1, '84985458754');

INSERT INTO pao(bolo, pao) VALUES 
('chocolate', 'frances'),
('formigueiro', 'carrapixo'),
('Moca', 'doce'),
('1232', '123');


INSERT INTO liquido(refrigerante, suco) VALUES 
('cocacola', 'goiaba'),
('idaia', 'maracuja'),
('dolly', 'laranja');
