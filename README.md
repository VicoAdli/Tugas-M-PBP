Penjelasan Tugas 7

1
Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

Stateless widget adalah widget yang tidak memiliki keadaan (state) yang dapat berubah. Widget ini digunakan untuk menggambarkan tampilan yang statis atau tidak berubah selama siklus hidup widget tersebut. Stateless widget hanya memiliki build method yang digunakan untuk menggambar tampilan berdasarkan properti yang diberikan, tetapi properti tersebut tidak dapat diubah setelah widget dibuat.

StatefulWidget adalah widget yang memiliki keadaan (state) yang dapat berubah. Mereka digunakan ketika kita perlu mengelola dan memperbarui data atau tampilan widget selama siklus hidupnya. StatefulWidget memiliki dua kelas terpisah: kelas widget itu sendiri yang tetap tidak berubah (Stateless), dan kelas state terpisah yang mengatur data yang dapat berubah.

Perbedaan utama adalah kemampuan StatefulWidget untuk mengelola keadaan yang dapat berubah sementara StatelessWidget hanya digunakan untuk tampilan statis.

2
Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

Untuk menyelesaikan tugas ini, saya menggunakan beberapa widget dalam proyek Flutter saya:
1. MaterialApp: Widget ini digunakan untuk menginisialisasi aplikasi Flutter dan menyediakan berbagai konfigurasi, termasuk tema dan judul aplikasi.
2. Scaffold: Widget ini digunakan untuk mengatur tampilan dasar aplikasi, termasuk AppBar dan tubuh aplikasi.
3. AppBar: Widget ini digunakan untuk menampilkan bilah aplikasi di bagian atas layar, yang mencakup judul aplikasi.
4. SingleChildScrollView: Widget ini digunakan untuk mengelilingi konten yang dapat di-scroll jika kontennya lebih besar dari layar.
5. Padding: Widget ini digunakan untuk menambahkan ruang kosong (padding) di sekitar kontennya.
6. Column: Widget ini digunakan untuk mengatur widget-widget anak secara vertikal.
7. GridView.count: Widget ini digunakan untuk membuat tampilan berupa grid dengan jumlah kolom yang dapat disesuaikan.
8. InkWell: Widget ini digunakan untuk membuat area responsif terhadap sentuhan (tap) oleh pengguna.
9. SnackBar: Widget ini digunakan untuk menampilkan pesan singkat yang muncul di bagian bawah layar saat suatu tindakan dilakukan.
10. Icon: Widget ini digunakan untuk menampilkan ikon di dalam ShopCard.
11. Text: Widget ini digunakan untuk menampilkan teks di dalam ShopCard.

3
Langkah-langkah membuat sebuah program Flutter baru dengan tema inventory, membuat tiga tombol sederhana dengan ikon dan teks, dan memunculkan Snackbar dengan tulisan:

1. Generate proyek Flutter baru
2. Membuat file baru bernama menu.dart pada direktori pbp_project/lib

3. import 'package:flutter/material.dart'; pada menu.dart
4. Memindahkan kode baris ke-39 hingga akhir yang sudah ada dari default-nya pada file main.dart ke menu.dart
5. import 'package:pbp_project/menu.dart'; pada main.dart

6. Mengubah kode pada main.dart dibagian tema aplikasi
7. Pada file main.dart, menghapus MyHomePage(title: 'Flutter Demo Home Page') sehingga menjadi MyHomePage(). Ini mengubah sifat widget halaman menu menjadi stateless.
8. Pada file menu.dart, mengubah sifat widget halaman dari stateful menjadi stateless. Lakukan perubahan pada bagian ({super.key, required this.title}) menjadi ({Key? key}) : super(key: key);. Hapus final String title; sampai bawah serta tambahkan Widget build.
9.Menghapus fungsi State yang ada dibawah bagian stateless widget.
10. Menambahkan teks dan card untuk memperlihatkan barang yang dijual. Memulai dengan define tipe pada list, lalu menambahkan barang-barang yang dijual (nama, harga, dan icon barang tersebut). Isi dengan kode yang sesuai

