Create database BK
USE BK;
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

-- Bảng products
CREATE TABLE products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    product_price FLOAT NOT NULL,
    product_description TEXT NOT NULL,
    updated_at DATETIME DEFAULT GETDATE(),
    created_at DATETIME DEFAULT GETDATE()
);
GO

-- Bảng orders
CREATE TABLE orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    updated_at DATETIME DEFAULT GETDATE(),
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);
GO

-- Bảng order_details
CREATE TABLE order_details (
    order_detail_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    updated_at DATETIME DEFAULT GETDATE(),
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);
GO


--DROP TABLE users;



INSERT INTO users (user_name, user_email, user_pass, created_at, updated_at) 
VALUES 
    ('Nguyen Van Bang', 'nguyenvana@gmail.com', 'pass000'),
    ('Tran Thi Minh', 'tranthib@yahoo.com', 'pass456'),
    ('Le Van VU', 'levanc@gmail.com', 'upassword'),
    ('Pham Minh Dinh', 'phamminhd@outlook.com', 'pass789'),
    ('Hoang My Em', 'hoangmye@gmail.com', 'bimat123'),
    ('Dang Kim Fifa', 'dangkimf@hotmail.com', 'manhme123'),
    ('Vo Thi Gieo', 'vothig@gmail.com', 'hello123'),
    ('Bui Van Hung', 'buivanh@gmail.com', 'khanhhang123'),
    ('Ly Thanh Hoang', 'lythanh@yahoo.com', 'abc123'),
	('Nguyen Van An', 'nguyenvana@example.com', 'password125'),
    ('Tran Thi Bao', 'tranthib@example.com', 'pass486'),
    ('Le Van Cuong', 'levanc@example.com', 'pss123');
    ('Doan Anh Hieu', 'doananh@gmail.com', 'xyz456');
GO

INSERT INTO products (product_name, product_price, product_description)
VALUES 
    ('Sữa rửa mặt', 150000, 'Sữa rửa mặt dưỡng ẩm cho da'),
    ('Kem chống nắng', 200000, 'Bảo vệ da khỏi tia UV'),
    ('Dầu gội thảo dược', 180000, 'Dầu gội chiết xuất tự nhiên');
GO

INSERT INTO orders (user_id)
VALUES 
    (1),
    (2),
    (3);
GO
INSERT INTO order_details (order_id, product_id)
VALUES 
    (1, 1),  -- Đơn hàng 1 mua sản phẩm 1
    (1, 2),  -- Đơn hàng 1 mua sản phẩm 2
    (2, 2),  -- Đơn hàng 2 mua sản phẩm 2
    (3, 3);  -- Đơn hàng 3 mua sản phẩm 3
GO


SELECT * FROM users;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_details;


--a.1
SELECT * FROM users
ORDER BY user_name ASC;
go

--a.2 LAY 7 NGƯỜI DÙNG THEO THỨ TỰ ALPHABET
SELECT TOP 2 * FROM users
ORDER BY user_name ASC;
GO

--a3 
SELECT * FROM users
WHERE user_name LIKE '%a%'
ORDER BY user_name ASC;

--a4
SELECT * FROM users
WHERE user_name LIKE 'm%';
GO

--a5
SELECT * FROM users
WHERE user_name LIKE '%i';
GO

--a6
SELECT * FROM users
WHERE user_email LIKE '%@gmail.com';
GO

--a7
SELECT * FROM users
WHERE user_email LIKE '%@gmail.com'
AND user_name LIKE 'm%';
GO

--a8
SELECT * FROM users
WHERE user_email LIKE '%@gmail.com'
AND user_name LIKE '%i%'
AND LEN(user_name) > 5;
GO

--a9







