use db_transportadora;

-----------------------------
		/*Inserção*/
-----------------------------
/**/
insert into tb_funcionario (nome_funcionario, cpf_funcionario, rg_funcionario, dtnasc_funcionario, dtadm_funcionario)
values("Matheus Franciscone","789.541.785-43", "78.568.789-X",'002-02-07', '2020-05-10');

insert into tb_funcionario (nome_funcionario, cpf_funcionario, rg_funcionario, dtnasc_funcionario, dtadm_funcionario, dtdesl_funcionario)
values("Luigi Ramires","457.369.754-78", "45.785.455-1", '2004-05-10', '2005-12-12', '2019-05-10');

insert into tb_funcionario (nome_funcionario, cpf_funcionario, rg_funcionario, dtnasc_funcionario, dtadm_funcionario)
values("Cleyson Silva", "785.456.123-47", "96.856.745-3",'1990-05-07', '2013-02-05');

insert into tb_funcionario (nome_funcionario, cpf_funcionario, rg_funcionario, dtnasc_funcionario, dtadm_funcionario, dtdesl_funcionario)
values("Felipe Souza", "745.456.103-48", "56.125.795-4",'1991-04-10', '2015-04-10','2020-02-12');


/**/
insert into tb_cargo (desc_cargo, totalhoras_cargo, salariobase_cargo)
values("Auxiliar Administrativo", '160:00:00', 1500);

insert into tb_cargo (desc_cargo, totalhoras_cargo, salariobase_cargo)
values("Gerente", '160:00:00', 7854);

insert into tb_cargo (desc_cargo, totalhoras_cargo, salariobase_cargo)
values("Motorista", '16:00:00', 3600);

insert into tb_cargo (desc_cargo, totalhoras_cargo, salariobase_cargo)
values("Carregador", '16:00:00', 1800);

insert into tb_cargo (desc_cargo, totalhoras_cargo, salariobase_cargo)
values("Encarregado", '16:00:00', 4500);

insert into tb_cargo (desc_cargo, totalhoras_cargo, salariobase_cargo)
values("Supervisor", '16:00:00', 7840);


/**/
insert into tb_func_salario_cargo (id_cargo, id_funcionario, salario_func_salario_cargo, valor_func_salario_cargo)
values(2, 1, 1200, ((salario_func_salario_cargo*10)/100));

insert into tb_func_salario_cargo (id_cargo, id_funcionario,salario_func_salario_cargo, valor_func_salario_cargo)
values(3, 2, 1500, ((salario_func_salario_cargo*15)/100));

insert into tb_func_salario_cargo (id_cargo, id_funcionario,salario_func_salario_cargo, valor_func_salario_cargo)
values(1, 2, 1750, ((salario_func_salario_cargo*13)/100));

insert into tb_func_salario_cargo (id_cargo, id_funcionario,salario_func_salario_cargo, valor_func_salario_cargo)
values(4, 1, 1200, ((salario_func_salario_cargo*15)/100));


/**/
insert into tb_cliente (cpf_cliente, nome_cliente, email_cliente)
values("38665912610","Mario Dabarian", "mariodabarian@gmail.com");

insert into tb_cliente (cnpj_cliente, nome_cliente, email_cliente)
values("12456913456/89", "Matheus Franciscone da Cunha", "matheus.dacunha@gmail.com");

insert into tb_cliente (cnpj_cliente, nome_cliente, email_cliente)
values("12452641156-85", "Cleyson Silva", "csilva.me@onlybrains.com");

insert into tb_cliente (cpf_cliente, nome_cliente, email_cliente)
values("15687921030", "Luigi de Oliveira", "luigi.oliveira@outlook.com");


/**/
insert into tb_telefone (id_cliente, numero_telefone)
values(1, "92345-6789");

insert into tb_telefone(id_cliente, numero_telefone)
values(2, "99950-2016");

insert into tb_telefone(id_cliente, numero_telefone)
values(2, "99950-5464");

insert into tb_telefone(id_cliente, numero_telefone)
values(1, "99950-2015");


/**/
insert into tb_tipo_logradouro (nome_tipo_logradoro)
values("Lago");

insert into tb_tipo_logradouro (nome_tipo_logradoro)
values("Rua");

insert into tb_tipo_logradouro (nome_tipo_logradoro)
values("Vila");

insert into tb_tipo_logradouro (nome_tipo_logradoro)
values("Avenida");


/**/
insert into tb_estado (nome_estado)
values("MG");

insert into tb_estado (nome_estado)
values("RS");

insert into tb_estado (nome_estado)
values("SP");

insert into tb_estado (nome_estado)
values("RJ");


/**/
insert into tb_cidade (nome_cidade, id_estado)
values("Belo Horizonte",1);

insert into tb_cidade (nome_cidade, id_estado)
values("Porto Alegre",2);

insert into tb_cidade (nome_cidade, id_estado)
values("Guarulhos",3);

insert into tb_cidade (nome_cidade, id_estado)
values("Rio de Janeiro",4);



/**/
insert into tb_bairro (nome_bairro,id_cidade)
values("Flor do Dia",2);

insert into tb_bairro (nome_bairro,id_cidade)
values("Flor de Rosa",1);

insert into tb_bairro (nome_bairro,id_cidade)
values("Flor da Manhã",3);

insert into tb_bairro (nome_bairro,id_cidade)
values("Ipanema",4);


/**/
insert into tb_nome
value (0, "Rua Olinda da cruz", 1);

insert into tb_nome
value (0,"Rua Professor Antonio",2);

insert into tb_nome 
value (0, "Rua Castelo Branco",3);

