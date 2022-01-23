<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BloodBank</title>

    <!--Bootstrap-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <!--Java script of bootstrap-->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.1/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.bootstrap4.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.1/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.9/js/responsive.bootstrap4.min.js"></script>
    <!--CSS Style-->
    <link rel="stylesheet" href="../css/app.css">
    <script src="{{url('js/homeScript.js')}}"></script>
</head>

<body>
  <div class="bHeader">
    <nav>
      <a href="#headerID"><img src="{{url('css/img/welcome.png')}}" alt="Website Logo" id="logo"></a>
      <div class="nav-links" id="navLinks">
        <ul>
          <li><a href="{{url('/home')}}">Back</a></li>
        </ul>
      </div>
    </nav>
  </div>
    <div class="bg container-fluid">
        <form class=" search container " action="{{ url('/search') }}" method="POST">
            @csrf
            <h3>Enter Blood Group and location</h3>
            <div class="container dropdown cities  custom_select "  >


                <select name="t"class="btn  dropdown-toggle cityChange smb-select sm-form " data-toggle="dropdown" searchable="Search here..">
                    <optgroup style="max-height: 10px;" label="">

                    <option value="" disabled selected>Choose your city</option>

                    @foreach ($cityName as $cityItem)
                        <option  id="{{ $cityItem->id }}" class="dropdown-item cityItem" href="#"
                            onClick="City_click(this.id)">{{ $cityItem->city }}</option>
                    @endforeach
                    </optgroup>
                  </select>
            </div>

            <button type="submit" name="find_Blood" class="btn btn-outline-secondary findBlood" onclick="appearTable()">FindBlood</button>

        </form>


    </div>
    <div id="dataTable" class="datatable container-fluid ">
        <table class="table table-striped table-hover table-bordered dt-responsive nowrap">
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>Hospital Name</th>
                    <th>Telephone</th>
                    <th>Address</th>
                    <th>A+</th>
                    <th>A-</th>
                    <th>B+</th>
                    <th>B-</th>
                    <th>AB+</th>
                    <th>AB-</th>
                    <th>O+</th>
                    <th>O-</th>
                    <th>price</th>
                    <th>Order Now</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Tiger</td>
                    <td>Nixon</td>
                    <td>Systemut Architect</td>
                    <td>6</td>
                    <td>61</td>
                    <td>5</td>
                    <td>77</td>
                    <td>5421</td>
                    <td>44</td>
                    <td>5421</td>
                    <td>11</td>
                    <td>$10</td>
                    <td><button type="button" class="btn btn-outline-dark ">ORDER NOW</button></td>
                </tr>

            </tbody>
        </table>
    </div>
    <script src="../js/app.js"></script>
</body>

</html>
