drop database if exists resources;
create database if not exists resources;

use resources;

create table product (
  id integer,
  version integer,
  available boolean,
  name varchar(255) not null
);