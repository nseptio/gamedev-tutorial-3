# Game Development Tutorial 3
## [Tutorial GitHub Page](https://csui-game-development.github.io/tutorials/tutorial-3/)


### Latihan Mandiri: Eksplorasi dan Mekanika Pergerakan

- **Double Jump - Karakter dapat melompat dua kali.**  
  Implementasinya dilakukan dengan membuat sebuah variabel yang menentukan jumlah maksimal lompatan di udara yang dapat dilakukan oleh karakter, lalu membuat variabel `jump_count` yang digunakan selama permainan. Ketika tombol arah atas ditekan, jika nilai variabel `jump_count` masih lebih dari 0 dan fungsi `is_on_floor()` menghasilkan false, karakter dapat melakukan lompatan tambahan dan nilai variabel `jump_count` bertambah satu. Setelah karakter menyentuh lantai (ketika `is_on_floor()` bernilai true), variabel `jump_count` di-reset kembali sesuai nilai variabel awal, yaitu `0`. Tiap kali karakter melompat, nilai variabel `jump_count` dicek apakah kurang dari nilai maksimal lompatan yang ditentukan.

- **Tampilan Karakter Sesuai Arah Gerakan**  
  Proses ini dilakukan dengan mengambil child node `Sprite2D` menggunakan `@onready`, kemudian mengubah properti `flip_h` menjadi true saat karakter bergerak ke kiri dan false saat bergerak ke kanan. Untuk menentukan arah karakter, dibuat variabel bantuan `facing_right`.
