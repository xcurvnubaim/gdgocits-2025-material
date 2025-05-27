# A. Terminologi
- **Vulnerability (Kerentanan):** Kelemahan dalam sistem yang dapat dieksploitasi oleh penyerang.
- **Threat (Ancaman):** Potensi kejadian yang dapat membahayakan sistem atau data.
- **Risk (Risiko):** Kombinasi ancaman dan kerentanan yang dapat menyebabkan dampak negatif.
- **Exploit (Eksploitasi):** Teknik yang digunakan peretas untuk memanfaatkan kerentanan.
- **Attack Vector (Vektor Serangan):** Metode yang digunakan penyerang untuk masuk ke sistem.
- **Mitigation (Mitigasi):** Langkah-langkah untuk mengurangi risiko serangan.
- **Zero-Day Vulnerability:** Kerentanan yang belum diketahui oleh vendor dan dapat dieksploitasi.

# B. Model Keamanan Informasi

### Model CIA (Confidentiality, Integrity, Availability)
<img src="https://student-activity.binus.ac.id/csc/wp-content/uploads/sites/37/2022/08/CIA-TRIAD.png" width="400">

- **Confidentiality (Kerahasiaan):** Melindungi informasi dari akses yang tidak sah.
- **Integrity (Integritas):** Menjamin bahwa data tidak diubah tanpa izin.
- **Availability (Ketersediaan):** Memastikan sistem dan data selalu tersedia bagi pengguna yang sah.

### Model AAA (Authentication, Authorization, Accounting)
<img src="https://www.colourbox.com/preview/9284000-acronym-of-aaa-authentication-authorization-accounting.jpg" width="400">

- **Authentication (Otentikasi):** Memverifikasi identitas pengguna sebelum memberikan akses.
- **Authorization (Otorisasi):** Menentukan hak akses pengguna setelah otentikasi.
- **Accounting (Akuntabilitas):** Mencatat aktivitas pengguna untuk audit dan keamanan.

# C. Protokol Keamanan
![ssltls](https://www.hostinger.co.id/tutorial/wp-content/uploads/sites/11/2021/11/Cara-kerja-SSL.png)
### SSL/TLS
- **SSL (Secure Sockets Layer)** dan **TLS (Transport Layer Security)** adalah protokol enkripsi yang melindungi komunikasi data di internet.
- TLS merupakan versi yang lebih aman dan merupakan standar pengganti SSL.

### HTTPS vs HTTP
- **HTTP (Hypertext Transfer Protocol):** Protokol komunikasi standar untuk mengakses web.
- **HTTPS (HTTP Secure):** Versi aman HTTP yang menggunakan TLS untuk mengenkripsi data.
- HTTPS lebih aman karena melindungi data dari serangan Man-in-the-Middle (MITM).

# D. Standar dan Kerangka Kerja Keamanan

### OWASP Top Ten
![owasp](https://owasp.org/www-project-top-ten/assets/images/mapping.png)
OWASP (Open Web Application Security Project) merilis daftar sepuluh ancaman keamanan aplikasi web yang paling umum:
1. A01:2021 - Broken Access Control
Broken Access Control naik ke posisi pertama. 94% aplikasi diuji memiliki beberapa bentuk kelemahan kontrol akses. Sebanyak 34 Common Weakness Enumerations (CWEs) yang dipetakan ke kategori ini memiliki lebih banyak kejadian dibanding kategori lainnya.
2. A02:2021 - Cryptographic Failures
Sebelumnya dikenal sebagai Sensitive Data Exposure, kategori ini bergeser ke posisi kedua. Fokusnya pada kegagalan terkait kriptografi yang sering menyebabkan kebocoran data sensitif atau kompromi sistem.
3. A03:2021 - Injection
Injection turun ke posisi ketiga. Sebanyak 94% aplikasi diuji terhadap bentuk serangan ini, dan 33 CWEs yang dipetakan ke kategori ini memiliki jumlah kejadian tertinggi kedua. Cross-site Scripting (XSS) kini menjadi bagian dari kategori ini.
4. A04:2021 - Insecure Design
Kategori baru yang berfokus pada risiko akibat kesalahan desain. Meningkatkan kesadaran akan threat modeling, pola desain yang aman, dan arsitektur referensi menjadi prioritas untuk mengurangi risiko ini.
5. A05:2021 - Security Misconfiguration
Naik dari posisi keenam. Sebanyak 90% aplikasi diuji memiliki bentuk kesalahan konfigurasi. Dengan semakin banyaknya perangkat lunak yang dapat dikonfigurasi, masalah ini semakin sering muncul. XML External Entities (XXE) kini termasuk dalam kategori ini.
6. A06:2021 - Vulnerable and Outdated Components
Sebelumnya dikenal sebagai Using Components with Known Vulnerabilities. Naik dari posisi kesembilan dan merupakan isu yang sulit diuji serta dinilai risikonya. Kategori ini tidak memiliki Common Vulnerability and Exposures (CVEs) yang dipetakan ke CWEs yang disertakan.
7. A07:2021 - Identification and Authentication Failures
Dulu bernama Broken Authentication, kini turun dari posisi kedua. CWEs dalam kategori ini kini lebih berfokus pada kegagalan dalam proses identifikasi, bukan hanya otentikasi.
8. A08:2021 - Software and Data Integrity Failures
Kategori baru yang berfokus pada asumsi yang salah terkait pembaruan perangkat lunak, data kritis, dan pipeline CI/CD tanpa verifikasi integritas. Memiliki dampak tinggi dalam CVE/CVSS dan kini mencakup Insecure Deserialization dari OWASP 2017.
9. A09:2021 - Security Logging and Monitoring Failures
Sebelumnya dikenal sebagai Insufficient Logging & Monitoring. Naik dari posisi kesepuluh berdasarkan survei industri. Kategori ini meluas mencakup berbagai bentuk kegagalan yang berdampak pada visibilitas, peringatan insiden, dan forensik.
10. A10:2021 - Server-Side Request Forgery (SSRF)
Kategori ini baru ditambahkan berdasarkan survei komunitas OWASP. Insiden ini memiliki tingkat kejadian rendah, namun cakupan pengujiannya cukup tinggi dengan potensi eksploitasi dan dampak yang signifikan.
