-- USERS
INSERT INTO user_table (id, name, auth_email, phone, created_at, updated_at) VALUES (1, 'admin1', 'admin1@gmail.com', '+34111111111', NOW(), NOW());
INSERT INTO user_table (id, name, auth_email, phone, created_at, updated_at) VALUES (2, 'cook1', 'cook1@gmail.com', '+34222222222', NOW(), NOW());
INSERT INTO user_table (id, name, auth_email, phone, created_at, updated_at) VALUES (3, 'cliente1', 'cliente1@gmail.com', '+34333333333', NOW(), NOW());
INSERT INTO user_table (id, name, auth_email, phone, created_at, updated_at) VALUES (4, 'cliente2', 'cliente2@gmail.com', '+34333333334', NOW(), NOW());
INSERT INTO user_table (id, name, auth_email, phone, created_at, updated_at) VALUES (5, 'cliente3', 'cliente3@gmail.com', '+34333333335', NOW(), NOW());
-- ADDRESSES
INSERT INTO address (id, street, city, postal_code, country, user_id) VALUES (1, 'Calle Martínez Montañés 15', 'Jaén', '23001', 'España', 3);
INSERT INTO address (id, street, city, postal_code, country, user_id) VALUES (2, 'Avenida de Andalucía 32', 'Jaén', '23006', 'España', 3);
INSERT INTO address (id, street, city, postal_code, country, user_id) VALUES (3, 'Calle Cronista Cazabán 7', 'Jaén', '23003', 'España', 4);
INSERT INTO address (id, street, city, postal_code, country, user_id) VALUES (4, 'Paseo de la Estación 14', 'Jaén', '23008', 'España', 5);
