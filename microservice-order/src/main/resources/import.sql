-- INSERTS PARA PEDIDOS (orders), order_items y status_history
-- Los campos userId, deviceId y addressId se dejan como NULL para ser actualizados después

-- Pedidos
INSERT INTO order_table (id, user_id, device_id, address_id, created_at, status, total_price, estimated_preparation_time) VALUES (1, 3, NULL, 1, '2024-12-01 12:00:00', 'CREATED', 15.00, 20);
INSERT INTO order_table (id, user_id, device_id, address_id, created_at, status, total_price, estimated_preparation_time) VALUES (2, 3, NULL, 1, NOW(), 'PREPARING', 12.00, 25);
INSERT INTO order_table (id, user_id, device_id, address_id, created_at, status, total_price, estimated_preparation_time) VALUES (3, 3, NULL, 2, '2024-12-05 14:00:00', 'READY', 11.50, 15);
INSERT INTO order_table (id, user_id, device_id, address_id, created_at, status, total_price, estimated_preparation_time) VALUES (4, 4, NULL, 3, '2024-12-07 15:00:00', 'DISPATCHED', 13.00, 10);
INSERT INTO order_table (id, user_id, device_id, address_id, created_at, status, total_price, estimated_preparation_time) VALUES (5, 4, NULL, 3, '2024-12-09 16:00:00', 'DELIVERED', 9.50, 0);
INSERT INTO order_table (id, user_id, device_id, address_id, created_at, status, total_price, estimated_preparation_time) VALUES (6, 5, NULL, 4, NOW(), 'CANCELLED', 17.00, 0);
INSERT INTO order_table (id, user_id, device_id, address_id, created_at, status, total_price, estimated_preparation_time) VALUES (7, 5, NULL, 4, '2024-12-13 18:00:00', 'CREATED', 10.00, 20);
INSERT INTO order_table (id, user_id, device_id, address_id, created_at, status, total_price, estimated_preparation_time) VALUES (8, 3, NULL, 2, '2024-12-15 19:00:00', 'CREATED', 6.50, 15);
INSERT INTO order_table (id, user_id, device_id, address_id, created_at, status, total_price, estimated_preparation_time) VALUES (9, 4, NULL, 3, NOW(), 'PREPARING', 13.50, 30);
INSERT INTO order_table (id, user_id, device_id, address_id, created_at, status, total_price, estimated_preparation_time) VALUES (10, 5, NULL, 4, '2024-12-19 21:00:00', 'READY', 8.00, 15);
INSERT INTO order_table (id, user_id, device_id, address_id, created_at, status, total_price, estimated_preparation_time) VALUES (11, 3, NULL, 1, NOW(), 'DISPATCHED', 18.50, 5);
INSERT INTO order_table (id, user_id, device_id, address_id, created_at, status, total_price, estimated_preparation_time) VALUES (12, 4, NULL, 3, '2024-12-23 23:00:00', 'DELIVERED', 9.00, 0);

-- Order Items (ejemplos con menus 1-6)
INSERT INTO order_item (id, product_id, menu_id, quantity, price, order_id) VALUES (1, NULL, 1, 1, 15.00, 1);
INSERT INTO order_item (id, product_id, menu_id, quantity, price, order_id) VALUES (2, NULL, 2, 1, 12.00, 2);
INSERT INTO order_item (id, product_id, menu_id, quantity, price, order_id) VALUES (3, NULL, 3, 1, 11.50, 3);
INSERT INTO order_item (id, product_id, menu_id, quantity, price, order_id) VALUES (4, NULL, 4, 1, 13.00, 4);
INSERT INTO order_item (id, product_id, menu_id, quantity, price, order_id) VALUES (5, NULL, 5, 1, 9.50, 5);
INSERT INTO order_item (id, product_id, menu_id, quantity, price, order_id) VALUES (6, NULL, 6, 1, 17.00, 6);
INSERT INTO order_item (id, product_id, menu_id, quantity, price, order_id) VALUES (7, NULL, 7, 1, 10.00, 7);
INSERT INTO order_item (id, product_id, menu_id, quantity, price, order_id) VALUES (8, NULL, 8, 1, 6.50, 8);
INSERT INTO order_item (id, product_id, menu_id, quantity, price, order_id) VALUES (9, NULL, 9, 1, 13.50, 9);
INSERT INTO order_item (id, product_id, menu_id, quantity, price, order_id) VALUES (10, NULL, 10, 1, 8.00, 10);
INSERT INTO order_item (id, product_id, menu_id, quantity, price, order_id) VALUES (11, NULL, 11, 1, 18.50, 11);
INSERT INTO order_item (id, product_id, menu_id, quantity, price, order_id) VALUES (12, NULL, 12, 1, 9.00, 12);

-- Historial de estados
INSERT INTO order_status_history (id, status, changed_at, order_id) VALUES (1, 'CREATED', NOW(), 1);
INSERT INTO order_status_history (id, status, changed_at, order_id) VALUES (2, 'PREPARING', NOW(), 2);
INSERT INTO order_status_history (id, status, changed_at, order_id) VALUES (3, 'READY', NOW(), 3);
INSERT INTO order_status_history (id, status, changed_at, order_id) VALUES (4, 'DISPATCHED', NOW(), 4);
INSERT INTO order_status_history (id, status, changed_at, order_id) VALUES (5, 'DELIVERED', NOW(), 5);
INSERT INTO order_status_history (id, status, changed_at, order_id) VALUES (6, 'CANCELLED', NOW(), 6);
INSERT INTO order_status_history (id, status, changed_at, order_id) VALUES (7, 'CREATED', NOW(), 7);
INSERT INTO order_status_history (id, status, changed_at, order_id) VALUES (8, 'CREATED', NOW(), 8);
INSERT INTO order_status_history (id, status, changed_at, order_id) VALUES (9, 'PREPARING', NOW(), 9);
INSERT INTO order_status_history (id, status, changed_at, order_id) VALUES (10, 'READY', NOW(), 10);
INSERT INTO order_status_history (id, status, changed_at, order_id) VALUES (11, 'DISPATCHED', NOW(), 11);
INSERT INTO order_status_history (id, status, changed_at, order_id) VALUES (12, 'DELIVERED', NOW(), 12);