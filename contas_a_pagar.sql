CREATE TABLE contas_a_pagar (
            Id_transacao INT PRIMARY KEY,
            Id_colaborador INT,
FOREIGN KEY (Id_colaborador) REFERENCES tb_departamento_pessoal (Id_colaborador),
            metodo_pagamento VARCHAR (20) NOT NULL,
            valor_a_pagar INT
);


INSERT INTO contas_a_pagar (Id_transacao,Id_colaborador,metodo_pagamento,valor_a_pagar)
VALUES  (11,1,'Boleto bancário',1252),
        (12,2,'Boleto bancário',2121),
        (13,3,'Cartão de credito',1110),
        (14,4,'Cartão de debito',3002),
        (15,5,'Cartão de debito',2254),
        (16,6,'Pagamento recorrente',4569),
        (17,7,'Pagamento recorrente',4236),
        (18,8,'Boleto bancário',4521),
        (19,9,'Boleto bancário',2541),
        (20,10,'Cartão de credito',1358)