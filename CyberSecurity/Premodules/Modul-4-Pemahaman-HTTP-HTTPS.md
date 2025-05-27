<p align="center">
  <img src="https://searchengineland.com/wp-content/seloads/2015/09/google-https1-ss-1920.jpg" />
</p>

# Pemahaman HTTP/HTTPS
Sebelum praktek mencari kerentanan pada aplikasi web, penting untuk mengetahui protokol HTTP/HTTPS. Apa sih HTTP/HTTPS itu?

## A. Protokol HTTP/HTTPS
Singkatnya, HTTP (Hypertext Transfer Protocol) adalah protokol komunikasi yang digunakan untuk mentransfer data antara server dan klien. Protokol ini menggunakan model permintaan (request) dan respons (response). Secara default HTTP menggunakan port 80.

Sedangkan HTTPS (Hypertext Transfer Protocol Secure) adalah versi aman dari HTTP yang mengenkripsi data antara klien dan server menggunakan SSL/TLS. HTPS melindungi data yang dikirim dari serangan seperti man-in-the-middle (MITM) dan memastikan bahwa komunikasi antara klien dan server aman. HTTPS menggunakan port 443 secara default.

### Request dan Response

↪️ Request (Permintaan): Klien (seperti browser) mengirimkan permintaan ke server untuk mendapatkan sumber daya. Permintaan ini berisi informasi tentang tugas yang ingin dilakukan dan informasi tambahan lainnya.

↩️ Response (Respons): Server merespons permintaan dari klien dengan mengirimkan data yang diminta (seperti halaman web) atau informasi terkait status dari permintaan tersebut.

<p align="center">
  <img src="https://media.geeksforgeeks.org/wp-content/uploads/20240529150129/HTTP-.gif" />
</p>

Contoh format HTTP request:
```http
GET /index.html HTTP/1.1
Host: its.ac.id
```

Contoh format HTTP response:
```http
HTTP/1.1 200 OK
Content-Type: text/html
Content-Length: 1234

<html>
  <head><title>Example</title></head>
  <body><h1>Welcome to Example</h1></body>
</html>
```

### Metode HTTP (GET, POST, PUT, DELETE, etc.)

Metode HTTP adalah jenis permintaan yang dapat dilakukan ke server pada sumber daya yang diminta. Beberapa metode yang dapat digunakan adalah:

**GET**: Digunakan untuk meminta data dari server (misalnya halaman web, gambar, json, atau file lainnya). Tidak ada data yang dikirim dalam request body.
```http
GET / HTTP/1.1
Host: its.ac.id
```
**POST**: Digunakan untuk mengirim data ke server, contohnya saat mengisi form atau mengupload file. Data biasanya dikirim dalam request body.
```http
POST /login HTTP/1.1
Host: its.ac.id

username=nabil&password=fansrealbetissejakkecil
```
**PUT**: Digunakan untuk mengupdate sumber daya yang sudah ada di server.
```http
PUT /notes.html HTTP/1.1
Host: its.ac.id
Content-type: text/html
Content-length: 33

<p>Aku sekarang member GDGOC</p>
```
**DELETE**: Digunakan untuk menghapus sumber daya yang ada di server.
```http
DELETE /notes.html HTTP/1.1
Host: its.ac.id
```
**HEAD**: Sama seperti GET, tetapi hanya mengambil header respons.
```http
HEAD / HTTP/1.1
Host: its.ac.id
```
**PATCH**: Digunakan untuk melakukan modifikasi parsial pada sumber daya yang ada.
Misal, terdapat data seperti ini:
```json
{
  "Name": "Adudu",
  "userId": 1,
  "status": "mahasiswa",
  "prodi": "sistem informasi"
}
```
Maka untuk melakukan PATCH:
```http
PATCH /mahasiswa/1 HTTP/1.1
Host: its.ac.id
Content-Type: application/json
Content-Length: 35
Authorization: Bearer ABC123

{
  "prodi": "teknik informatika"
}
```
- OPTIONS: Digunakan untuk meminta server mengembalikan metode HTTP yang diizinkan pada sumber daya.
```http
OPTIONS / HTTP/1.1
Host: its.ac.id
```

### Status Codes (200, 404, 500, etc.)
Status Codes adalah kode tiga digit yang dikirim oleh server dalam respons HTTP untuk menunjukkan status response. Beberapa kategori status kode adalah:

✅ **2xx (Success): Permintaan berhasil diproses oleh server.**
- 200 OK: Permintaan berhasil dan data dikirimkan.
- 201 Created: Permintaan berhasil dan sumber daya baru telah dibuat.

↗️ **3xx (Redirection): Klien perlu melakukan tindakan tambahan untuk menyelesaikan permintaan.**
- 301 Moved Permanently: Sumber daya yang diminta telah dipindahkan secara permanen ke URL baru.
- 302 Found: Sumber daya ditemukan, tetapi hanya sementara di URL yang berbeda.

⚠️ **4xx (Client Error): Ada kesalahan pada sisi klien.**
- 400 Bad Request: Permintaan tidak dapat diproses karena sintaks yang salah.
- 404 Not Found: Sumber daya yang diminta tidak ditemukan di server.
- 403 Forbidden: Akses ke sumber daya yang diminta dilarang.

🚨 **5xx (Server Error): Server gagal memproses permintaan yang valid.**
- 500 Internal Server Error: Terjadi kesalahan di server yang menghalangi pemrosesan permintaan.
- 502 Bad Gateway: Server bertindak sebagai gateway atau proxy dan menerima respons yang tidak valid dari server upstream.

