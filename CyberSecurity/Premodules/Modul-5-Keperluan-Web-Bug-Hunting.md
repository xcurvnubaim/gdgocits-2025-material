# Keperluan Dasar Web Bug Hunting

Web bug hunting akan lebih efisien jika dilengkapi dengan beberapa tools yang mendukung. Seperti Burp Suite yang digunakan untuk melakukan proxy interception, scanning, dan fuzzing pada aplikasi web. Selain itu, juga terdapat Browser Developer Tools untuk menganalisa elemen-elemen halaman web, interaksi API, serta melihat request dan response yang mungkin menyembunyikan potensi celah yang dapat dimanfaatkan. Terakhir, sistem operasi Linux, khususnya Kali Linux yang sangat fleksibel untuk mendukung kegiatan bug hunting dengan berbagai tools yang sudah disediakan.

## A. Burp Suite
<p align="center">
  <img src="https://github.com/user-attachments/assets/36307de6-f7f6-41b6-9be7-d2ebf471a197" alt="Burp Suite" />
</p>

### Pengertian
Burp Suite adalah salah satu alat yang sangat populer, digunakan dalam web bug hunting dan penetration testing untuk mengidentifikasi kerentanan dalam aplikasi web. Burp Suite memiliki beberapa fitur yang paling sering digunakan untuk pengujian aplikasi web. Beberapa fitur tersebut adalah:

🕸️ Proxy: Fitur ini memungkinkan pengguna untuk mengintersep dan memodifikasi lalu lintas HTTP/HTTPS yang dikirim antara browser dan server. Pengguna dapat memodifikasi permintaan dan respons, menganalisis header, dan data lainnya.

⚙️ Intruder: Fitur ini digunakan untuk mengotomatisasi serangan brute force atau testing kerentanan dengan mencoba berbagai input atau parameter untuk mengeksploitasi kelemahan dalam aplikasi.

🔁 Repeater: Alat ini memungkinkan pengguna untuk mengulang dan memodifikasi permintaan HTTP untuk memeriksa respons yang berbeda, sangat membantu memverifikasi dan eksploitasi suatu kerentanan.

### Instalasi
Pada materi cyber security menggunakan Burp Suite Community Edition (versi gratis). Namun sebelum menginstall Burp Suite CE, perhatikan system requirements berikut:
https://portswigger.net/burp/documentation/desktop/getting-started/system-requirements

#### 1. Install Burp Suite Community Edition

[![How to Install Burp Suite Community Edition](https://img.youtube.com/vi/VK3n5xgPB20/0.jpg)](https://www.youtube.com/watch?v=VK3n5xgPB20)

#### 2. Integrate Burp Suite CE with Firefox (Optional) 

[![How to Integrate Burp Suite CE with Firefox](https://img.youtube.com/vi/GjA6_CwLhAk/0.jpg)](https://www.youtube.com/watch?v=GjA6_CwLhAk)

#### 3. Quick Learn about Burp Suite
https://portswigger.net/burp/documentation/desktop/getting-started/intercepting-http-traffic


## B. Browser Developer Tools

<p align="center">
  <img src="https://github.com/user-attachments/assets/d05fec32-ba34-4f57-a5b8-88ece0ccf2ef" alt="Burp Suite" />
</p>

### Pengertian
Browser Developer Tools adalah alat bawaan dalam browser (seperti Chrome, Firefox, atau Edge) yang membantu pengguna untuk menganalisis, mengedit, dan memecahkan masalah di situs web secara langsung. Namun dalam konteks bug hunting, DevTools dapat digunakan untuk mencari dan mendiagnosis bug dalam suatu website.

Keunggulannya untuk bug hunting antara lain:

| Bagian | Deskripsi |
|--------|-----------|
| **Inspect element** | Memungkinkan pengguna untuk memeriksa struktur HTML dan CSS serta mengeditnya secara langsung. |
| **Console** | Menampilkan error JavaScript dan pesan debug, membantu menemukan kesalahan dalam kode. |
| **Network** | Melacak permintaan dan respons jaringan, membantu mendeteksi masalah API atau file yang tidak dimuat. |
| **Performance** | Mengukur waktu pemuatan halaman dan identifikasi potensi masalah kecepatan. |
| **Application** | Memeriksa cookies, penyimpanan lokal, dan cache, yang penting untuk memecahkan masalah sesi atau status aplikasi. |

### Penggunaan
1. Buka Browser, Chrome atau Firefox atau Edge
2. Misalnya sedang mengakses https://its.ac.id, klik `F12` atau `CTRL+SHIFT+C`

## C. Kali Linux

<p align="center">
  <img src="https://github.com/user-attachments/assets/ec05c71b-507f-42d1-b6c8-1003c3442486" alt="Burp Suite" />
</p>

### Pengertian

Kali Linux adalah distribusi Linux yang khusus dirancang untuk pengujian keamanan dan ethical hacking. Dilengkapi dengan berbagai alat untuk mengidentifikasi dan menguji kerentanan di berbagai sistem dan aplikasi, termasuk web.

Keunggulannya untuk web bug hunting:

- Memiliki banyak tools seperti Burp Suite, SQLMap, FFuF dan lain sebagainya yang mendukung kegiatan bug hunting.
- Sistemnya dirancang untuk uji penetrasi dengan berbagai tool untuk scanning, brute-forcing, dan eksploitasi.
- Mendukung pembaruan dan berbagai teknik terbaru dalam keamanan web.

### Instalasi
Terdapat beberapa cara untuk menggunakan Kali Linux, bisa melalui Window Subsystem for Linux (WSL), Vitual Machine, Docker, Native, dan lain sebagainya. Di antara beberapa cara tersebut yang beginner friendly adalah WSL dan Virtual Machine.

**A. How to Install via WSL**

[![How to Install Burp Suite Community Edition](https://img.youtube.com/vi/qt1hFdYaKFY/0.jpg)](https://www.youtube.com/watch?v=qt1hFdYaKFY)

**B. How to Install via Virtual Machine**
1. Install VMWare

[![How to Install Burp Suite Community Edition](https://img.youtube.com/vi/oo2uyWKRqjo/0.jpg)](https://www.youtube.com/watch?v=oo2uyWKRqjo)

2. Install Kali Linux in VMWare

[![How to Install Burp Suite Community Edition](https://img.youtube.com/vi/AlrFxv4PPYM/0.jpg)](https://www.youtube.com/watch?v=AlrFxv4PPYM)
