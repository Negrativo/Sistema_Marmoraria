use `marmoraria`;

create table tabcliente(
  nnumeclie integer primary key auto_increment,
  cnomeclie varchar(50),
  cmailclie varchar(30),
  c_cpfclie varchar(14),
  cendeclie varchar(100),
  dnascclie date,
  csexoclie varchar(1),
  cfoneclie varchar(11));

  create table tabfuncionario(
  nnumefunc integer primary key auto_increment,
  cnomefunc varchar(50),
  cmailfunc varchar(30),
  c_cpffunc varchar(14),
  cendefunc varchar(100),
  dnascfunc date,
  csexofunc varchar(1),
  nvalohora integer);

create table tabfornecedor(
  nnumeforn integer primary key auto_increment,
  cnomeforn varchar(50),
  cmailforn varchar(30),
  c_cpfforn varchar(14),
  cendeforn varchar(100));

/*****************************************************************/
/************            TRIGGERS          ***********************/
/*****************************************************************/

create trigger tri_tabcliente before insert
on tabcliente 
for each row begin
declare cliente_id int default 0;

select auto_increment into cliente_id
  from information_schema.tables
 where table_name = 'tabcliente'
   and table_schema = database();
   
insert into user_records ( action, userid, timestamp )
values ( 'created', cliente_id, now() );
end;
