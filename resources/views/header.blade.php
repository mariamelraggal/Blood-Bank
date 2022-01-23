<header>
    <div >
        <nav class=" container-fluid navbar navbar-expand-lg  bHeader ">
            <a class="navbar-brand " href=""><img src="{{ url('css/img/welcome.png') }}" alt="Website Logo"
                    id="logo"></a>
            <button class="navbar-toggler btn navbar-dark" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse nav-links " id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item ">
                        <a class="nav-link n" href={{route('home')}}>Home</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href={{route('about')}}> AboutUS </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href={{route('search')}}> Search </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href={{route('contact')}}> ContactUS </a>
                    </li>
                    @if (!(session()->has('LoggedUser')))
                    <li class="nav-item ">
                        <a class="nav-link" href={{route('auth.login')}}> LogIn </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href={{route('auth.register')}}> Register </a>
                    </li>
                    @else
                    <li class="nav-item ">
                        <a class="nav-link" href={{ route('auth.logout') }}> LogOut </a>
                    </li>
                    @endif
                </ul>
            </div>
        </nav>
    </div>

</header>
