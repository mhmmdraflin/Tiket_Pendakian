import 'package:flutter/material.dart';
import 'data_model.dart';
import 'detail_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Filter data berdasarkan status
    final nowEvents = allEvents.where((e) => e.status == 'now').toList();
    final soonEvents = allEvents.where((e) => e.status == 'soon').toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard Event"),
        automaticallyImplyLeading: false, // Hilangkan tombol back
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section NOW
            _buildSectionHeader("Sedang Berlangsung (Now) 🔥"),
            _buildEventList(context, nowEvents),

            const SizedBox(height: 20),

            // Section SOON
            _buildSectionHeader("Akan Datang (Soon) 📅"),
            _buildEventList(context, soonEvents),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildEventList(BuildContext context, List<Event> events) {
    return SizedBox(
      height: 240, // Tinggi area scroll horizontal
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return GestureDetector(
            onTap: () {
              // Navigasi ke Detail Screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen(event: event)),
              );
            },
            child: Container(
              width: 180,
              margin: const EdgeInsets.only(right: 16, bottom: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 6,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar Thumbnail
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                    child: Image.network(
                      event.images[0],
                      height: 120,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          event.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          event.category,
                          style: const TextStyle(color: Colors.blueAccent, fontSize: 12),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          event.date,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}