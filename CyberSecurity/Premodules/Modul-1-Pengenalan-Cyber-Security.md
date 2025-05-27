# A. Definisi Cyber Security
<img src="https://dicoding-assets.sgp1.cdn.digitaloceanspaces.com/blog/wp-content/uploads/2023/05/Digitalhealth.org_.jpeg" width="700">

Keamanan siber (cyber security) adalah praktik melindungi perangkat digital, jaringan, dan data sensitif dari ancaman siber seperti peretasan, malware, dan serangan phishing. Ini melibatkan berbagai strategi, teknologi, dan praktik terbaik yang dirancang untuk mengamankan komputer, jaringan, dan data dari serangan siber.

## Jenis-jenis Cyber Security

1. Keamanan Jaringan (Network Security)
2. Keamanan Aplikasi (Application Security)
3. Keamanan Informasi (Information Security)
4. Keamanan Cloud (Cloud Security)
5. Keamanan Endpoint (Endpoint Security)
6. Keamanan Operasional (Operational Security)
7. Keamanan IoT (IoT Security)

# B. CIA Triad
Ketika membahas keamanan jaringan, model **CIA Triad** adalah salah satu model terpenting yang dirancang untuk membimbing kebijakan keamanan informasi dalam suatu organisasi.
CIA adalah singkatan dari:
- **Confidentiality (Kerahasiaan)**
- **Integrity (Integritas)**
- **Availability (Ketersediaan)**

<img src="https://media.geeksforgeeks.org/wp-content/cdn-uploads/20210623231627/384.png" width="300">

## 1. Confidentiality (Kerahasiaan)
Kerahasiaan berarti hanya individu atau sistem yang berwenang yang dapat melihat informasi sensitif atau rahasia. Data yang dikirim melalui jaringan tidak boleh diakses oleh individu yang tidak berwenang. Penyerang mungkin mencoba menangkap data menggunakan berbagai alat yang tersedia di internet untuk mendapatkan akses ke informasi Anda.

Cara utama untuk menghindari ini adalah dengan menggunakan teknik enkripsi untuk melindungi data Anda. Dengan demikian, meskipun penyerang mendapatkan akses ke data Anda, mereka tidak dapat mendekripsinya. Beberapa standar enkripsi yang umum digunakan adalah **AES (Advanced Encryption Standard)** dan **DES (Data Encryption Standard)**.

Cara lain untuk melindungi data adalah dengan menggunakan **VPN (Virtual Private Network)** yang membantu data bergerak dengan aman melalui jaringan.

<img src="https://media.geeksforgeeks.org/wp-content/cdn-uploads/20210623231631/559.png" width="300">

## 2. Integrity (Integritas)
Integritas memastikan bahwa data tidak diubah atau dimanipulasi. Korupsi data adalah bentuk kegagalan dalam menjaga integritas data. Untuk memeriksa apakah data telah dimodifikasi atau tidak, kita menggunakan fungsi hash.

Dua jenis fungsi hash yang umum digunakan adalah **SHA (Secure Hash Algorithm)** dan **MD5 (Message Digest 5)**. MD5 menghasilkan hash 128-bit, sedangkan SHA-1 menghasilkan hash 160-bit. Terdapat juga varian SHA lainnya seperti SHA-0, SHA-2, dan SHA-3.

Sebagai contoh, jika **Host A** ingin mengirim data ke **Host B**, maka:
1. Fungsi hash dijalankan pada data yang akan menghasilkan nilai hash arbitrer **H1**.
2. Nilai hash **H1** dilampirkan ke data yang dikirim.
3. Saat **Host B** menerima data, ia menjalankan fungsi hash yang sama dan menghasilkan nilai hash **H2**.
4. Jika **H1 = H2**, maka integritas data tetap terjaga dan kontennya tidak dimodifikasi.

<img src="https://media.geeksforgeeks.org/wp-content/cdn-uploads/20210623231634/646.png" width="300">

## 3. Availability (Ketersediaan)
Ketersediaan berarti bahwa jaringan harus selalu tersedia bagi penggunanya. Ini berlaku baik untuk sistem maupun data. Untuk memastikan ketersediaan, administrator jaringan harus:

- Memelihara perangkat keras secara berkala.
- Melakukan pembaruan sistem secara rutin.
- Memiliki rencana cadangan (failover plan).
- Mencegah kemacetan dalam jaringan (network bottleneck).

Serangan seperti **DoS (Denial-of-Service)** atau **DDoS (Distributed Denial-of-Service)** dapat membuat jaringan tidak tersedia karena sumber daya jaringan terkuras habis. Dampak dari serangan ini dapat sangat merugikan perusahaan dan pengguna yang mengandalkan jaringan sebagai alat bisnis. Oleh karena itu, tindakan pencegahan harus dilakukan untuk menghindari serangan ini.

<img src="https://media.geeksforgeeks.org/wp-content/cdn-uploads/20210623231629/454.png" width="300">


# C. Ancaman & Serangan Siber Utama

Peretas menggunakan teknik canggih untuk menemukan kelemahan dalam sistem, mencuri atau mengubah data, dan menyusup ke jaringan tanpa izin. Berikut adalah ancaman keamanan siber yang paling umum yang menargetkan bisnis, penyimpanan cloud, dan perangkat pribadi:

