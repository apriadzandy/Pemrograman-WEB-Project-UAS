## Fitur apa saja yang tersedia di Sistem Informasi Akademik Kampus?

- Multi User
- CRUD : Dosen, Mahasiswa, Fakultas, Gedung, Kelas, Matkul, Prodi, Ruangan, Jadwal, dan Tahun Akademik
- otomatis pengisian data user berdasarkan data mahasiswa dan dosen
- Pengelompokan kelas mahasiswa
- KRS mahasiswa
- Jadwal Dosen
- Nilai
- KHS Mahasiswa


## Default Account for testing

Admin Default Account
username:admin@gmail.com
password:11111111

Mahasiswa Default Account
username:202210370311204
password:11111111

Dosen Default Account
username:1102110
password:11111111

## How to Install

1. **Clone Repository**

```bash
git clone https://github.com/apriadzandy/Pemrograman-WEB-Project-UAS.git
go to folder
composer install
npm install
ganti .env.example to .env
```

2. **Buka `.env` lalu ubah baris berikut sesuai dengan databasemu yang ingin dipakai**

```bash
DB_PORT=3306
DB_DATABASE=siak
DB_USERNAME=root
DB_PASSWORD=
```

3. **Instalasi website**

```bash
php artisan key:generate
php artisan migrate --seed
```

4. **Jalankan website**

```bash
php artisan serve
```
## **Autor**
    Apriadzandy Putra : 202210370311204
    Rauf Hafizh Asmenta : 202210370311209
    Arya mandala putra : 202210370311183
    Mohammad Satria Agung Rahmatullah : 202210370311200
    Nilton is Marcal : 202210370311181
