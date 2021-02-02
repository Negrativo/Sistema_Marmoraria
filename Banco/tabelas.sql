create table tabcliente(
  nnumeclie integer primary key,
  cnomeclie varchar(50),
  cmailclie varchar(30),
  c_cpfclie varchar(14),
  cendeclie varchar(100),
  dnascclie date,
  csexoclie varchar(1),
  cfoneclie varchar(11));

  create table tabfuncionario(
  nnumefunc integer primary key,
  cnomefunc varchar(50),
  cmailfunc varchar(30),
  c_cpffunc varchar(14),
  cendefunc varchar(100),
  dnascfunc date,
  csexofunc varchar(1),
  nvalohora integer);

create table tabfornecedor(
  nnumeforn integer primary key,
  cnomeforn varchar(50),
  cmailforn varchar(30),
  c_cpfforn varchar(14),
  cendeforn varchar(100));

