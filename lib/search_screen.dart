import 'package:flutter/material.dart';
import 'data_model.dart';
import 'detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _keyword = "";

  @override
  Widget build(BuildContext context) {
    final results = allEvents.where((e) {
      return e.title.toLowerCase().contains(_keyword.toLowerCase());
    }).toList();
    final bool isNotFound = _keyword.isNotEmpty && results.isEmpty;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pencarian Event"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  _keyword = value;
                });
              },
              decoration: InputDecoration(
                hintText: "Cari nama event...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
            const SizedBox(height: 20),
            if (isNotFound) ...[
              Column(
                children: [
                  const Icon(Icons.search_off, size: 60, color: Colors.grey),
                  const SizedBox(height: 10),
                  const Text(
                    "Event not found",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  const SizedBox(height: 30),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Mungkin Anda suka (Suggestion):", style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return _buildListItem(context, allEvents[index]);
                    },
                  ),
                ],
              )
            ]
            else ...[
              Expanded(
                child: ListView.builder(
                  itemCount: results.length,
                  itemBuilder: (context, index) {
                    return _buildListItem(context, results[index]);
                  },
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, Event event) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(event.images[0], width: 70, height: 70, fit: BoxFit.cover),
        ),
        title: Text(event.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(event.date),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailScreen(event: event)),
          );
        },
      ),
    );
  }
}