Penjelasan Tugas 8
1
Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Navigator.push() digunakan untuk menambahkan rute baru ke tumpukan navigasi. Ini menambahkan halaman baru di atas halaman saat ini, sehingga pengguna dapat kembali ke halaman sebelumnya.
Contoh:
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);

Navigator.pushReplacement() menggantikan rute saat ini dengan rute baru. Ini bermanfaat ketika Anda ingin mengganti halaman saat ini dengan halaman baru dan menghapus halaman sebelumnya dari tumpukan.
Contoh:
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);

2
Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

Container: Digunakan untuk mengelola tata letak dan dekorasi elemen.
Column dan Row: Mengatur widget secara vertikal (Column) atau horizontal (Row).
ListView: Menyusun widget dalam daftar bergulir.
Stack: Menempatkan widget di atas satu sama lain, cocok untuk tumpukan elemen.
GridView: Menyusun widget dalam grid.

3
Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

Pada formulir yang disajikan, terdapat tiga elemen input yang digunakan untuk mengumpulkan informasi mengenai item toko yang akan ditambahkan. TextFormField untuk Nama Item: Elemen ini digunakan untuk mengambil nama item dari pengguna. Pengguna harus memasukkan nilai, dan validasi memastikan bahwa input tidak boleh kosong.
TextFormField untuk Jumlah Item: Elemen ini digunakan untuk mengambil jumlah item dari pengguna. Pengguna harus memasukkan nilai, dan validasi memastikan bahwa input tidak boleh kosong dan harus berupa angka.
TextFormField untuk Deskripsi:Elemen ini digunakan untuk mengambil deskripsi item dari pengguna. Pengguna harus memasukkan nilai, dan validasi memastikan bahwa input tidak boleh kosong.

Alasan Penggunaan Elemen Input Tersebut:

TextFormField: Digunakan untuk input teks dan sangat cocok untuk mengambil nama item dan deskripsi item. Mereka juga memungkinkan pengguna untuk melihat apa yang mereka ketik dan memberikan umpan balik langsung saat mereka menulis.
TextFormField untuk Jumlah Item: Digunakan untuk input angka (integer) dan mencakup validasi untuk memastikan bahwa nilai yang dimasukkan adalah angka yang valid.
Pemilihan elemen input ini didasarkan pada jenis data yang diharapkan untuk setiap atribut item dan kebutuhan validasi khusus yang diperlukan pada masing-masing atribut tersebut.

4
Bagaimana penerapan clean architecture pada aplikasi Flutter?

Clean Architecture membagi aplikasi menjadi beberapa lapisan terpisah. Beberapa lapisan kunci meliputi:

Entities: Representasi objek bisnis.
Use Cases (Interactors): Logika bisnis aplikasi.
Repositories: Gateway ke data.
Frameworks and Drivers: Bagian luar aplikasi seperti UI, database, dan perangkat keras.

5
Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!

1. Buatlah berkas baru di dalam direktori baru widgets dengan nama left_drawer.dart. Isi dengan kode yang sesuai. Jangan lupa tambahkan impor untuk halaman-halaman yang kita ingin masukkan navigasinya ke dalam Drawer Menu.
2. Routing untuk halaman-halaman yang kita impor. Hias juga drawer kita dengan memasukkan drawer header

3. Buat berkas baru pada direktori lib dengan nama shoplist_form.dart. Isi dengan kode yang sesuai. Sesuaikan juga widget Placeholder
4. Buat variabel baru bernama _formKey lalu tambahkan _formKey tersebut ke dalam atribut key milik widget Form. Atribut key akan berfungsi sebagai handler dari form state, validasi form, dan penyimpanan form.
5. Isi widget Form dengan field. Buatlah beberapa variabel untuk menyimpan input dari masing-masing field yang akan dibuat.
6. Buatlah widget Column sebagai child dari SingleChildScrollView. Buatlah widget TextFormField yang dibungkus oleh Padding sebagai salah satu children dari widget Column. Setelah itu, tambahkan atribut crossAxisAlignment untuk mengatur alignment children dari Column.
7. Buatlah dua TextFormField yang dibungkus dengan Padding sebagai child selanjutnya dari Column
8. Buatlah tombol sebagai child selanjutnya dari Column. Bungkus tombol ke dalam widget Padding dan Align. Kali ini kita tidak akan menyimpan data ke dalam database, namun kita akan memunculkannya pada pop-up yang akan muncul setelah tombol ditekan.
9.Tambahkan fungsi showDialog() pada bagian onPressed() dan munculkan widget AlertDialog pada fungsi tersebut. Kemudian, tambahkan juga fungsi untuk reset form.
10. Pada widget ShopItem pada berkas menu.dart yang sudah dibuat pada tutorial sebelumnya, akan dibuat agar agar kode yang terletak pada atribut onTap dari InkWell dapat melakukan navigasi ke route lain
11. Lakukan hal penyesuaian lain untuk login dan daftar item. Update juga drawer.
12. Pindahkan halaman-halaman yang sudah dibuat sebelumnya ke dalam satu folder screens untuk mempermudah kita ke depannya. Refactoring
13. Untuk memudahkan juga, buat semua route di MyApp pada main.dart agar untuk memanggil nantinya praktis di kelas-kelas lain.

