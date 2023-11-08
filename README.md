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