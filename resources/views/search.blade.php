
@extends('layout')

<style>
    body {
   background:linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)),url('../storage/blood_search.png');
   background-position: center;
    background-repeat: no-repeat;
    background-size:cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-color: #ffffff;
}

</style>
@section('content')

    <div id="dataTable" class="datatable container-fluid">
        <table class="table table-striped table-hover table-bordered dt-responsive nowrap">
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>Hospital Name</th>
                    <th>Telephone</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>{{ $blood_select }}</th>
                    <th>price</th>
                    <th>Order Now</th>

                </tr>
            </thead>
            <tbody>
                <?php
                $count = 0;
                ?>
                @foreach ($result as $item)
                    <tr>
                        <td>{{ ++$count }}</td>
                        <td> {{ $item->name }} </td>
                        <td>{{ $item->phone }}</td>
                        <td> {{ $item->address }}</td>
                        <td>{{ $item->City }}</td>
                        <td>{{ $item->$blood_select }}</td>
                        <td>{{ $item->price }}</td>
                        <td><button type="button" class="btn btn-outline-dark ">ORDER NOW</button></td>
                    </tr>

                @endforeach
            </tbody>
        </table>
    </div>
    <script src="../js/app.js"></script>
    @endsection
