
---

# IDE (Integrated Development Environment)
Sebelum kita mulai "ngoding" (istilah keren untuk menulis kode), kita butuh tempat untuk menulis dan menjalankan kode tersebut. Nah, tempat ini disebut **IDE** atau **Integrated Development Environment**. Bayangin IDE sebagai "meja kerja" yang udah dilengkapin sama semua alat yang kamu butuhin buat bikin program.

**Apa itu IDE?**  
Sederhananya, IDE adalah aplikasi yang bantu kamu menulis, menguji, dan menjalankan kode. Biasanya, IDE punya fitur seperti editor kode (tempat ngetik), interpreter atau compiler (buat "nerjemahin" kode ke bahasa komputer), dan kadang juga debugger (buat nyari kesalahan di kode). Dengan IDE, proses ngoding jadi lebih gampang dan terorganisir.

**Google Colab: IDE Pilihan Kita**  
Di modul ini, kita bakal pakai **Google Colab** sebagai IDE-nya. Google Colab itu seperti "bengkel online" yang bisa kamu akses lewat browser. Kamu nggak perlu install apa-apa di laptop atau komputer—cukup buka [colab.research.google.com](https://colab.research.google.com), login pake akun Google, dan langsung bisa mulai ngoding pake Python. Cocok banget buat pemula!

- **Kenapa Google Colab Keren?**
  - Gratis dan gampang diakses, asal ada internet.
  - Nggak perlu repot install Python atau software lain.
  - Bisa kerja bareng temen, kayak edit Google Docs.
  - Udah include banyak pustaka Python yang sering dipake.

Jadi, kalau kamu belum coba, buka aja Google Colab sekarang, klik "New Notebook", dan kita siap mulai petualangan ngoding bareng!

---

# Apa Itu Coding?
Sekarang, kita masuk ke pertanyaan: **coding itu apa sih?** Coding adalah proses nulis instruksi pake bahasa pemrograman supaya komputer bisa ngerti dan melakukan apa yang kita mau. Kode itu ibarat "resep" yang kita kasih ke komputer—misalnya, "cetak tulisan ini" atau "hitung angka ini".

**Analogi Simpel**  
Bayangin kamu lagi nyanyi bareng temen. Kamu bilang, "Ayo, nyanyi lagu ini, mulai dari bait pertama, volume kenceng!" Nah, komputer juga butuh instruksi kayak gitu, tapi dalam bahasa khusus yang dia ngerti. Dalam kasus kita, bahasa itu adalah **Python**.

![Inspirational GIF](https://stemettes.org/zine/wp-content/uploads/sites/3/2021/08/giphy-5.gif)

**Python: Bahasa yang Ramah**  
Python adalah bahasa pemrograman yang terkenal karena gampang dipelajari dan fleksibel. Sintaksnya (cara nulisnya) mirip bahasa Inggris, jadi nggak bikin pusing. Mau bikin apa aja, dari program kecil sampe proyek besar kayak analisis data atau game, Python bisa handle!

---

# Pengenalan Bahasa Python

## Sejarah Python
Python diciptakan oleh Guido van Rossum pada tahun 1989 dan resmi dirilis pada tahun 1991. Nama "Python" sendiri terinspirasi dari acara komedi Inggris "Monty Python's Flying Circus". Guido van Rossum punya visi untuk bikin bahasa pemrograman yang simpel, mudah dibaca, dan gampang ditulis, dengan sintaks yang jelas dan intuitif. Dari situ, Python terus berkembang dan sekarang jadi salah satu bahasa pemrograman paling populer di dunia.

## Fitur Utama Python
Python punya beberapa fitur keren yang bikin dia spesial dibanding bahasa lain. Berikut adalah beberapa di antaranya:

1. **Sintaks yang Mudah Dibaca**  
   Python pake indentasi (spasi di awal baris) buat nentuin blok kode, jadi kode keliatan rapi dan gampang dimengerti, bahkan buat pemula.

2. **Dinamis dan Interpreted**  
   Python itu bahasa yang diinterpretasikan, artinya kode langsung dieksekusi baris per baris tanpa perlu proses kompilasi dulu. Ini bikin proses coding jadi lebih cepet dan interaktif.

3. **Multi-Platform**  
   Python bisa jalan di mana aja—Windows, macOS, Linux—tanpa perlu ubah-ubah kode banyak. Fleksibel banget!

4. **Pustaka yang Luas**  
   Python punya pustaka standar yang kaya banget, plus banyak modul dan paket dari komunitas yang bisa dipake buat macem-macem keperluan, kayak bikin website, analisis data, sampe machine learning.

5. **Komunitas yang Aktif**  
   Python didukung sama komunitas besar yang selalu bantu lewat tutorial, forum, dan sumber daya lain. Jadi, kalo bingung, gampang nyari jawaban!

## Relevansi Python untuk Machine Learning (ML)
Python emang jadi primadona buat machine learning (ML) dan data science. Kenapa? Ini dia alasannya:

1. **Pustaka Machine Learning yang Kuat**  
   Ada banyak pustaka top kayak TensorFlow, PyTorch, Scikit-learn, sama Keras yang bikin proses bikin dan latih model ML jadi jauh lebih gampang.

2. **Mudah Digunain buat Analisis Data**  
   Dengan pustaka kayak Pandas, NumPy, dan Matplotlib, Python jago banget buat ngolah data, nganalisis, sama bikin visualisasi—semua itu langkah penting di ML.

3. **Integrasi yang Oke**  
   Python bisa digabung sama bahasa lain kayak C++ buat ningkatin performa, terutama buat tugas-tugas berat di ML yang butuh komputasi gede.

4. **Dukungan Komunitas**  
   Komunitas ML di Python gede banget! Banyak tutorial, contoh kode, sama proyek open-source yang bisa dipelajarin, jadi cocok buat pemula yang mau mulai belajar ML.

---

# Struktur Program Python
Setiap program Python punya struktur dasar biar kode-nya rapi dan bisa jalan dengan baik. Biar nggak bingung, kita mulai dari contoh sederhana dulu, trus kita bedah bagian-bagiannya.

**Contoh Program: "Hello, World!"**  
Ini adalah program Python paling basic yang bakal nyanyi "Hello, World!" di layar kamu:

```python
# Program sederhana buat nyapa dunia
print("Hello, World!")
```

Kalau kamu ketik ini di Google Colab dan klik tombol "Run" (segitiga kecil di sebelah kiri kode), bakal keluar:

```
Hello, World!
```

Simpel, kan? Nah, sekarang kita lihat struktur program Python secara umum.

**a. Impor Modul**  
Di awal program, kadang kita perlu "manggil" modul atau pustaka yang udah ada. Modul ini kayak kotak alat yang isinya fungsi-fungsi siap pakai. Misalnya, kalo mau hitung matematika rumit, kita bisa impor modul `math`.

Contoh:
```python
import math
print(math.sqrt(16))  # Output: 4.0
```

Tapi di contoh "Hello, World!" tadi, kita nggak perlu impor apa-apa karena fungsi `print()` udah jadi bawaan Python.

**b. Definisi Fungsi**  
Fungsi adalah "resep kecil" dalam program yang bisa kita panggil kapan aja. Kerennya, kita bisa bikin fungsi sendiri. Meskipun di contoh simpel tadi nggak ada fungsi buatan, ini contoh kalo kita mau bikin:

```python
def nyanyi():
    print("Lalala~")
```

Nanti kalo kita panggil `nyanyi()`, dia bakal nyanyi "Lalala~".

**c. Pernyataan Utama**  
Bagian utama program adalah tempat kode mulai "hidup". Di Python, kode yang kita tulis langsung (tanpa masuk fungsi) bakal dijalanin dari atas ke bawah. Di contoh "Hello, World!", pernyataan `print("Hello, World!")` adalah bagian utama.

Kalo programnya lebih gede, biasanya kita pake `if __name__ == "__main__":` biar rapi. Contoh:

```python
if __name__ == "__main__":
    print("Hello, World!")
```

Ini ngasih tahu Python, "Jalankan ini kalo aku yang utama!"

**d. Komentar**  
Komentar adalah catatan kecil yang kita tulis di kode, tapi nggak bakal dijalanin sama Python. Fungsinya buat jelasin kode biar orang lain (atau kita sendiri nanti) ngerti maksudnya. Komentar dimulai pake tanda `#`.

Contoh:
```python
# Ini cuma catatan, nggak ngaruh ke program
print("Hello, World!")  # Nyapa dunia nih
```

Kalo mau bikin komentar panjang, bisa pake tiga kutip:

```python
'''
Ini komentar panjang
Bisa sampe beberapa baris
'''
```

**e. Whitespace (Spasi dan Indentasi)**  
Python suka banget sama kerapihan! Indentasi (spasi di awal baris) itu wajib buat nunjukin blok kode, misalnya di dalam fungsi. Baris kosong juga sering dipake buat pisahin bagian kode biar enak dibaca.

Contoh:
```python
def halo():
    print("Halo!")  # Harus ada spasi di awal
print("Selesai")    # Nggak di dalam fungsi, jadi nggak indent
```

Berikut adalah section **"Keyword dan Identifier"** untuk bahasa Python yang telah disatukan dengan penjelasan tambahan tentang keyword dan identifier, sesuai dengan kerangka yang Anda minta. Semuanya disusun agar lebih ringkas dan terintegrasi.

---

# Keyword dan Identifier

Keyword adalah kata-kata yang telah dipesan (reserved) oleh Python dan memiliki makna khusus dalam sintaks bahasa ini, seperti perintah atau struktur tertentu. Contohnya, `if`, `else`, `for`, dan `print` digunakan untuk mengontrol alur program atau mencetak output, dan tidak boleh digunakan sebagai nama variabel atau fungsi. Berikut adalah daftar beberapa keyword di Python (berdasarkan versi terbaru, seperti Python 3.11):

```
False    await    else     import   pass
None     break    except   in       raise
True     class    finally  is       return
and      continue for      lambda   try
as       def      from     not      while
assert   del      global   or       with
async    elif     if       yield    nonlocal
```

Sementara itu, identifier adalah nama yang diberikan oleh pengguna untuk entitas seperti variabel, fungsi, atau kelas. Misalnya, `nilai`, `umur`, `total_harga`, atau `_kunci` adalah identifier yang valid. Identifier harus mengikuti aturan berikut:
1. **Bukan keyword**: Tidak boleh menggunakan kata seperti `if` atau `for`.
2. **Hanya boleh terdiri dari huruf (a-z, A-Z), angka (0-9), dan underscore (_)**: Contoh, `total1` atau `hasil_akhir`.
3. **Tidak boleh mengandung spasi atau karakter khusus**: `total harga` atau `nama#` tidak valid.
4. **Harus dimulai dengan huruf atau underscore**: `1total` tidak diperbolehkan, tapi `_total` atau `total` boleh.
5. **Case-sensitive**: `Nama` dan `nama` dianggap berbeda.

**Contoh Identifier yang Valid**:
- `umur`
- `total_harga`
- `_kunci`
- `HitungLuas`

**Contoh yang Tidak Valid**:
- `if` (keyword)
- `2nd` (dimulai dengan angka)
- `total harga` (mengandung spasi)

## **Contoh Kode**
- Berikut adalah contoh penggunaan keyword dan identifier dalam Python:
```python
# Contoh keyword: 'if', 'else', dan 'print'
nilai = 80  # 'nilai' adalah identifier
if nilai > 75:  # 'if' adalah keyword
    print("Lulus")  # 'print' adalah keyword
else:  # 'else' adalah keyword
    print("Tidak Lulus")
```

## **Program untuk Diselesaikan**
- Lengkapi bagian kosong agar program berikut dapat berjalan:
```python
# Gunakan identifier untuk menyimpan umur, lalu gunakan keyword 'if' untuk memeriksanya
____ = 17  # Isi dengan identifier yang sesuai
if umur >= 18:
    print("Dewasa")
else:
    print("Belum Dewasa")
```

# Variabel

Variabel adalah tempat untuk menyimpan data atau nilai dalam program, dan nilainya bisa berubah-ubah selama program berjalan. Dalam Python, variabel tidak perlu dideklarasikan dengan tipe data tertentu terlebih dahulu—cukup beri nama dan isi nilainya, lalu Python akan menentukan tipe datanya secara otomatis. Bayangkan variabel seperti gelas yang bisa menampung berbagai jenis cairan. Gelas itu adalah variabelnya, sementara cairan di dalamnya—misalnya air (angka), jus (teks), atau susu (daftar)—adalah data yang disimpan. Program bekerja dengan mengolah data-data ini, dan variabel adalah wadahnya.

## **Contoh Kode**
- Berikut adalah contoh sederhana penggunaan variabel di Python dengan komentar untuk memperjelas:
  ```python
  # Membuat variabel dan mengisinya dengan nilai
  x = 10        # Variabel x menyimpan angka bulat (integer)
  nama = "Budi" # Variabel nama menyimpan teks (string)
  y = -2        # Variabel y menyimpan angka negatif
  print(x)      # Mencetak nilai x: 10
  print(nama)   # Mencetak nilai nama: Budi
  print(y)      # Mencetak nilai y: -2
  ```

## **Program untuk Diselesaikan**
- Lengkapi kode berikut agar variabel `umur` menyimpan nilai 15 dan mencetak pesan "Umur saya 15":
  ```python
  # Isi bagian kosong agar program berjalan dengan benar
  umur = ____
  print("Umur saya", ____)
  ```

## **Contoh Permasalahan**
- Buat program sederhana untuk menyimpan nama dan nilai ujian seseorang dalam dua variabel, lalu cetak pesan seperti "Nama: [nama], Nilai: [nilai]".  
  *Petunjuk: Gunakan variabel untuk menyimpan nama (string) dan nilai (integer), lalu gunakan `print()` untuk menampilkan hasilnya.*

Berikut adalah section lengkap untuk materi "Tipe Data" dalam Python, berdasarkan kerangka yang sudah kita sepakati. Saya akan menggabungkan pendahuluan singkat dan analogi menjadi satu bagian, menambahkan contoh kode yang relevan (termasuk fungsi konversi antar tipe data dan mencetak float dengan digit tertentu), serta menyusun latihan dan permasalahan sesuai kebutuhan Anda.

---

# Tipe Data

"Tipe data adalah cara Python mengelompokkan informasi yang akan disimpan dalam variabel, seperti angka, teks, atau daftar. Bayangkan tipe data seperti laci di lemari: ada laci khusus untuk kaos kaki (integer), laci untuk buku (string), dan laci untuk perhiasan (float). Setiap laci punya aturan sendiri tentang apa yang bisa disimpan dan bagaimana cara menggunakannya. Di bagian ini, kamu akan belajar tipe data dasar di Python—integer, float, string, dan boolean—serta cara mengubahnya dan mengatur tampilan output-nya."

## **Contoh Kode**
Berikut adalah contoh kode yang menunjukkan tipe data dasar, konversi antar tipe data, dan cara mencetak float dengan digit tertentu:
```python
# Tipe data dasar
bilangan_bulat = 10          # Integer
bilangan_desimal = 3.14159   # Float
teks = "Halo"                # String
benar_salah = True           # Boolean

# Konversi antar tipe data
teks_angka = str(bilangan_bulat)      # Mengubah integer ke string
angka_dari_teks = int("15")           # Mengubah string ke integer
desimal_dari_bulat = float(7)         # Mengubah integer ke float

# Mencetak float dengan digit tertentu
print(f"Pi: {bilangan_desimal:.2f}")  # Menampilkan 2 digit setelah koma: 3.14
print("Teks dari angka:", teks_angka) # Output: "10"
print("Angka dari teks:", angka_dari_teks)  # Output: 15
print("Desimal dari bulat:", desimal_dari_bulat)  # Output: 7.0
```

## **Program untuk Diselesaikan**
Isi bagian kosong agar program berjalan dengan benar:
```python
# Konversi string "25" menjadi integer dan tambahkan 10
teks = "25"
hasil = ____(teks) + 10
print("Hasil:", hasil)  # Harus mencetak "Hasil: 35"

# Cetak float 5.6789 dengan 1 digit setelah koma
angka = 5.6789
print(f"Angka: {angka:____}")  # Harus mencetak "Angka: 5.7"
```
*Jawaban yang diharapkan: `int` untuk konversi dan `.1f` untuk format float.*

## **Contoh Permasalahan**
"Buat program yang meminta pengguna memasukkan dua angka (satu integer dan satu float), lalu ubah integer menjadi float, tambahkan keduanya, dan cetak hasilnya dengan 3 digit setelah koma."  
*Petunjuk: Gunakan `input()`, `int()`, `float()`, dan format `:.3f`.*

---

# Input dan Output

"Di bagian ini, kamu akan belajar cara membuat program yang interaktif dengan menerima masukan dari pengguna (input) dan menampilkan hasilnya (output). Ini penting karena program sering kali perlu berkomunikasi dengan kita. Bayangkan input seperti seseorang yang menulis pesanan di buku catatanmu, dan output seperti kamu membacakan pesanan itu kembali ke mereka."

## **Contoh Kode**
- Berikut adalah contoh sederhana penggunaan `input()` dan `print()` di Python:
```python
# Menerima input nama dari pengguna
nama = input("Masukkan nama kamu: ")
# Menampilkan output dengan nama
print("Halo,", nama, "selamat datang!")
```
- *Penjelasan*: Baris pertama meminta pengguna memasukkan nama, lalu menyimpannya di variabel `nama`. Baris kedua mencetak pesan sambutan dengan nama tersebut.

## **Program untuk Diselesaikan**
- Lengkapi kode berikut agar program meminta usia pengguna dan mencetaknya kembali:
```python
# Isi bagian kosong agar program berfungsi
usia = ____("Masukkan usia kamu: ")
print("Usia kamu adalah", usia)
```
- *Jawaban yang diharapkan*: `usia = input("Masukkan usia kamu: ")`

## **Contoh Permasalahan**
- "Buat program yang meminta pengguna memasukkan dua angka, lalu menampilkan jumlah dari kedua angka tersebut."
- *Petunjuk*: Gunakan `input()` untuk mengambil dua angka, ubah input menjadi tipe data integer dengan `int()`, lalu cetak hasil penjumlahannya dengan `print()`.

---

# Operator

Di bagian ini, kamu akan belajar tentang operator, yaitu alat-alat dasar dalam Python untuk memanipulasi data, seperti menjumlahkan angka atau membandingkan nilai. Bayangkan operator seperti alat-alat di kotak perkakas: ada palu untuk memaku (operator assignment), kalkulator untuk menghitung (operator aritmatika), atau bahkan lampu sorot untuk memeriksa sesuatu (operator relasional). Operator ini penting karena membantu kita mengolah data dengan cepat dan mudah dalam program.

---

## **Jenis-Jenis Operator dalam Python**

### **1. Operator Aritmatika**
Operator ini digunakan untuk melakukan operasi matematika seperti penjumlahan, pengurangan, perkalian, dan lainnya.

| Operator | Kegunaan        | Contoh      | Hasil |
|----------|----------------|------------|-------|
| `+`      | Penjumlahan    | `5 + 3`    | `8`   |
| `-`      | Pengurangan    | `10 - 4`   | `6`   |
| `*`      | Perkalian      | `6 * 2`    | `12`  |
| `/`      | Pembagian      | `15 / 3`   | `5.0` |
| `//`     | Pembagian Bulat| `17 // 2`  | `8`   |
| `%`      | Modulo (sisa bagi) | `17 % 2`  | `1`   |
| `**`     | Pangkat        | `2 ** 3`   | `8`   |

### **2. Operator Relasional (Perbandingan)**
Operator ini digunakan untuk membandingkan dua nilai dan mengembalikan `True` atau `False`.

| Operator | Kegunaan        | Contoh     | Hasil |
|----------|----------------|-----------|-------|
| `==`     | Sama dengan    | `5 == 5`  | `True` |
| `!=`     | Tidak sama dengan | `5 != 3` | `True` |
| `>`      | Lebih besar dari | `7 > 3`  | `True` |
| `<`      | Lebih kecil dari | `2 < 5`  | `True` |
| `>=`     | Lebih besar atau sama dengan | `8 >= 8` | `True` |
| `<=`     | Lebih kecil atau sama dengan | `6 <= 10` | `True` |

### **3. Operator Logika**
Operator ini digunakan untuk menghubungkan beberapa kondisi dalam pernyataan logika.

| Operator | Kegunaan | Contoh | Hasil |
|----------|---------|--------|-------|
| `and`    | Bernilai `True` jika kedua kondisi bernilai `True` | `(5 > 3) and (4 < 10)` | `True` |
| `or`     | Bernilai `True` jika salah satu kondisi bernilai `True` | `(5 > 3) or (4 > 10)` | `True` |
| `not`    | Membalik nilai kondisi | `not (5 > 3)` | `False` |

---

## **Contoh Kode**
Berikut adalah contoh penggunaan berbagai jenis operator dalam Python:
```python
# Operator Assignment
x = 10  # Menyimpan nilai 10 ke variabel x
x += 5  # Menambah x dengan 5, sekarang x = 15

# Operator Aritmatika
a = 7 + 3  # Penjumlahan, hasilnya 10
b = 10 - 4  # Pengurangan, hasilnya 6
c = 5 * 2  # Perkalian, hasilnya 10
d = 15 / 3  # Pembagian, hasilnya 5.0
e = 17 % 2  # Modulo, sisa bagi, hasilnya 1

# Operator Increment (tidak ada ++ di Python, gunakan +=)
x = 5
x += 1  # Increment, sekarang x = 6

# Operator Relasional
print(5 > 3)  # True, karena 5 lebih besar dari 3
print(4 == 4)  # True, karena 4 sama dengan 4

# Operator Logika
print(5 > 3 and 4 < 10)  # True, karena kedua kondisi benar
```

---

## **Program untuk Diselesaikan**
Lengkapi bagian kosong agar program berikut menghitung hasil perhitungan sederhana:
```python
# Hitung total setelah diskon 20%
harga = 1000
diskon = ____  # Isi dengan perhitungan diskon (20% dari harga)
total = harga - diskon
print("Total setelah diskon:", total)
```
*Jawaban yang diharapkan: `diskon = harga * 0.2`, output: `Total setelah diskon: 800`.*

---

## **Contoh Permasalahan**
"Buat program yang memeriksa apakah sebuah angka lebih besar dari 10 DAN genap. Jika ya, cetak 'Angka memenuhi syarat', jika tidak, cetak 'Angka tidak memenuhi syarat'."  
*Petunjuk: Gunakan operator relasional (`>`), modulo (`%`), dan logika (`and`).*

--- 

# Control Flow dalam Python

Control flow dalam Python digunakan untuk mengatur alur eksekusi program berdasarkan kondisi atau perulangan tertentu. Dalam penjelasan ini, kita akan membahas penggunaan `if`, `elif`, `else` untuk pengkondisian, perulangan dengan `for` dan `while`, serta penjelasan rinci tentang fungsi dengan analogi yang mudah dipahami.

---

## 1. If, Elif, Else

Struktur `if`, `elif`, dan `else` memungkinkan program untuk membuat keputusan berdasarkan kondisi tertentu.

- **`if`**: Mengevaluasi kondisi; jika benar (`True`), blok kode di dalamnya dijalankan.
- **`elif`**: Memeriksa kondisi tambahan jika `if` sebelumnya salah (`False`).
- **`else`**: Menjalankan blok kode jika semua kondisi sebelumnya salah.

### Contoh Kode
```python
x = 10
if x > 5:
    print("x lebih besar dari 5")
elif x == 5:
    print("x sama dengan 5")
else:
    print("x kurang dari 5")
```
**Output**: `"x lebih besar dari 5"`  
Penjelasan: Karena `x = 10` lebih besar dari 5, hanya blok `if` yang dijalankan.

### Program untuk Diselesaikan
Lengkapi kode berikut agar mencetak "Lulus" jika nilai >= 70 dan "Tidak Lulus" jika kurang dari 70.

```python
nilai = __(input("Masukkan nilai: "))
if nilai __ 70:
    print("Lulus")
___:
    print("Tidak Lulus")
```
**Penjelasan**: Kondisi `nilai >= 70` memeriksa apakah input pengguna lebih besar atau sama dengan 70. Jika ya, outputnya "Lulus"; jika tidak, "Tidak Lulus".

### Contoh Permasalahan
"Buat program yang meminta pengguna memasukkan usia. Jika usia lebih dari atau sama dengan 18, cetak 'Dewasa', jika tidak cetak 'Anak-anak'."

#### Solusi
```python
usia = int(input("Masukkan usia: "))
if usia >= 18:
    print("Dewasa")
else:
    print("Anak-anak")
```
**Penjelasan**: Program meminta input usia, lalu menggunakan `if` untuk membandingkan dengan 18. Jika `usia >= 18`, outputnya "Dewasa"; jika tidak, "Anak-anak".

---

## 2. Perulangan

Perulangan memungkinkan eksekusi berulang atas blok kode. Python menyediakan dua jenis utama: `for` dan `while`.

### For Loop
`for` digunakan untuk mengulang sebanyak elemen dalam urutan (misalnya, `range`).

#### Contoh Kode
```python
for i in range(5):
    print(i)  # Output: 0, 1, 2, 3, 4
```
**Penjelasan**: `range(5)` menghasilkan urutan dari 0 hingga 4, dan setiap nilai dicetak.

### While Loop
`while` mengulang blok kode selama kondisi tertentu benar.

#### Contoh Kode
```python
x = 0
while x < 5:
    print(x)
    x += 1
```
**Output**: `0, 1, 2, 3, 4`  
**Penjelasan**: Selama `x < 5`, nilai `x` dicetak dan ditambah 1. Ketika `x` mencapai 5, perulangan berhenti.

### Program untuk Diselesaikan
Lengkapi kode berikut agar mencetak angka 1 sampai 10 tetapi berhenti ketika mencapai angka 7.

```python
for i in ___(1, __):
    if i == 7:
        ___
    print(i)
```
**Output**: `1, 2, 3, 4, 5, 6`  
**Penjelasan**: `break` menghentikan perulangan saat `i == 7`, sehingga angka 7 dan setelahnya tidak dicetak.

### Contoh Permasalahan
"Buat program yang mencetak angka dari 1 hingga 10, tetapi melewatkan angka 5."

#### Solusi
```python
for i in range(1, 11):
    if i == 5:
        continue
    print(i)
```
**Output**: `1, 2, 3, 4, 6, 7, 8, 9, 10`  
**Penjelasan**: `continue` melewati iterasi saat `i == 5`, sehingga 5 tidak dicetak, tetapi perulangan berlanjut.

---

# **Fungsi**

Fungsi dalam pemrograman adalah cara untuk menyusun kode agar lebih teratur, modular, dan dapat digunakan kembali. Bayangkan fungsi sebagai resep dalam memasak. Ketika Anda ingin membuat kue, Anda mengikuti resep yang berisi langkah-langkah spesifik untuk mencampur bahan dan menghasilkan kue yang lezat. Dalam pemrograman, fungsi adalah "resep" serupa: sekumpulan instruksi yang melakukan tugas tertentu, yang bisa Anda panggil kapan saja dengan memberikan "bahan" (input) yang diperlukan.

```python
def tambah(a, b):
    return a + b

hasil = tambah(3, 4)
print(hasil)  # Output: 7
```
Dalam kode ini, fungsi tambah adalah resep untuk menjumlahkan dua angka. Anda memberikan dua bahan, yaitu a dan b, lalu fungsi ini mengembalikan hasil penjumlahannya. Ketika Anda memanggil tambah(3, 4), fungsi mengolah input tersebut dan menghasilkan 7, seperti kue yang jadi setelah Anda mencampur tepung dan gula sesuai resep.

## **Program untuk Diselesaikan**

Lengkapi kode berikut agar dapat mengembalikan kuadrat dari suatu angka.

```python
def kuadrat(x):
    ____  # Lengkapi kode ini

print(kuadrat(4))
```

*Jawaban yang diharapkan: **************`return x ** 2`**************, output: **************`16`**************.*

## **Contoh Permasalahan**

"Buat fungsi bernama `pangkat` yang menerima dua parameter `x` dan `y`, lalu mengembalikan hasil `x` pangkat `y`."

*Petunjuk: Gunakan **********`return x ** y`********** dalam fungsi.*

---

# Struktur Data dalam Python

Python memiliki beberapa struktur data bawaan yang umum digunakan:

## **1. List**

List adalah struktur data yang dapat menyimpan banyak nilai dalam satu variabel dan dapat diubah (mutable).

```python
my_list = [1, 2, 3, 4, 5]
my_list.append(6)  # Menambah elemen ke dalam list
print(my_list[2])  # Mengakses elemen indeks ke-2
```

### **Program untuk Diselesaikan**

Lengkapi kode berikut agar dapat menampilkan elemen terakhir dari list:

```python
my_list = [10, 20, 30, 40, 50]
last_element = ____  # Lengkapi kode ini
print(last_element)
```

*Jawaban yang diharapkan: ****`last_element = my_list[-1]`****, output: ****`50`****.*

---

## **2. Dictionary (Dict)**

Dictionary adalah struktur data yang menyimpan data dalam format key-value.

```python
my_dict = {"nama": "Alice", "umur": 25}
print(my_dict["nama"])  # Mengakses nilai dengan kunci "nama"
```

### **Contoh Permasalahan**

"Buat program yang meminta input nama dan umur dari pengguna, lalu menyimpannya dalam dictionary dan mencetaknya."

*Petunjuk: Gunakan ****`input()`**** untuk mengambil input dari pengguna.*

```python
user_data = {}
user_data["nama"] = input("Masukkan nama: ")
user_data["umur"] = int(input("Masukkan umur: "))
print(user_data)
```

---

## **3. Tuple**

Tuple mirip dengan list, tetapi bersifat immutable (tidak bisa diubah setelah dideklarasikan).

```python
my_tuple = (1, 2, 3)
print(my_tuple[1])  # Mengakses elemen indeks ke-1
```

---

## **4. Set**

Set adalah kumpulan elemen unik tanpa indeks.

```python
my_set = {1, 2, 3, 3, 2}
print(my_set)  # Output: {1, 2, 3}
```

---

## **5. Slicing**

Slicing digunakan untuk mengambil sebagian elemen dari list, tuple, atau string.

```python
my_list = [10, 20, 30, 40, 50]
print(my_list[1:4])  # Output: [20, 30, 40]
```

### **Program untuk Diselesaikan**

Lengkapi kode berikut agar dapat mencetak tiga elemen terakhir dari `my_list`:

```python
my_list = [5, 10, 15, 20, 25, 30]
last_three = ____  # Lengkapi kode ini
print(last_three)
```

*Jawaban yang diharapkan: ****`last_three = my_list[-3:]`****, output: ****`[20, 25, 30]`****.*

---

# **Class dan Method dalam Python**

Python mendukung pemrograman berorientasi objek (OOP). Class adalah blueprint untuk membuat objek.

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def greet(self):
        print(f"Hello, my name is {self.name} and I am {self.age} years old.")

p1 = Person("Alice", 25)
p1.greet()  # Output: Hello, my name is Alice and I am 25 years old.
```

## **Contoh Permasalahan**

"Buat class `Mahasiswa` dengan atribut `nama` dan `jurusan`. Tambahkan method `info()` yang mencetak informasi mahasiswa."

*Petunjuk: Gunakan ****`__init__`**** untuk mendefinisikan atribut dan method untuk mencetak informasi.*

Ya, Anda benar. Pembahasan di atas lebih fokus pada penggunaan *class* daripada konsep Object-Oriented Programming (OOP) secara menyeluruh. OOP mencakup prinsip-prinsip seperti *encapsulation*, *inheritance*, *polymorphism*, dan *abstraction*, yang tidak dibahas secara mendalam di sini. Contoh yang diberikan lebih menekankan pada pembuatan dan penggunaan *class* sederhana.

Berikut adalah versi yang diperbarui dengan judul dan penjelasan yang lebih relevan:

---

# **Dasar Penggunaan Class dan Relevansinya di Machine Learning**

Penggunaan *class* sangat penting dalam Machine Learning karena membantu mengorganisir kode secara modular dan reusable. Framework seperti TensorFlow dan PyTorch memanfaatkan konsep *class* untuk mengimplementasikan model, lapisan (*layers*), dan fungsi lainnya.

**Contoh implementasi sederhana *class* dalam ML:**

```python
class Model:
    def __init__(self, name):
        self.name = name
    
    def train(self):
        print(f"Training model {self.name}...")

ml_model = Model("Neural Network")
ml_model.train()  # Output: Training model Neural Network...
```

**Program untuk Diselesaikan**

Lengkapi kode berikut untuk menambahkan method `predict()` yang mencetak "Model sedang memprediksi...".

```python
class Model:
    def __init__(self, name):
        self.name = name
    
    def train(self):
        print(f"Training model {self.name}...")
    
    def predict(self):
        print("Model sedang memprediksi...")  # Kode yang sudah dilengkapi

ml_model = Model("Decision Tree")
ml_model.predict()  # Output: Model sedang memprediksi...
```

**Penjelasan**

Penggunaan *class* mempermudah pengelolaan data dan model dalam skala besar, yang sangat berguna dalam pengembangan sistem Machine Learning. Dengan *class*, Anda dapat mengelompokkan fungsi seperti pelatihan (*training*) dan prediksi (*prediction*) dalam satu entitas yang terorganisir.

# HandsON
https://colab.research.google.com/drive/1lmDbH940JZas7FoRSoSc-CcQmZyaMwqU#scrollTo=CjZaPzI2v9uH