Penjelasan Tugas 9
1
Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Bisa saja melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Ini biasanya dilakukan dengan menggunakan library atau fungsi di suatu bahasa pemrograman untuk melakukan parsing langsung dari JSON ke struktur data yang dapat digunakan. Namun, membuat model seringkali disarankan karena dapat memberikan struktur dan tipe data yang jelas, memudahkan dalam pengembangan, dan memberikan keamanan terhadap data yang diambil.

2
Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

CookieRequest adalah sebuah class atau objek yang digunakan untuk melakukan manajemen cookies dalam aplikasi Flutter. CookieRequest merupakan bagian dari paket pbp_django_auth, yang digunakan untuk berinteraksi dengan server Django, terutama untuk tujuan otentikasi pengguna.
CookieRequest digunakan untuk menyimpan, mengambil, dan mengelola cookies yang diterima dari server Django. Cookies ini biasanya digunakan untuk menjaga status otentikasi pengguna di seluruh sesi. CookieRequest memiliki metode atau fungsi untuk membuat permintaan HTTP ke server Django. Ini dapat mencakup permintaan untuk login, logout, dan operasi otentikasi lainnya.
Dengan berbagi instance CookieRequest ke seluruh komponen, kita memastikan bahwa status otentikasi dan informasi cookies dapat diakses secara konsisten di seluruh aplikasi. Ini dapat membantu dalam manajemen state global. Dengan menggunakan satu instance yang sama di seluruh aplikasi, kita menghindari duplikasi kode dan membuat logika otentikasi menjadi lebih terpusat. Ini dapat membuat pengelolaan otentikasi menjadi lebih mudah.
Jika setiap komponen memiliki instance CookieRequest yang terpisah, mungkin sulit untuk memastikan konsistensi antara status otentikasi di berbagai bagian aplikasi. Dengan berbagi instance, kita dapat memastikan bahwa informasi otentikasi adalah yang sama di seluruh aplikasi. Memiliki satu instance CookieRequest yang dibagikan dapat membantu menghindari pembuatan banyak koneksi atau permintaan otentikasi yang berlebihan ke server. Ini dapat meningkatkan efisiensi aplikasi.
Dengan instance CookieRequest yang dibagikan, kita memiliki fleksibilitas untuk memodifikasi atau memperluas fungsionalitas otentikasi tanpa perlu mengubah banyak bagian kode.

3
Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

Pengambilan Data JSON:
-Menggunakan paket HTTP (seperti http) untuk membuat permintaan HTTP ke server.-Mendapatkan respons yang berisi data dalam format JSON.

Penguraian JSON:
Menggunakan fungsi jsonDecode untuk menguraikan data JSON ke dalam struktur data Dart (dalam hal ini, objek List<Item>).

Konversi ke Model:
Jika model telah dibuat, mengonversi data Dart ke objek model menggunakan konstruktor model.

Menampilkan Data pada Flutter:
Menggunakan widget seperti FutureBuilder untuk menangani asinkronitas dan menampilkan data ke antarmuka pengguna.

4
Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Input Data Akun pada Flutter:
Pengguna memasukkan data akun, seperti username dan password, melalui antarmuka Flutter.