## 1. Serangan Malware (Virus, Trojan, Rootkit, dan Spyware)
Malware adalah perangkat lunak berbahaya yang dirancang untuk menyusup, menyerang, dan merusak sistem. Ini mencakup trojan (yang tampak seperti perangkat lunak asli tetapi berbahaya), rootkit (yang bersembunyi jauh di dalam sistem untuk mengambil kendali), dan spyware (yang diam-diam mencuri data).

Metode yang digunakan oleh peretas:
- **Payload obfuscation** (menyembunyikan kode berbahaya)
- **Teknik polimorfik** (mengubah kode malware untuk menghindari deteksi)
- **Zero-day exploits** (menyerang kelemahan keamanan yang belum diketahui)

## 2. Serangan Phishing & Spear Phishing
Phishing menggunakan teknik manipulasi untuk mencuri kredensial login, token sesi, dan informasi keuangan. Spear phishing adalah versi yang lebih ditargetkan dengan memanfaatkan **Open-Source Intelligence (OSINT)** untuk membuat pesan palsu yang dipersonalisasi.

Metode yang digunakan:
- **Domain spoofing** (membuat situs web palsu yang terlihat asli)
- **Serangan homograf** (menggunakan karakter mirip dalam URL)
- **Makro berbahaya** (skrip tersembunyi dalam lampiran email)

## 3. Serangan Ransomware (Enkripsi File Kriptografi)
Ransomware mengunci file penting dalam sistem dengan mengenkripsi menggunakan **kriptografi asimetris** (seperti RSA, ECC) atau **enkripsi hibrida** (AES-RSA). Peretas kemudian meminta tebusan dalam bentuk mata uang kripto untuk membuka kunci data.

Metode yang digunakan:
- **Double extortion ransomware** (mencuri data sebelum mengenkripsi dan mengancam menyebarkannya di dark web)

## 4. Serangan Distributed Denial-of-Service (DDoS)
DDoS membanjiri jaringan dengan lalu lintas dalam jumlah besar di berbagai level (volumetrik, protokol, atau aplikasi), menyebabkan server crash dan layanan menjadi tidak tersedia.

Metode yang digunakan:
- **Botnet** (jaringan perangkat yang terinfeksi)
- **Amplifikasi serangan** (seperti DNS reflection dan NTP amplification)
- **HTTP flood requests** (permintaan HTTP dalam jumlah besar untuk membebani situs web)

## 5. Serangan SQL Injection (SQLi) & NoSQL Injection
SQL Injection mengeksploitasi kelemahan dalam kueri aplikasi web dengan menyisipkan kode SQL berbahaya untuk memodifikasi basis data, mencuri kredensial, atau menjalankan perintah administratif.

Metode yang digunakan:
- **NoSQL Injection** (menargetkan database berbasis dokumen seperti MongoDB dan Firebase)
- **Bypass autentikasi** dengan mengubah parameter kueri

## 6. Zero-Day Exploits & Advanced Persistent Threats (APT)
Zero-day exploits mengeksploitasi kelemahan perangkat lunak yang belum diperbaiki oleh pengembang, menjadikannya sangat berbahaya.

Metode yang digunakan dalam APT:
- **Lateral movement** (contoh: pass-the-hash attack untuk menyebar dalam jaringan)
- **Privilege escalation** (mendapatkan hak akses lebih tinggi)
- **Persistence mechanisms** (rootkit dan malware tanpa file untuk tetap tersembunyi)

## 7. Serangan Man-in-the-Middle (MITM)
MITM secara diam-diam mencegat dan memodifikasi data yang dikirimkan antara dua pihak dengan mengeksploitasi enkripsi yang lemah atau saluran komunikasi yang tidak aman.

Metode yang digunakan:
- **SSL stripping** (menghapus enkripsi HTTPS)
- **Rogue access points** (jaringan Wi-Fi palsu)
- **ARP poisoning** (manipulasi lalu lintas jaringan)

## 8. Ancaman Orang Dalam & Penyalahgunaan Hak Istimewa
Ancaman orang dalam terjadi ketika karyawan yang memiliki akses tingkat tinggi mencuri data sensitif, mengubah izin akses, atau memasang backdoor untuk melewati sistem keamanan.

Metode pencegahan:
- **User and Entity Behavior Analytics (UEBA)** (mendeteksi aktivitas mencurigakan)
- **Privilege Access Management (PAM)** (membatasi akses ke data sensitif)
- **Arsitektur Zero-Trust** (memastikan verifikasi terus-menerus)

# Studi Kasus Serangan Siber Terkenal

## 1. Stuxnet (2010)

**Senjata siber pertama yang dirancang untuk merusak infrastruktur fisik**

- **Target:** Fasilitas nuklir Iran
- **Karakteristik:**
  - Menyerang sistem pengendali industri
  - Merusak sentrifugal pengayaan uranium
  - Diduga hasil operasi intelijen AS dan Israel

## 2. WannaCry Ransomware (2017)

**Serangan ransomware global terbesar dalam sejarah**

- **Statistik:**
  - Menginfeksi 200.000 komputer di 150 negara
  - Kerugian global mencapai 4 miliar dolar

- **Karakteristik:**
  - Mengeksploitasi kerentanan sistem Windows
  - Mengganggu sistem kesehatan global
  - Dituduhkan dilakukan oleh Korea Utara

