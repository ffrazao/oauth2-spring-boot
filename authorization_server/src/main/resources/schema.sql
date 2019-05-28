drop database if exists oauth2;
create database if not exists oauth2;

use oauth2;

drop table if exists oauth_client_token;
create table oauth_client_token (
  token_id varchar(255),
  token longblob,
  authentication_id varchar(255),
  user_name varchar(255),
  client_id varchar(255)
);

drop table if exists oauth_client_details;
create table oauth_client_details (
  client_id varchar(255) not null,
  resource_ids varchar(255) default null,
  client_secret varchar(255) default null,
  scope varchar(255) default null,
  authorized_grant_types varchar(255) default null,
  web_server_redirect_uri varchar(255) default null,
  authorities varchar(255) default null,
  access_token_validity integer(11) default null,
  refresh_token_validity integer(11) default null,
  additional_information varchar(255) default null,
  autoapprove varchar(255) default null
);

drop table if exists oauth_access_token;
create table `oauth_access_token` (
  token_id varchar(255),
  token longblob,
  authentication_id varchar(255),
  user_name varchar(255),
  client_id varchar(255),
  authentication longblob,
  refresh_token varchar(255)
);

drop table if exists oauth_refresh_token;
create table `oauth_refresh_token`(
  token_id varchar(255),
  token longblob,
  authentication longblob
);

drop table if exists authority;
create table authority (
  id  integer,
  authority varchar(255),
  primary key (id)
);

drop table if exists credentials;
create table credentials (
  id  integer,
  enabled boolean not null,
  name varchar(255) not null,
  password varchar(255) not null,
  version integer,
  primary key (id)
);

drop table if exists credentials_authorities;
create table credentials_authorities (
  credentials_id bigint not null,
  authorities_id bigint not null
);

drop table if exists oauth_code;
create table oauth_code (
  code varchar(255), authentication varbinary(255)
);

drop table if exists oauth_approvals;
create table oauth_approvals (
    userid varchar(255),
    clientid varchar(255),
    scope varchar(255),
    status varchar(10),
    expiresat datetime,
    lastmodifiedat datetime
);
