<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route('management.dashboard.index') }}">
        {{-- <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div> --}}
        <div class="sidebar-brand-text mx-3" style="">Project TRASH</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item {{ \App\Support\Active::isActiveRoute('management.dashboard.index') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('management.dashboard.index') }}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>

    {{-- <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Klantenbeheer
    </div> --}}

    <li class="nav-item {{ \App\Support\Active::isActiveRoute('management.user.index') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('management.user.index') }}">
            <i class="fas fa-users fa-chart-area"></i>
            <span>Gebruikers</span>
        </a>
    </li>

    <li class="nav-item {{ \App\Support\Active::isActiveRoute('management.customer.index') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('management.customer.index') }}">
            <i class="fas fa-user-tie fa-chart-area"></i>
            <span>Klanten</span>
        </a>
    </li>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item {{ \App\Support\Active::isActiveRouteResourceName('management.trash-can.') || \App\Support\Active::isActiveRouteResourceName('management.trash-cans-map.')  ? 'active' : '' }}">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
            aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-trash-alt"></i>
            <span>Prullenbakken</span>
        </a>
        <div id="collapseTwo" class="collapse {{ \App\Support\Active::isActiveRouteResourceName('management.trash-can.') || \App\Support\Active::isActiveRouteResourceName('management.trash-cans-map.')  ? 'show' : '' }}" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
                <a class="collapse-item" href="{{ route('management.trash-can.index') }}">Alle Prullenbakken</a>
                <a class="collapse-item" href="{{ route('management.trash-cans-map.index') }}">Kaart</a>
            </div>
        </div>
    </li>

    {{-- <li class="nav-item {{ \App\Support\Active::isActiveRoute('management.trash-can.index') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('management.trash-can.index') }}">
            <i class="fas fa-trash-alt fa-chart-area"></i>
            <span>Prullenbakken</span>
        </a>
    </li> --}}

    {{-- <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Beheer
    </div> --}}

    <li class="nav-item {{ \App\Support\Active::isActiveRoute('management.product.index') ? 'active' : '' }}">
        <a class="nav-link" href="{{ route('management.product.index') }}">
            <i class="fas fa-fw fa-shopping-basket"></i>
            <span>Producten</span>
        </a>
    </li>


{{--
    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
            aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Utilities</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Custom Utilities:</h6>
                <a class="collapse-item" href="utilities-color.html">Colors</a>
                <a class="collapse-item" href="utilities-border.html">Borders</a>
                <a class="collapse-item" href="utilities-animation.html">Animations</a>
                <a class="collapse-item" href="utilities-other.html">Other</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Addons
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
            aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-fw fa-folder"></i>
            <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Login Screens:</h6>
                <a class="collapse-item" href="login.html">Login</a>
                <a class="collapse-item" href="register.html">Register</a>
                <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">Other Pages:</h6>
                <a class="collapse-item" href="404.html">404 Page</a>
                <a class="collapse-item" href="blank.html">Blank Page</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link" href="charts.html">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Charts</span></a>
    </li>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="tables.html">
            <i class="fas fa-fw fa-table"></i>
            <span>Tables</span></a>
    </li>
    --}}

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

    {{-- <!-- Sidebar Message -->
    <div class="sidebar-card">
        <img class="sidebar-card-illustration mb-2" src="{{ asset('management/img/undraw_rocket.svg') }}" alt="">
        <p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components, and more!</p>
        <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a>
    </div> --}}

</ul>
<!-- End of Sidebar -->
