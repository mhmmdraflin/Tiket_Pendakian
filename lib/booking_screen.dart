import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  // Data Dummy untuk Card Booking (Sesuai Wireframe)
  // Data Dummy untuk Card Booking (Tema Gunung)
  final List<Map<String, dynamic>> bookingEvents = const [
    {
      'title': 'Open Trip Semeru',
      'features': ['Include Guide', 'Porter Team', 'Makan 7x', 'Tenda & Alat'],
      'time': '07.00 AM',
      'avatars': [Icons.terrain, Icons.directions_walk]
    },
    {
      'title': 'Bromo Sunrise Tour',
      'features': ['Jeep 4x4', 'Tiket Masuk', 'Dokumentasi', 'Sarapan'],
      'time': '02.30 AM',
      'avatars': [Icons.camera_alt, Icons.sunny]
    },
    {
      'title': 'Ekspedisi Rinjani',
      'features': ['Lintas Senaru', 'Simaksi', 'Matras & SB', 'P3K Kit'],
      'time': '08.00 AM',
      'avatars': [Icons.map, Icons.flag]
    },
    {
      'title': 'Camping Gunung Prau',
      'features': ['Ramah Pemula', 'Golden Sunrise', 'Api Unggun', 'Transport'],
      'time': '01.00 PM',
      'avatars': [Icons.nights_stay, Icons.local_fire_department]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- 1. HEADER SECTION (Sesuai Wireframe) ---
                // Hiasan bar abu-abu di atas
                Container(
                  width: double.infinity,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 30),

                // Judul Besar
                const Text(
                  "Booking Event",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w300, color: Colors.black87),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Pilih event yang tersedia di bawah ini",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 40),

                // --- 2. GRID CARD SECTION ---
                GridView.builder(
                  shrinkWrap: true, // Agar grid tidak scroll sendiri (ikut induknya)
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 Kolom
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.7, // Rasio tinggi:lebar kartu (agar memanjang ke bawah)
                  ),
                  itemCount: bookingEvents.length,
                  itemBuilder: (context, index) {
                    final event = bookingEvents[index];
                    return _buildBookingCard(context, event);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      // Tombol bulat di pojok kanan bawah (Sesuai wireframe)
      floatingActionButton: Container(
        height: 60, width: 60,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  // Widget untuk Card Booking
  Widget _buildBookingCard(BuildContext context, Map<String, dynamic> event) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke Halaman Detail Tipe Tiket
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookingDetailTypeScreen(title: event['title']),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5), // Warna abu-abu sangat muda
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event['title'],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: (event['features'] as List<String>).map((feature) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      "- $feature",
                      style: const TextStyle(fontSize: 11, color: Colors.black54),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.grey[400],
                        child: Icon(event['avatars'][0], size: 12, color: Colors.white)
                    ),
                    const SizedBox(width: 4),
                    CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.grey[400],
                        child: Icon(event['avatars'][1], size: 12, color: Colors.white)
                    ),
                  ],
                ),
                Text(
                  event['time'],
                  style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// --- HALAMAN BARU: DETAIL TIPE TIKET (Regular, VIP, VVIP) ---
class BookingDetailTypeScreen extends StatelessWidget {
  final String title;
  const BookingDetailTypeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Header (Placeholder Abu-abu)
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(Icons.confirmation_num, size: 80, color: Colors.white),
            ),
            const SizedBox(height: 24),

            const Text("Pilih Kategori Tiket", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("Sesuaikan dengan kebutuhan Anda", style: TextStyle(color: Colors.grey)),

            const SizedBox(height: 20),

            // Card Pilihan Tiket
            _buildTicketCard(
                context,
                "Regular",
                "Rp 150.000",
                "Akses masuk standar, posisi berdiri di belakang.",
                Colors.blue
            ),
            _buildTicketCard(
                context,
                "VIP",
                "Rp 450.000",
                "Posisi tengah, akses lebih cepat, free softdrink.",
                Colors.orange
            ),
            _buildTicketCard(
                context,
                "VVIP",
                "Rp 1.000.000",
                "Barisan depan, akses backstage, dinner bareng artis.",
                Colors.purple
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTicketCard(BuildContext context, String type, String price, String desc, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 10, offset: const Offset(0, 5))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(type, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color)),
              Text(price, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
          const Divider(height: 20),
          Text(desc, style: const TextStyle(color: Colors.black54)),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Anda memilih tiket $type")));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text("Pilih"),
            ),
          )
        ],
      ),
    );
  }
}