<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cập nhật thông tin</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #f8f9fa;
            height: 100vh;
            justify-content: center;
        }
        .update-container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }
        .update-container h2 {
            margin-bottom: 20px;
        }
        .form-group {
            text-align: left;
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .update-btn {
            background: #007bff;
            color: white;
            padding: 10px;
            width: 100%;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .update-btn:hover {
            background: #0056b3;
        }
        .login-link {
            display: block;
            margin: 10px 0;
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="update-container">
        <h2>Màn hình cập nhật</h2>
        <form>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" value="xxx" required>
            </div>
            <div class="form-group">
                <label for="password">Mật khẩu</label>
                <input type="password" id="password" name="password" value="xxx" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">Nhập lại mật khẩu</label>
                <input type="password" id="confirm-password" name="confirm-password" value="xxx" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" value="xxx" required>
            </div>
            <a href="#" class="login-link">Đã có tài khoản</a>
            <button type="submit" class="update-btn">Đăng ký</button>
        </form>
    </div>
</body>
</html>
