<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Màn hình chi tiết</title>
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
        .detail-container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: left;
        }
        .detail-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .detail-group {
            margin-bottom: 15px;
            display: flex;
            justify-content: space-between;
        }
        .edit-btn {
            display: block;
            background: #007bff;
            color: white;
            padding: 10px;
            width: 100%;
            border: none;
            border-radius: 4px;
            text-align: center;
            cursor: pointer;
        }
        .edit-btn:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="detail-container">
        <h2>Màn hình chi tiết</h2>
        <div class="detail-group">
            <label><strong>Username</strong></label>
            <span>test1</span>
        </div>
        <div class="detail-group">
            <label><strong>Email</strong></label>
            <span>test1@gmail.com</span>
        </div>
        <button class="edit-btn">Chỉnh sửa</button>
    </div>
</body>
</html>
