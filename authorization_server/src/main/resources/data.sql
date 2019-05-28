use oauth2;

insert into authority value (1, 'ROLE_OAUTH_ADMIN');
insert into authority value (2, 'ROLE_RESOURCE_ADMIN');
insert into authority value (3, 'ROLE_PRODUCT_ADMIN');

insert into credentials value (1, b'1', 'oauth_admin','$2a$10$BurTWIy5NTF9GJJH4magz.9Bd4bBurWYG8tmXxeQh1vs7r/wnCFG2', '0');
insert into credentials value (2, b'1', 'resource_admin','$2a$10$BurTWIy5NTF9GJJH4magz.9Bd4bBurWYG8tmXxeQh1vs7r/wnCFG2', '0');
insert into credentials value (3, b'1', 'product_admin','$2a$10$BurTWIy5NTF9GJJH4magz.9Bd4bBurWYG8tmXxeQh1vs7r/wnCFG2', '0');

insert into credentials_authorities value (1, 1);
insert into credentials_authorities value (2, 2);
insert into credentials_authorities value (3, 3);

insert into oauth_client_details value ('curl_client','product_api', '$2a$10$BurTWIy5NTF9GJJH4magz.9Bd4bBurWYG8tmXxeQh1vs7r/wnCFG2', 'read,write', 'client_credentials', 'http://127.0.0.1', 'ROLE_PRODUCT_ADMIN', 7200, 0, NULL, 'true');