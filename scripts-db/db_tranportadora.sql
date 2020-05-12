create database db_transportadora;

use db_transportadora;

------------------------------
		/*Criação*/
------------------------------

create table tb_cargo(
id_cargo int not null auto_increment primary key,
desc_cargo varchar(300) not null,
totalhoras_cargo time not null,
salariobase_cargo decimal(7,2) not null
);

create table tb_func_salario_cargo(
id_func_salario_cargo int not null auto_increment primary key,
id_cargo int not null,
id_funcionario int not null,
salario_func_salario_cargo double,
valor_func_salario_cargo decimal(5,2)
);


create table tb_funcionario(
id_funcionario int not null auto_increment primary key,
nome_funcionario varchar(45) not null,
cpf_funcionario varchar(14) not null,
rg_funcionario varchar(12) not null,
dtnasc_funcionario date not null,
dtadm_funcionario date not null,
dtdesl_funcionario date
);


create table tb_entrega(
id_entrega int not null auto_increment primary key,
id_cliente int not null,
id_veiculo int not null,
id_sit_entrega int not null,
id_funcionario int not null,
dta_solicitada_entrega date not null,
dtaentrega_entrega date not null,
valortransp_entrega dec(7,2) not null,
valorencomenda_entrega dec(7,2) not null,
valorfrete_entrega dec(7,2) not null,
valorseguro_entrega dec(7,2) not null
);

create table tb_sit_entrega(
id_sit_entrega int not null auto_increment primary key,
situacao_sit_entrega varchar(14) not null
);

create table tb_veiculos(
id_veiculo int not null auto_increment primary key,
id_marca_veiculo int not null,
id_modelo_veiculo int not null,
id_tipo_veiculo int not null,
placa_veiculo varchar(7) not null,
capacarga_veiculo dec(7,2) not null,
disponivel_veiculo char(1) not null
);

create table tb_tipo_veiculo(
id_tipo_veiculo int not null auto_increment primary key,
nome_tipo_veiculo varchar(15) not null
);


create table tb_modelo_veiculo(
id_modelo_veiculo int not null auto_increment primary key,
nome_modelo_veiculo varchar(45) not null
);

create table tb_marca_veiculo(
id_marca_veiculo int not null auto_increment primary key,
nome_marca_veiculo varchar(45) not null
);

create table tb_cliente(
id_cliente int not null auto_increment primary key,
cpf_cliente varchar(11),
cnpj_cliente varchar(14),
nome_cliente varchar(45),
email_cliente varchar(64)
);

create table tb_telefone(
id_telefone int not null auto_increment primary key,
id_cliente int not null,
numero_telefone varchar(15) not null 
);

create table tb_endereco_cliente(
id_endereco_cliente int not null auto_increment primary key,
id_cliente int not null,
id_tipo_logradouro int not null,
id_nome int not null,
numero_endereco_cliente int not null,
pontoderef_endereco_cliente varchar(200),
complemento_endereco_cliente varchar(100),
cep_endereco_cliente dec(8,2) not null
);

create table tb_tipo_logradouro(
id_tipo_logradouro int not null auto_increment primary key,
nome_tipo_logradoro varchar(10) not null
);

create table tb_nome(
id_nome int not null auto_increment primary key,
endereco_nome varchar(100) not null,
id_bairro int not null
);

create table tb_bairro(
id_bairro int not null auto_increment primary key,
nome_bairro varchar(100) not null,
id_cidade int not null
);

create table tb_cidade(
id_cidade int not null auto_increment primary key,
nome_cidade varchar(45) not null,
id_estado int not null
);

create table tb_estado(
id_estado int not null auto_increment primary key,
nome_estado char(2)
);


-----------------------------------------
/*Adicionando as (FK's)*/
-----------------------------------------

alter table tb_func_salario_cargo
add constraint id_cargo
foreign key (id_cargo)
references tb_cargo(id_cargo);

alter table tb_func_salario_cargo
add constraint id_funcionario
foreign key (id_funcionario)
references tb_funcionario(id_funcionario);

alter table tb_entrega
add constraint id_cliente
foreign key (id_cliente)
references tb_cliente (id_cliente);

alter table tb_entrega
add constraint id_veiculo
foreign key (id_veiculo)
references tb_veiculos(id_veiculo);

alter table tb_entrega
add constraint id_sit_entrega
foreign key (id_sit_entrega)
references tb_sit_entrega(id_sit_entrega);

alter table tb_entrega
add constraint id_funcionario2
foreign key (id_funcionario)
references tb_funcionario(id_funcionario);

alter table tb_veiculos
add constraint id_marca_veiculo
foreign key (id_marca_veiculo)
references tb_marca_veiculo(id_marca_veiculo);

alter table tb_veiculos
add constraint id_modelo_veiculo
foreign key (id_modelo_veiculo)
references tb_modelo_veiculo(id_modelo_veiculo);

alter table tb_veiculos
add constraint id_tipo_veiculo
foreign key (id_tipo_veiculo)
references tb_tipo_veiculo (id_tipo_veiculo);

alter table tb_endereco_cliente
add constraint id_cliente2
foreign key (id_cliente)
references tb_cliente(id_cliente);

alter table tb_telefone
add constraint id_cliente3
foreign key (id_cliente)
references tb_cliente(id_cliente);

alter table tb_endereco_cliente
add constraint id_tipo_logradouro
foreign key (id_tipo_logradouro)
references tb_tipo_logradouro(id_tipo_logradouro);

alter table tb_endereco_cliente 
add constraint id_nome
foreign key (id_nome)
references tb_nome(id_nome);

alter table tb_nome
add constraint id_bairro
foreign key (id_bairro) 
references tb_bairro(id_bairro);

alter table tb_bairro
add constraint id_cidade
foreign key (id_cidade)
references tb_cidade(id_cidade);

alter table tb_cidade
add constraint id_estado
foreign key (id_estado)
references tb_estado(id_estado);
