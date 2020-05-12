use db_transportadora;

------------------------------
		/*Consultas*/
------------------------------

/*Entregas que não estão com situação concluída (“Entregue”) e também não estão canceladas, perdidas
e danificadas*/
select * from tb_entrega 
where id_sit_entrega = 2 or id_sit_entrega = 3 or id_sit_entrega = 1;

/*Total dos valores de transporte, frete e seguro das entregas com situação de Perda.*/
select sum(valortransp_entrega + valorfrete_entrega + valorseguro_entrega) from tb_entrega
where id_sit_entrega = 6;

/*Quantidade e total do valor de seguro das entregas com situação de Perda (não mostrar as entregas,
apenas as informações).*/
select valorseguro_entrega,count(*) and sum(valorseguro_entrega) from tb_entrega 
where id_sit_entrega = 6;