insert into tb_nome
value (0,"Rua joao romano",2);


/**/
insert into tb_endereco_cliente (id_cliente, id_tipo_logradouro, id_nome, numero_endereco_cliente, pontoderef_endereco_cliente, complemento_endereco_cliente, cep_endereco_cliente)
values(1,1,2,'20',"SAAE","Em frente a farmacia","0715828");

insert into tb_endereco_cliente (id_cliente, id_tipo_logradouro, id_nome, numero_endereco_cliente, pontoderef_endereco_cliente, complemento_endereco_cliente, cep_endereco_cliente)
values(4,2,3,'20',"Bosque Maia","Perto do Bosque","0715828");

insert into tb_endereco_cliente (id_cliente, id_tipo_logradouro, id_nome, numero_endereco_cliente, pontoderef_endereco_cliente, complemento_endereco_cliente, cep_endereco_cliente)
values(3,1,4,'20',"Posto BR","Do lado do Posto","0715828");

insert into tb_endereco_cliente (id_cliente, id_tipo_logradouro, id_nome, numero_endereco_cliente, pontoderef_endereco_cliente, complemento_endereco_cliente, cep_endereco_cliente)
values(2,1,3,'20',"Estapar","Do lado do estacionamento","0715828");



/**/
insert into tb_tipo_veiculo (nome_tipo_veiculo)
values("VUC");

insert into tb_tipo_veiculo(nome_tipo_veiculo)
values("Caminha-baú");

insert into tb_tipo_veiculo (nome_tipo_veiculo)
values("Carreta");

insert into tb_tipo_veiculo (nome_tipo_veiculo)
values("Treminhão");



/**/
insert into tb_marca_veiculo (nome_marca_veiculo)
values("GM");

insert into tb_marca_veiculo (nome_marca_veiculo)
values("Fiat");

insert into tb_marca_veiculo (nome_marca_veiculo)
values("Scania");

insert into tb_marca_veiculo (nome_marca_veiculo)
values("Mercedez");


/**/
insert into tb_modelo_veiculo (nome_modelo_veiculo)
values("GM-330");

insert into tb_modelo_veiculo (nome_modelo_veiculo)
values("Off-Road");

insert into tb_modelo_veiculo (nome_modelo_veiculo)
values("GT-324");

insert into tb_modelo_veiculo (nome_modelo_veiculo)
values("5445-PD");


/**/
insert into tb_veiculos (id_marca_veiculo, id_modelo_veiculo, id_tipo_veiculo, placa_veiculo, capacarga_veiculo, disponivel_veiculo)
values(4, 1, 1, "ETF5767", 320.5, 'S');

insert into tb_veiculos (id_marca_veiculo, id_modelo_veiculo, id_tipo_veiculo, placa_veiculo, capacarga_veiculo, disponivel_veiculo)
values(2, 3, 2, "DGB6457", 200.5, 'N');

insert into tb_veiculos (id_marca_veiculo, id_modelo_veiculo, id_tipo_veiculo, placa_veiculo, capacarga_veiculo, disponivel_veiculo)
values(2, 3, 1, "ABE6457", 480.5, 'S');

insert into tb_veiculos (id_marca_veiculo, id_modelo_veiculo, id_tipo_veiculo, placa_veiculo, capacarga_veiculo, disponivel_veiculo)
values(4, 3, 1, "GDT6754", 950.5, 'N');


/**/
insert into tb_sit_entrega (situacao_sit_entrega)
values("Pendente");

insert into tb_sit_entrega (situacao_sit_entrega)
values("Deslocamento");

insert into tb_sit_entrega (situacao_sit_entrega)
values("Atraso");

insert into tb_sit_entrega (situacao_sit_entrega)
values("Entregue");

insert into tb_sit_entrega (situacao_sit_entrega)
values("Cancelada");

insert into tb_sit_entrega (situacao_sit_entrega)
values("Perda");

insert into tb_sit_entrega (situacao_sit_entrega)
values("Danificada");


/**/

insert into tb_entrega (id_cliente, id_veiculo, id_sit_entrega, id_funcionario, dta_solicitada_entrega, dtaentrega_entrega, valortransp_entrega, valorencomenda_entrega, valorfrete_entrega, valorseguro_entrega)
values(1, 1, 3, 2, "2019-10-20", "2019-12-20", 7600.00, 2200.00, 3500.00, 1500.00);

insert into tb_entrega (id_cliente, id_veiculo, id_sit_entrega, id_funcionario, dta_solicitada_entrega, dtaentrega_entrega, valortransp_entrega, valorencomenda_entrega, valorfrete_entrega, valorseguro_entrega)
values(3, 2, 3, 1, "2017-11-10", "2019-11-05", 8600.00, 1100.00, 4800.00, 2000.00);

insert into tb_entrega (id_cliente, id_veiculo, id_sit_entrega, id_funcionario, dta_solicitada_entrega, dtaentrega_entrega, valortransp_entrega, valorencomenda_entrega, valorfrete_entrega, valorseguro_entrega)
values(1, 1, 6, 1, "2015-05-08", "2020-10-06", 10000.00, 3300.00, 4700.00, 2500.00);

insert into tb_entrega (id_cliente, id_veiculo, id_sit_entrega, id_funcionario, dta_solicitada_entrega, dtaentrega_entrega, valortransp_entrega, valorencomenda_entrega, valorfrete_entrega, valorseguro_entrega)
values(3, 2, 1, 4, "2014-06-05", "2020-05-07", 9500.00, 4400.00, 5700.00, 3500.00);