@extends('dashboard')

@section('content')
    <div class="container mt-4">
        <h2>Chi tiết đơn hàng của: {{ $user->name }}</h2>
        @if($orders->count() > 0)
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Mã đơn hàng</th>
                        <th>Danh sách sản phẩm</th>
                        <th>Ngày tạo</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($orders as $order)
                        <tr>
                            <td>{{ $order->id }}</td>
                            <td>
                                <ul>
                                    @foreach($order->products as $product)
                                        <li>{{ $product->name }} (Mã: {{ $product->id }})</li>
                                    @endforeach
                                </ul>
                            </td>
                            <td>{{ $order->created_at }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @else
            <p>Người dùng này chưa có đơn hàng nào.</p>
        @endif
    </div>
@endsection