@extends('layout')

@section('content')
    <section class="header" id="headerID">

        <!---   <nav>
                                                <a href="#headerID"><img src="{{ url('css/img/welcome.png') }}" alt="Website Logo" id="logo"></a>
                                                <div class="nav-links" id="navLinks">
                                                    <i class="fa fa-times" onclick="hideMenu()"></i>
                                                    <ul>
                                                        <li><a href="#headerID">Home</a></li>
                                                        <li><a href="#aboutID">About</a></li>
                                                        <li><a href="#searchID">Search</a></li>
                                                        <li><a href="#contactID">Contact</a></li>
                                                    </ul>
                                                </div>
                                                <i class="fa fa-bars" onclick="showMenu()"></i>

                                            </nav>-->
        <div class="text-box">
            <h1>Your Health is Our Priority</h1>
            <p>Search Now for blood type needed in all Egypt</p>
            <a href="#searchID" class="home-btn">Search Now</a>
        </div>
    </section>
    <!---About--->
    <section class="about" id="aboutID">
        <div class="about-txt container-fluid">
            <h1>About Us</h1>
            <p>We know the importance for blood banks <br>so we decided to make an online websiteto help people and save
                lives.
                <br>This is a free online service to search for your needed blood type <br>in all Egyptian blood Banks.
            </p>
        </div>
    </section>
    <!--Search-->
    <form id="searchID" action="{{ route('search.route') }}" method="POST">
        <div class="bg container-fluid">
            <div class="   search container ">
                <div class="row">
                    @csrf
                    <div class="col-md-2">
                        <h3>Enter Blood Group and location</h3>
                    </div>
                    <div class="col-md-4">
                        <div class="dropdown bloodGroup container ">
                            <select name="blood" class="btn  dropdown-toggle bloodChange smb-select sm-form "
                                data-toggle="dropdown" searchable="Search here..">
                                <optgroup style="max-height: 10px;" label="">
                                    <option value="" disabled selected>Choose your Blood Group</option>

                                    @foreach ($data as $item)
                                        <option id="{{ $item->id }}" class="dropdown-item bloodItem"
                                            onClick="Blood_click(this.id)" value="{{ $item->bloodGroup }}">
                                            {{ $item->bloodGroup }}</option>

                                    @endforeach
                                </optgroup>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4 ">

                        <div class="container dropdown cities  custom_select ">
                            <select name="city" class="btn  dropdown-toggle cityChange smb-select sm-form "
                                data-toggle="dropdown" searchable="Search here..">
                                <optgroup style="max-height: 10px;" label="">
                                    <option value="" disabled selected>Choose your city</option>

                                    @foreach ($cityName as $cityItem)
                                        <option id="{{ $cityItem->id }}" class="dropdown-item cityItem" href="#"
                                            onClick="City_click(this.id)">{{ $cityItem->city }}</option>
                                    @endforeach
                                </optgroup>
                            </select>
                        </div>

                    </div>

                    <div class="col-md-2 ">
                        <button type="submit" name="find_Blood" class="btn btn-outline-secondary findBlood"
                            onclick="appearTable()">FindBlood</button>
                            @if($errors->any())
                            <h6>{{$errors->first()}}</h6>
                            @endif
                    </div>

                </div>
            </div>
        </div>
    </form>
    <!--contact-->
    <!--<section class="contact" id="contactID">
                                    <h1>Contact Us</h1>
                                    <p>Phone: 801-587-7000 <br>
                                        Toll-free: 1-800-824-2073 <br>
                                        Physician Referral Line: 801-213-2326 <br>
                                        Medical Records Fax: 801-581-2177 <br>
                                        Research Center: 801-585-0303
                                    </p>
                                </section>-->
    @include('footer')

@endsection
