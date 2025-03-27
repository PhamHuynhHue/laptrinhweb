
Create database BKb
USE BKb;
GO

-- Bảng users
CREATE TABLE users (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    user_name VARCHAR(25) NOT NULL,
    user_email VARCHAR(55) NOT NULL,
    user_pass VARCHAR(255) NOT NULL,
    updated_at DATETIME DEFAULT GETDATE(),
    created_at DATETIME DEFAULT GETDATE()
);
GO


INSERT INTO users (user_id, user_name)
VALUES 
(1, 'Nguyen Van A'),
(2, 'Tran Thi B'),
(3, 'Le Van C'),
(4, 'Pham Thi D'),
(5, 'Hoang Van E'),
(6, 'Nguyen Thi F'),
(7, 'Dang Van G'),
(8, 'Bui Thi H'),
(9, 'Vo Van I'),
(10, 'Pham Van J');
GO
select *from users

-- 1. Liệt kê mã user, tên user, mã hóa đơn
SELECT users.user_id, users.user_name, orders.order_id 
FROM users 
JOIN orders ON users.user_id = orders.user_id;

-- 2. Liệt kê số lượng hóa đơn của khách hàng
SELECT users.user_id, users.user_name, COUNT(orders.order_id) AS total_orders 
FROM users 
LEFT JOIN orders ON users.user_id = orders.user_id 
GROUP BY users.user_id, users.user_name;

-- 3. Liệt kê mã đơn hàng và số sản phẩm
SELECT orders.order_id, COUNT(order_details.product_id) AS total_products 
FROM orders 
JOIN order_details ON orders.order_id = order_details.order_id 
GROUP BY orders.order_id;

-- 4. Thông tin mua hàng của người dùng (gom nhóm theo đơn hàng)
SELECT users.user_id, users.user_name, orders.order_id, products.product_name 
FROM users 
JOIN orders ON users.user_id = orders.user_id 
JOIN order_details ON orders.order_id = order_details.order_id 
JOIN products ON order_details.product_id = products.product_id 
ORDER BY orders.order_id;

-- 5. Liệt kê 7 người dùng có nhiều đơn hàng nhất
SELECT TOP 7 users.user_id, users.user_name, COUNT(orders.order_id) AS total_orders
FROM users
JOIN orders ON users.user_id = orders.user_id
GROUP BY users.user_id, users.user_name
ORDER BY total_orders DESC;

-- 6. Liệt kê 7 người dùng mua sản phẩm chứa "Samsung" hoặc "Apple"
SELECT DISTINCT users.user_id, users.user_name, orders.order_id, products.product_name 
FROM users 
JOIN orders ON users.user_id = orders.user_id 
JOIN order_details ON orders.order_id = order_details.order_id 
JOIN products ON order_details.product_id = products.product_id 
WHERE products.product_name LIKE '%Samsung%' OR products.product_name LIKE '%Apple%' 
;

-- 7. Liệt kê danh sách mua hàng của user với tổng tiền mỗi đơn
SELECT users.user_id, users.user_name, orders.order_id, SUM(products.product_price) AS total_price 
FROM users 
JOIN orders ON users.user_id = orders.user_id 
JOIN order_details ON orders.order_id = order_details.order_id 
JOIN products ON order_details.product_id = products.product_id 
GROUP BY users.user_id, users.user_name, orders.order_id;

-- 8. Liệt kê đơn hàng có giá trị lớn nhất của mỗi user
SELECT users.user_id, users.user_name, orders.order_id, MAX(total_price) AS max_price 
FROM (
    SELECT users.user_id, users.user_name, orders.order_id, SUM(products.product_price) AS total_price 
    FROM users 
    JOIN orders ON users.user_id = orders.user_id 
    JOIN order_details ON orders.order_id = order_details.order_id 
    JOIN products ON order_details.product_id = products.product_id 
    GROUP BY users.user_id, users.user_name, orders.order_id
) AS user_orders 
GROUP BY users.user_id, users.user_name;

-- 9. Liệt kê đơn hàng có giá trị nhỏ nhất của mỗi user
SELECT users.user_id, users.user_name, orders.order_id, MIN(total_price) AS min_price, COUNT(order_details.product_id) AS total_products
FROM (
    SELECT users.user_id, users.user_name, orders.order_id, SUM(products.product_price) AS total_price 
    FROM users 
    JOIN orders ON users.user_id = orders.user_id 
    JOIN order_details ON orders.order_id = order_details.order_id 
    JOIN products ON order_details.product_id = products.product_id 
    GROUP BY users.user_id, users.user_name, orders.order_id
) AS user_orders 
GROUP BY users.user_id, users.user_name;

-- 10. Liệt kê đơn hàng có nhiều sản phẩm nhất của mỗi user
SELECT users.user_id, users.user_name, orders.order_id, COUNT(order_details.product_id) AS total_products
FROM users 
JOIN orders ON users.user_id = orders.user_id 
JOIN order_details ON orders.order_id = order_details.order_id 
GROUP BY users.user_id, users.user_name, orders.order_id 
ORDER BY total_products DESC;
