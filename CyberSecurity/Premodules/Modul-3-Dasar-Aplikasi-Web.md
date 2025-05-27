# Dasar-dasar Aplikasi Web  

Aplikasi web adalah program yang berjalan di browser dan mengandalkan komunikasi antara client (pengguna) dan server (penyedia layanan). Dalam materi ini, kita akan membahas konsep dasar seperti **arsitektur aplikasi web** dan **teknologi web umum**.  

---

## A. Arsitektur Aplikasi Web  

Aplikasi web biasanya dibangun menggunakan **arsitektur client-server**, yang terdiri dari dua bagian utama:  

### **Frontend vs Backend**  
| Bagian | Deskripsi |
|--------|-----------|
| 🎨 **Frontend** | Bagian tampilan yang berinteraksi dengan pengguna. Dibangun dengan **HTML, CSS, dan JavaScript**. |
| ⚙️ **Backend** | Bagian yang mengelola logika bisnis, database, dan keamanan. Menggunakan bahasa seperti **PHP, Python, Node.js, dll.** |

**Contoh:**  
Saat membuka **Instagram**, tampilan profil dan feed adalah **frontend**, sedangkan proses login dan penyimpanan data di server adalah **backend**.

### **Client-Server Model**  
Model ini menjelaskan bagaimana data dikirim dan diterima antara **client (browser)** dan **server (backend)**.  

**Alur sederhana:**  
1. Pengguna mengetik URL di browser (client).  
2. Browser mengirim permintaan ke server melalui **HTTP/HTTPS**.  
3. Server memproses permintaan dan mengirim respons berupa **HTML, JSON, atau data lain**.  
4. Browser menampilkan data kepada pengguna.  

---

## B. Teknologi Web Umum  

Aplikasi web modern dibangun dengan berbagai teknologi. Berikut adalah beberapa komponen utama:

### **Frontend: HTML, CSS, JavaScript**  
| Teknologi | Fungsi |
|-----------|--------|
| 🏗️ **HTML (HyperText Markup Language)** | Struktur dasar halaman web. |
| 🎨 **CSS (Cascading Style Sheets)** | Mengatur tampilan dan desain web. |
| ⚡ **JavaScript** | Menambahkan interaktivitas dan dinamika ke halaman web. |

🔹 **Contoh kode sederhana (HTML + CSS + JavaScript):**  
```html
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contoh Web</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; }
        button { padding: 10px; font-size: 16px; }
    </style>
</head>
<body>
    <h1>Halo, Dunia!</h1>
    <button onclick="greet()">Klik Saya</button>

    <script>
        function greet() {
            alert("Selamat datang di aplikasi web!");
        }
    </script>
</body>
</html>
```

---

### **Backend: Bahasa Pemrograman Server-Side**  
Backend bertugas memproses permintaan dari frontend dan mengelola data. Beberapa bahasa pemrograman backend populer:  

| Bahasa Backend | Framework Populer |
|---------------|------------------|
| 🐘 **PHP** | Laravel, CodeIgniter |
| 🐍 **Python** | Django, Flask |
| ☕ **Java** | Spring Boot |
| 🟢 **Node.js (JavaScript)** | Express.js, NestJS |
| 💎 **Ruby** | Ruby on Rails |

🔹 **Contoh sederhana API backend dengan **Node.js + Express**:  
```javascript
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('Halo dari server!');
});

app.listen(port, () => {
    console.log(`Server berjalan di http://localhost:${port}`);
});
```

---

### **Database: Penyimpanan Data**  
Aplikasi web memerlukan database untuk menyimpan data pengguna, postingan, transaksi, dll.  

**Jenis-jenis database:**  
| Jenis Database | Contoh |
|---------------|--------|
| 📊 **Relasional (SQL)** | MySQL, PostgreSQL, SQLite |
| 📂 **Non-Relasional (NoSQL)** | MongoDB, Firebase, Redis |

🔹 **Contoh Query SQL (MySQL/PostgreSQL):**  
```sql
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO users (username, email, password) VALUES
('gdgocits', 'gdgoc@example.com', 'password123');
```

🔹 **Contoh Query NoSQL (MongoDB):**  
```json
{
    "username": "gdgocits",
    "email": "gdgoc@example.com",
    "password": "password123"
}
```

## C. View Source dalam Analisis Aplikasi Web

### Pengertian View Source
**View Source** adalah fitur pada browser yang memungkinkan pengguna melihat kode sumber HTML dari suatu halaman web. Dengan fitur ini, kita dapat memahami struktur dan elemen yang digunakan dalam pengembangan web.

### Cara Menggunakan View Source
Setiap browser memiliki cara berbeda untuk melihat kode sumber suatu halaman:

#### **Google Chrome / Firefox / Edge**
- Klik kanan pada halaman web → Pilih **View Page Source**
- Atau tekan **Ctrl + U** (Windows/Linux) atau **Cmd + Option + U** (Mac)

#### **Safari (Mac)**
- Aktifkan **Show Develop Menu** di **Preferences**
- Klik **Develop** → **Show Page Source**

### Informasi yang Bisa Diperoleh dari View Source
- **Struktur HTML halaman**
- **Tag meta** (deskripsi, keyword, charset, dll.)
- **URL file eksternal** (CSS, JavaScript, API, dll.)
- **Komentar dalam kode** yang mungkin mengandung informasi penting
- **Hidden form fields** yang bisa menjadi titik eksploitasi dalam bug hunting

### Contoh Penggunaan View Source dalam Analisis Keamanan

#### 🔹 Menemukan Informasi Sensitif
```html
<!-- TODO: Hapus API Key sebelum deploy -->
<script>
    var apiKey = "12345-ABCDE"; 
</script>
```
🎯 **Flag:** `FLAG{API_KEY_LEAKED}`

#### 🔹 Menemukan Endpoint API yang Tidak Diketahui
```html
<script src="https://example.com/api/hidden-endpoint.js"></script>
```
🎯 **Flag:** `FLAG{HIDDEN_API_ENDPOINT}`

#### 🔹 Menemukan Form Tersembunyi yang Bisa Dimanipulasi
```html
<input type="hidden" name="isAdmin" value="false">
```
🎯 **Flag:** `FLAG{PRIVILEGE_ESCALATION}`

### Keterbatasan View Source
- ❌ Tidak menampilkan **kode backend** seperti PHP, Python, atau Node.js
- ❌ Tidak menampilkan **hasil JavaScript yang sudah dimanipulasi di runtime** (gunakan Developer Tools untuk ini)
- ❌ Tidak bisa melihat **request & response HTTP secara real-time**
