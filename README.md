## TUGAS 2

#### Navigator.push dan Navigator.pushReplacement
`Navigator.push` akan melakukan push, sehingga halaman sebelumnya tepat berada di bawah halaman saat ini
`Navigator.pushReplacement` akan melakukan push halaman lalu menghapus (pop) halaman sebelumnya, sehingga stack tidak akan penuh.

#### Widget-widget yang Digunakan
-   `Drawer`, menampilkan dan menyembunyikan *sidebar*
-   `Navigator`, melakukaan routing, mengatur halaman yang akan ditampilkan
-   `Form`, membuat formulir yang dapat menerima masukan user
-   `SizedBox`, memberikan space dari tinggi dan lebar yang diberikan
-   `TextFormField`, menerima input teks di `Form` berupa String
-   `InputDecoration`, mempercantik `TextFormField`
-   `DropDownButton`, membuat input *dropdown*
-   `DropDownMenuItem`, membuat daftar pilihan di *dropdown*
-   `ButtonStyle`, mempercantik tombol
-   `ListTile`, seperti card, terdiri dari 3 baris teks dan bisa ditambahkan icon
-   `ListView`, menampung `ListTile` dapat dimasukkan widget dengan iterasi

#### Jenis Event pada Flutter
-   `onChanged`
-   `onPressed`
-   `onSaved`

#### Cara Kerja Navigator
`Navigator` mengganti halaman dengan konsep stack, dimana halaman teratas pada stack lah yang akan ditampilkan. Sama seperti strukdur data stack, navigator memiliki method push dan pop untuk mengganti halaman

#### Implementasi tugas 8
1. Membuat widget `Drawer` dan menerapkan routing di dalamnya mengguanakan `Navigator`  
2. Menambahkan 3 file dart, 2 akan digunakan untuk routing yaitu, halaman form dan halaman result, satu lagi akan digunakan untuk mendefinisikan class budget  
3. Membuat halaman form yang berisi input judul dan nominal budget berupa widget `TextFormField`, dan input jenis budget berupa widget `DropDownButton`  
4. Membuat class Budget dan melakukan instansiasi tiap input dimasukkan di halaman form  
5. Menampilkan objek-objek Budget dalam widget `ListTile`, dan dimasukkan ke dalam widget `ListView`melalui iterasi  


## TUGAS 1

#### Stateless Widget dan *Stateful Widget*
Stateless widget adalah widget yang tidak memiliki state atau kondisi, artinya widget tidak akan berubah di kondisi apapun, dari awal inisiasi hingga aplikasi berhenti.
Sedangkan, Stateful widget memiliki state, sehingga widget ini lebih dinamis bisa berubah pada state tertentu.

#### Widget-widget yang Digunakan
-   `MaterialApp`, sebagai komponen utama atau top-level widget  
-   `Scaffold`, sebagai kontainer dasar, yang memiliki beberapa elemen seperti AppBar dan floatingActionButton 
-   `AppBar`, widget yang berada di paling atas, biasa digunakan untuk menaruh menu
-   `Center`, agar widget yang kita buat berada di tengah
-   `Column`, layout untuk menyusun widget di dalammnya secara vertikal
-   `Row`, layout untuk menyusun widget di dalammnya secara horizontal
-   `Text`, untuk membuat teks
-   `TextStyle`, mengatur style dari widget `Text`
-   `Container`, membungkus widget lain untuk mengatur margin dan padding widget tersebut
-   `FloatingActionButton`, menghasilkan tombol berbentuk bulat yang mengambang (selalu berada di depan layar), dapat dimasukkan fungsi pada tombol ketika ditekan
-   `Icon`, membuat icon untuk `FloatingActionButton`

#### setState()
fungsi ini dipanggil ketika ada state yang berubah. Fungsi ini juga akan memberitahu widget mana yang statenya berubah dan akan memuat ulang widget tersebut.

#### Perbedaan antara const dengan final.
Keduanya digunakan untuk menspesifikasikan variabel yang bersifat immutable (tidak dapat berubah), yang membedakan antara const dengan final adalah, variabel const harus didefinisikan terlebih dahulu sebelum dicompile, jika tidak maka akan mengahasilkan error. Sedangkan, variabel final tidak perlu didefinisikan sebelum dicompile, nilai bisa diketahui ketika program sedang di-run.

#### Implementasi tugas 7
1. Mengganti properti floatingActionButton dari `Scaffold` dengan widget `Container`
2. Mengatur padding `Container` dan memasukkan properti child dengan widget `Row`
3. Mengatur alignment dari 'Row' dan membuat properti children berupa 2 `FloatingActionButton`, untuk increment dan decrement
4. Membuat fungsi _incrementCounter() dan _decrementCounter()
5. Membuat variabel teks untuk keterangan counter dan warna untuk warna yang digunakan pada teks
6. Membuat fungsi set_tampilan_counter() untuk mengupdate state teks dan warna
7. Mengatur lokasi `FloatingActionButton` menjadi ke tengah

