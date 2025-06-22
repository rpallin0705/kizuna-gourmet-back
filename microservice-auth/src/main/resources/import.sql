-- Roles
INSERT INTO roles (id, name) VALUES (1, 'ADMIN');
INSERT INTO roles (id, name) VALUES (2, 'USER');
INSERT INTO roles (id, name) VALUES (3, 'COOK');

-- Usuarios
INSERT INTO users (id, email, password) VALUES (1, 'admin1@gmail.com', '$2a$10$VV3vATQa3/din3wjuX8Gneq1RG0kSbJioFet7iaSOdGwTk0XhfsT2');
INSERT INTO users (id, email, password) VALUES (2, 'cook1@gmail.com', '$2a$10$VV3vATQa3/din3wjuX8Gneq1RG0kSbJioFet7iaSOdGwTk0XhfsT2');
INSERT INTO users (id, email, password) VALUES (3, 'cliente1@gmail.com', '$2a$10$VV3vATQa3/din3wjuX8Gneq1RG0kSbJioFet7iaSOdGwTk0XhfsT2');
INSERT INTO users (id, email, password) VALUES (4, 'cliente2@gmail.com', '$2a$10$VV3vATQa3/din3wjuX8Gneq1RG0kSbJioFet7iaSOdGwTk0XhfsT2');
INSERT INTO users (id, email, password) VALUES (5, 'cliente3@gmail.com', '$2a$10$VV3vATQa3/din3wjuX8Gneq1RG0kSbJioFet7iaSOdGwTk0XhfsT2');


-- User < -- > Roles
INSERT INTO user_roles (role_id, user_id) VALUES (1, 1);
INSERT INTO user_roles (role_id, user_id) VALUES (3, 2);
INSERT INTO user_roles (role_id, user_id) VALUES (2, 3);
INSERT INTO user_roles (role_id, user_id) VALUES (2, 4);
INSERT INTO user_roles (role_id, user_id) VALUES (2, 5);