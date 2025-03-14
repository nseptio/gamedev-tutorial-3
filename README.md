# Game Development Tutorial 5

## [Tutorial GitHub Page](https://csui-game-development.github.io/tutorials/tutorial-5/)

### Latihan Mandiri: Membuat dan Menambah Variasi Aset
1. Membuat minimal 1 (satu) objek baru yang dapat diinteraksi oleh pemain
   - Membuat scene `Coin.tscn` dengan root node `Area2D`
   - Membuat SpriteFrame baru dengan SpriteSheet `coin.png` yang diperoleh dari https://laredgames.itch.io/gems-coins-free  
   - Menambahkan `AnimatedSprite2D` untuk animasi koin berputar
   - Menambahkan `CollisionShape2D` berbentuk oval yang menyerupai koin
   - Menambahkan `AudioStreamPlayer2D` untuk efek suara ketika pemain mengambil koin. Audio ini diperoleh dari pack suara berikut https://kronbits.itch.io/freesfx 
   - Menambahkan _script_ untuk menambahkan efek suara ketika pemain mengambil koin, beserta signal untuk deteksi pemain mengambil koin. Koin akan dihapus dari scene ketika pemain mengambilnya  

2. Menambah audio pada `Player` ketika melakukan lompatan
   - Menambahkan _child node_ AudioStreamPlayer2D pada scene player
   - Menambahkan efek suara lompotan yang diperoleh dari https://jdwasabi.itch.io/8-bit-16-bit-sound-effects-pack?download
   - Mengedit _player script_ untuk memainkan efek suara ketika pemain melakukan lompatan
  
3. Membuat minimal 1 (satu) musik latar (background music)  
   - Musik latar yang digunakan adalah asset yang diperoleh dari repository tutorial ini 
   - Musik latar akan dimainkan secara _loop_ pada scene `Main.tscn` ketika game dimulai

### Assets used
- [Gems and Coins Free](https://laredgames.itch.io/gems-coins-free) by Lared Games
- [Freesfx](https://kronbits.itch.io/freesfx) by Kronbits
- [8-bit 16-bit Sound Effects Pack](https://jdwasabi.itch.io/8-bit-16-bit-sound-effects-pack?download) by JDWasabi
