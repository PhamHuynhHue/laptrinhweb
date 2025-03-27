<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách user</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #f8f9fa;
            padding: 20px;
        }
        table {
            width: 600px;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background: #f2f2f2;
        }
        .actions a {
            margin-right: 10px;
            text-decoration: none;
            color: #007bff;
        }
        .pagination {
            margin-top: 10px;
        }
        .pagination a {
            text-decoration: none;
            padding: 5px 10px;
            border: 1px solid #ccc;
            margin: 0 2px;
            color: #007bff;
        }
        .pagination a:hover {
            background: #007bff;
            color: white;
        }
    </style>
</head>
<body>
    <h2>Danh sách user</h2>
    <table>
        <tr>
            <th>#</th>
            <th>Username</th>
            <th>Email</th>
            <th>Thao tác</th>
        </tr>
        <tr>
            <td>1</td>
            <td>UPVH</td>
            <td>ATJW@gmail.com</td>
            <td class="actions"><a href="#">Edit</a> | <a href="#">View</a> | <a href="#">Delete</a></td>
        </tr>
        <tr>
            <td>2</td>
            <td>IFUK</td>
            <td>KULB@gmail.com</td>
            <td class="actions"><a href="#">Edit</a> | <a href="#">View</a> | <a href="#">Delete</a></td>
        </tr>
        <tr>
            <td>3</td>
            <td>DZZQ</td>
            <td>ERNB@gmail.com</td>
            <td class="actions"><a href="#">Edit</a> | <a href="#">View</a> | <a href="#">Delete</a></td>
        </tr>
        <tr>
            <td>4</td>
            <td>NJYY</td>
            <td>ROIF@gmail.com</td>
            <td class="actions"><a href="#">Edit</a> | <a href="#">View</a> | <a href="#">Delete</a></td>
        </tr>
        <tr>
            <td>5</td>
            <td>YUMG</td>
            <td>KITN@gmail.com</td>
            <td class="actions"><a href="#">Edit</a> | <a href="#">View</a> | <a href="#">Delete</a></td>
        </tr>
        <tr>
            <td>6</td>
            <td>WZSU</td>
            <td>CVTL@gmail.com</td>
            <td class="actions"><a href="#">Edit</a> | <a href="#">View</a> | <a href="#">Delete</a></td>
        </tr>
        <tr>
            <td>7</td>
            <td>WXFQ</td>
            <td>MIUZ@gmail.com</td>
            <td class="actions"><a href="#">Edit</a> | <a href="#">View</a> | <a href="#">Delete</a></td>
        </tr>
        <tr>
            <td>8</td>
            <td>XZOR</td>
            <td>YZLV@gmail.com</td>
            <td class="actions"><a href="#">Edit</a> | <a href="#">View</a> | <a href="#">Delete</a></td>
        </tr>
        <tr>
            <td>9</td>
            <td>HGGO</td>
            <td>OYYX@gmail.com</td>
            <td class="actions"><a href="#">Edit</a> | <a href="#">View</a> | <a href="#">Delete</a></td>
        </tr>
        <tr>
            <td>10</td>
            <td>PXZX</td>
            <td>YSML@gmail.com</td>
            <td class="actions"><a href="#">Edit</a> | <a href="#">View</a> | <a href="#">Delete</a></td>
        </tr>
    </table>
    <div class="pagination">
        <a href="#">Previous</a>
        <a href="#">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">Next</a>
    </div>
</body>
</html>