Pengiriman Data ke Server Django:
Menggunakan objek CookieRequest atau paket HTTP, data akun dikirim ke endpoint autentikasi Django.

Proses Autentikasi oleh Django:
- Django memeriksa kecocokan data akun dengan data yang tersimpan di database.
- Jika akun valid, server Django mengembalikan token otentikasi atau status berhasil.

Penanganan Respons di Flutter:
- Flutter menerima respons dari server Django.
- Jika otentikasi berhasil, pengguna diarahkan ke halaman beranda atau menu utama menggunakan Navigator.

Tampilnya Menu pada Flutter:
- Setelah otentikasi berhasil, menu atau layar beranda ditampilkan.
- Menggunakan widget seperti Drawer atau navigasi antar halaman untuk memberikan akses ke berbagai fitur aplikasi.

5
Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

1. MaterialApp:
- Representasi root dari aplikasi Flutter.
- Mengonfigurasi tema umum dan judul aplikasi.
- Mengelilingi seluruh aplikasi.
2. Scaffold:
- Menyediakan struktur dasar untuk antarmuka visual aplikasi.
- Berisi app bar, drawer, dan body.
3. AppBar:
- Representasi bar atas aplikasi.
- Menampilkan judul layar saat ini.
4. Drawer:
- Representasi drawer navigasi samping.
- Berisi tautan atau aksi untuk navigasi.
5. LeftDrawer (Widget Kustom):
- Representasi widget drawer kustom.
- Menyediakan tautan atau aksi untuk navigasi dalam aplikasi.
6. Text:
- Menampilkan teks di layar.
- Digunakan untuk berbagai judul, label, dan pesan.
7. TextField:
- Menyediakan bidang input teks.
- Digunakan untuk memasukkan username dan password pada halaman login dan detail item pada halaman formulir.
8. ElevatedButton:
- Representasi tombol terangkat.
- Memicu aksi ketika ditekan, seperti mengirimkan formulir atau berpindah ke layar lain.
- Digunakan untuk tombol login.
9. FutureBuilder:
- Widget yang membantu dalam mengelola status dari suatu Future.
- Menampilkan komponen UI yang berbeda berdasarkan status operasi asinkron.
- Digunakan untuk mengambil dan menampilkan data dari server secara asinkron.
10. ListView.builder:
- Membangun daftar yang dapat discroll berdasarkan permintaan.
- Efisien membuat dan menghapus widget saat discroll masuk dan keluar dari tampilan.
- Digunakan untuk menampilkan daftar item yang diambil dari server.
11. Column:
- Menyusun widget anak secara vertikal.
- Digunakan untuk mengorganisir widget secara vertikal dalam body dari Scaffold.
12. GridView.count:
- Membuat grid yang dapat discroll dengan jumlah tile yang tetap di sumbu silang.
- Digunakan untuk menampilkan grid dari item pada halaman utama.
13. SnackBar:
- Menampilkan pesan singkat di bagian bawah layar.
- Digunakan untuk menampilkan pesan umpan balik, seperti login berhasil atau pengiriman formulir.
14. SingleChildScrollView:
- Memungkinkan widget anaknya discroll jika melebihi tinggi viewport.
- Digunakan untuk membungkus konten dalam formulir atau layout lainnya untuk mencegah masalah overflow.
15. Form:
- Kontainer untuk mengelompokkan dan memvalidasi beberapa form field.
- Digunakan untuk membungkus input field dalam halaman formulir.
16. GlobalKey<FormState> (_formKey):
- Kunci untuk mengidentifikasi secara unik suatu widget Form.
- Digunakan untuk validasi dan mengakses state form pada halaman formulir.
17. InkWell:
- Memberikan efek visual ketika pengguna menyentuh widget.
- Digunakan untuk interaksi sentuhan pada widget ShopCard.
18. Container:
- Model kotak yang dapat berisi widget lainnya.
- Digunakan untuk styling dan padding pada berbagai bagian UI.
19. DrawerHeader:
- ListTile khusus yang dimaksudkan untuk digunakan dalam Drawer.
- Berisi header dari drawer, termasuk nama aplikasi dan deskripsi singkat.
20. ListTile:
- Mewakili baris dengan tinggi tetap yang berisi teks dan ikon opsional di bagian depan atau belakang.
- Digunakan untuk setiap item navigasi di drawer.
21. Icon:
- Mewakili ikon grafis.
- Digunakan sebagai ikon di bagian depan setiap ListTile untuk item navigasi di drawer.
22. Padding:
- Menambahkan padding di sekitar widget anak.
- Digunakan untuk menambahkan spasi antara elemen-elemen di header drawer.
23. MyHomePage:
- Representasi layar utama dari aplikasi.
- Menampilkan grid item dengan ikon dan label untuk berbagai tindakan.
24. ShopFormPage:
- Representasi halaman formulir untuk menambahkan item baru.
- Menggunakan validasi formulir dan membuat permintaan POST untuk menambahkan item ke server.
25. ItemPage:
- Representasi halaman untuk melihat daftar item yang diambil dari server.
- Menggunakan FutureBuilder untuk pengambilan data asinkron.
26. ShopItem (Kelas Kustom):
- Representasi model untuk item di toko, termasuk nama dan ikon.
- Digunakan untuk membuat daftar objek ShopItem untuk grid pada layar utama.
27. Provider:
- Widget dari paket provider untuk manajemen state.
- Membungkus seluruh MaterialApp untuk menyediakan objek CookieRequest ke aplikasi.
28. MyApp:
- Titik masuk utama untuk aplikasi Flutter.
- Mengonfigurasi MaterialApp, mengatur tema, dan mendefinisikan halaman beranda serta pemetaan rute.

