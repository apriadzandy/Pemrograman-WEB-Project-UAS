<div class="sidebar" data-color="orange" data-background-color="black" data-image="../../../publicassets/img/sidebar-2.jpg">

      <div class="logo"><a class="simple-text logo-normal">
          SI Akademik
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active">
            <a class="nav-link" href="{{ route('dashboard') }}">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="{{ route('mahasiswa.index') }}">
              <i class="material-icons">person</i>
              <p>Mahasiswa</p>
            </a>
          </li>
          <li class="nav-item ">
          <li class="nav-item ">
            <a class="nav-link" href="{{ route('schedule.index') }}">
              <i class="material-icons">library_books</i>
              <p>Jadwal</p>
            </a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Master Data
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="{{ route('dosen.index') }}">Dosen</a>
              <a class="dropdown-item" href="{{ route('fakultas.index') }}">Fakultas</a>
              <a class="dropdown-item" href="{{ route('gedung.index') }}">Gedung</a>
              <a class="dropdown-item" href="{{ route('kelas.index') }}">Kelas</a>
              <a class="dropdown-item" href="{{ route('matkul.index') }}">Matakuliah</a>
              <a class="dropdown-item" href="{{ route('prodi.index') }}">Program Studi</a>
              <a class="dropdown-item" href="{{ route('ruangan.index') }}">Ruangan</a>
              <a class="dropdown-item" href="{{ route('ta.index') }}">Tahun Akademik</a>
            </div>
          </li>
        </ul>
      </div>
      
    </div>
    