## B. Perbedaan HTTP dan HTTPS
Secara pengertian telah dijelaskan perbedaannya, bagaimana jika secara spesifik?

⚠️ HTTP (Hypertext Transfer Protocol) adalah protokol standar yang digunakan untuk mengirimkan data melalui web, namun tidak mengenkripsi data yang dikirimkan antara server dan klien. Oleh karena itu, komunikasi yang dilakukan dengan HTTP rentan terhadap serangan seperti man-in-the-middle (MITM), di mana pihak ketiga dapat mengakses data yang dikirim.

✅ HTTPS (Hypertext Transfer Protocol Secure) adalah versi aman dari HTTP yang menggunakan enkripsi untuk melindungi data yang dikirimkan antara klien (misalnya browser) dan server. HTTPS mengimplementasikan protokol SSL/TLS untuk mengenkripsi data sehingga data yang ditransmisikan tetap aman dan tidak dapat dibaca oleh pihak ketiga.

<p align="center">
  <img src="https://github.com/user-attachments/assets/31761295-4aef-45e9-8430-802cb8bb10ac" alt="Ilustrasi HTTP vs HTTPS" />
</p>

Perbedaan spesifik:
| Aspek | Perbedaan |
|--------|-----------|
| 🔒 **Keamanan** | HTTPS mengenkripsi data, sementara HTTP tidak. |
| 🔌 **Port** | HTTP menggunakan port 80, sementara HTTPS menggunakan port 443. |
| 🛡️ **SSL/TLS** | HTTPS menggunakan SSL/TLS untuk enkripsi data, sementara HTTP tidak. |
| 🔗 **URL** | HTTPS URL dimulai dengan https:// sedangkan HTTP dimulai dengan http://. |

_Note: SSL (Secure Sockets Layer) dan TLS (Transport Layer Security) adalah dua protokol yang digunakan untuk mengenkripsi komunikasi antara server dan klien di internet. TLS adalah penerus SSL yang lebih aman dan lebih banyak digunakan saat ini._

## C. Header HTTP dan Cookie
Header HTTP adalah bagian dari pesan HTTP yang berisi informasi tambahan tentang permintaan atau respons. Header ini memberikan informasi penting tentang permintaan atau respons yang sedang diproses. Header HTTP terdiri dari dua jenis utama, yaitu **Header Permintaan** (Request Headers) dan **Header Respons** (Response Headers).

<p align="center">
  <img src="https://cdn.tutsplus.com/cdn-cgi/image/width=537/net/uploads/legacy/511_http/http_diagram.png" />
</p>

Apa fungsi header HTTP?
1. Mengirimkan informasi tentang jenis data yang dikirimkan atau diterima.
2. Menyediakan informasi tentang server atau klien.
3. Mengatur pengaturan cache, pengkodean data, dan preferensi lainnya.
4. Mengatur pengelolaan otentikasi dan sesi.

### Jenis-jenis Header HTTP:
#### ↪️ Header Permintaan (Request Headers):
| Bagian | Deskripsi |
|--------|-----------|
| **Accept** | Menyatakan jenis media atau format yang diterima oleh klien (misalnya, `Accept: text/html` atau `Accept: application/json`). |
| **User-Agent** | Memberikan informasi tentang perangkat atau aplikasi klien yang mengirimkan permintaan, seperti jenis browser atau sistem operasi (misalnya, `User-Agent: Mozilla/5.0`). |
| **Host** | Berisi nama domain atau alamat IP server yang diminta oleh klien (misalnya, `Host: its.ac.id`). |
| **Authorization** | Digunakan untuk mengirimkan informasi autentikasi seperti token atau kredensial pengguna (misalnya, `Authorization: Bearer <token>`). |
| **Cookie** | Mengirimkan informasi cookie yang telah diset oleh server di sisi klien dalam permintaan HTTP selanjutnya (misalnya, `Cookie: sessionID=abc123`). |
| **Content-Type** | Menyatakan jenis konten yang dikirimkan dalam tubuh permintaan, seperti `Content-Type: application/json` untuk data JSON atau `Content-Type: multipart/form-data` untuk pengiriman file. |
| **Accept-Encoding** | Menyatakan jenis pengkodean yang dapat diterima oleh klien (misalnya, gzip dan deflate). |

#### ↩️  Header Respons (Response Headers):
| Bagian | Deskripsi |
|--------|-----------|
| **Content-Type** | Menunjukkan tipe konten yang dikirimkan oleh server dalam respons, seperti `Content-Type: text/html` atau `Content-Type: application/json`. |
| **Content-Length** | Menyatakan panjang data yang dikirim dalam tubuh respons (misalnya, `Content-Length: 1234`). |
| **Location** | Digunakan dalam pengalihan (redirect) untuk memberi tahu klien URL baru yang harus digunakan (misalnya, `Location: https://its.ac.id`). |
| **Set-Cookie** | Digunakan oleh server untuk mengatur cookie di sisi klien, yang kemudian akan dikirimkan kembali dalam permintaan berikutnya (misalnya, `Set-Cookie: sessionID=abc123; HttpOnly`). |
| **Cache-Control** | Mengatur cache, seperti apakah respons harus disimpan di cache atau tidak (misalnya, `Cache-Control: no-cache`). |
| **WWW-Authenticate** | Menyediakan informasi tentang metode otentikasi yang diperlukan untuk mengakses sumber daya (misalnya, `WWW-Authenticate: Basic realm="Secure Area"`). |