6

1. Membuat django-app bernama authentication pada project Django yang telah dibuat
2. Tambahkan authentication ke INSTALLED_APPS pada main project settings.py aplikasi Django
3. Jalankan perintah pip install django-cors-headers untuk menginstal library yang dibutuhkan.
4. Tambahkan corsheaders ke INSTALLED_APPS pada main project settings.py aplikasi Django 
5. Tambahkan corsheaders.middleware.CorsMiddleware pada main project settings.py aplikasi Django
6. Tambahkan beberapa variabel pada main project settings.py aplikasi Django
7. Membuat sebuah metode view untuk login pada authentication/views.py.
8. Membuat file urls.py pada folder authentication dan tambahkan URL routing terhadap fungsi yang sudah dibuat dengan endpoint login/.
9. Menambahkan tambahkan path('auth/', include('authentication.urls')), pada file pbp_project/urls.py.

10. Instal package provider dan pbp_django_auth
11. Modifikasi root widget untuk menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider.
12. Membuat file baru pada folder screens dengan nama login.dart. Isi dengan kode yang sesuai
13. Pada file main.dart, pada Widget MaterialApp(...), ubah home: MyHomePage() menjadi home: LoginPage()

14. Membuka endpoint JSON yang sudah dibuat sebelumnya. Salin data json pada situs web Quicktype. Ubah setup name menjadi Product, source type menjadi JSON, dan language menjadi Dart terlebih dahulu.

15. Lakukan flutter pub add http pada terminal proyek Flutter untuk menambahkan package http.
16. Pada file android/app/src/main/AndroidManifest.xml, tambahkan kode yang sesuai untuk memperbolehkan akses Internet pada aplikasi Flutter yang sedang dibuat.
17. membuat file baru pada folder lib/screens dengan nama list_product.dart.
18. Pada file list_product.dart, impor library yang dibutuhkan. Isi kode yang sesuai.
19. Tambahkan halaman list_product.dart ke widgets/left_drawer.dart.
20. Ubah fungsi tombol Lihat Produk pada halaman utama agar mengarahkan ke halaman ProductPage. Redirect dengan menambahkan else if setelah kode if(...){...} di bagian akhir onTap: () { } yang ada pada file widgets/shop_card.dart. Impor file yang dibutuhkan saat menambahkan ProductPage ke left_drawer.dart dan shop_card.dart.

21. Membuat sebuah fungsi view baru pada main/views.py aplikasi Django. 
22. Menambahkan path baru pada main/urls.py dengan kode yang sesuai.
23. Hubungkan halaman shoplist_form.dart dengan CookieRequest dengan menambahkan kode yang sesuai. Ubahlah perintah pada onPressed: () button juga.