<div align="center">

<img src="https://images.unsplash.com/photo-1519681393784-d120267933ba" alt="Mountain Banner" width="100%" height="260" style="object-fit: cover;" />

<br><br>

# 🏔️ Mountain Event Organizer App

**Aplikasi Mobile untuk Pemesanan & Manajemen Ekspedisi Gunung**  
Dibangun menggunakan Flutter dengan desain modern dan pengalaman pengguna yang optimal.

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Material 3](https://img.shields.io/badge/Material%203-757575?style=for-the-badge&logo=material-design&logoColor=white)](https://m3.material.io/)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](./LICENSE)

<p>
  <a href="#-deskripsi">Deskripsi</a> •
  <a href="#-fitur">Fitur</a> •
  <a href="#-tangkapan-layar">Screenshot</a> •
  <a href="#-teknologi">Teknologi</a> •
  <a href="#-cara-menjalankan">Instalasi</a>
</p>

</div>

---

## 📝 Deskripsi

**Mountain Event Organizer** adalah aplikasi mobile yang dirancang untuk membantu pengguna menemukan, memesan, dan mengelola paket pendakian gunung seperti **Open Trip**, **Private Tour**, dan **Ekspedisi Khusus**.

Aplikasi ini dibangun menggunakan **Flutter** dengan pendekatan **Material Design 3**, menghadirkan antarmuka yang modern, responsif, serta pengalaman navigasi yang mulus di berbagai perangkat Android.

---

## ✨ Fitur

- 🔐 **Autentikasi Pengguna**  
  Antarmuka Login dan Register yang sederhana, bersih, dan responsif.

- 📊 **Dashboard Interaktif**  
  Menampilkan daftar event berdasarkan waktu (Now & Soon).

- 🎫 **Sistem Booking**  
  Pemilihan kategori trip dan tipe tiket (Regular, VIP, VVIP).

- 🔍 **Pencarian Real-time**  
  Pencarian event dengan hasil dinamis dan tampilan *empty state*.

- 🖼️ **Galeri Interaktif**  
  Slider gambar pada halaman detail event.

- ❤️ **Wishlist / Bookmark**  
  Menyimpan event favorit untuk diakses kembali.

---

## 📸 Tangkapan Layar

<div align="center">

| Login & Auth | Dashboard | Booking |
|:--:|:--:|:--:|
| <img src="screenshots/login.png" width="220" /> | <img src="screenshots/dashboard.png" width="220" /> | <img src="screenshots/booking.png" width="220" /> |

| Search | Empty State | Detail Event |
|:--:|:--:|:--:|
| <img src="screenshots/search.png" width="220" /> | <img src="screenshots/not_found.png" width="220" /> | <img src="screenshots/detail.png" width="220" /> |

</div>

---

## 🛠️ Teknologi

- **Framework** : Flutter (SDK ≥ 3.0)
- **Bahasa** : Dart
- **UI Design** : Material Design 3
- **Navigasi** : Navigator (Native Flutter)
- **Assets** : Network Image (Unsplash)

---

## 📂 Struktur Proyek

```bash
lib/
├── auth_screens.dart       # UI Login & Register
├── booking_screen.dart    # Kategori & Tipe Tiket
├── dashboard_screen.dart  # Halaman Dashboard
├── data_model.dart        # Model & Dummy Data
├── detail_screen.dart     # Detail Event & Image Slider
├── main.dart              # Entry Point Aplikasi
├── main_layout.dart       # Bottom Navigation Controller
└── search_screen.dart     # Pencarian & Filter Data
```
---

## 🚀 Cara Menjalankan

### 1. Prasyarat

* Flutter SDK
* Android Studio atau Visual Studio Code
* Emulator atau perangkat Android

### 2. Clone Repository

```bash
git clone https://github.com/username/mountain-event-app.git
cd mountain-event-app
```

### 3. Install Dependency

```bash
flutter pub get
```

### 4. Jalankan Aplikasi

```bash
flutter run
```

---

## 🤝 Kontribusi

Kontribusi terbuka untuk siapa pun.
Silakan lakukan langkah berikut:

1. Fork repository
2. Buat branch baru (`git checkout -b fitur-baru`)
3. Commit perubahan (`git commit -m "Menambahkan fitur baru"`)
4. Push ke branch (`git push origin fitur-baru`)
5. Buat Pull Request

---

<div align="center">

**Dikembangkan oleh Muhammad Rafli Nurfathan**
Jika proyek ini bermanfaat, silakan berikan ⭐ pada repository ini.

</div>
```

---

### Kenapa README ini terlihat profesional?

* Struktur jelas dan konsisten
* Bahasa formal & cocok untuk portofolio
* Siap untuk **GitHub, tugas kuliah, capstone, atau showcase Bangkit**
* Mudah dibaca oleh recruiter maupun dosen

Kalau mau, saya bisa:

* Menyesuaikan README untuk **tugas kuliah**
* Mengubah ke **full English**
* Menambahkan **arsitektur aplikasi / clean architecture**
* Membuat versi **README untuk UI/UX showcase**

Tinggal bilang 👍
