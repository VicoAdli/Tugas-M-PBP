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
5. import 'package:shopping_list/menu.dart'; pada main.dart

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