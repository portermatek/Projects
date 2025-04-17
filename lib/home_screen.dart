import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      "Cardiologist",
      "Dentist",
      "Neurologist",
      "Pediatrician",
    ];
    final doctors = [
      {"name": "Dr. K Smith", "specialty": "Cardiologist", "rating": "4.5"},
      {"name": "Dr. B Bonang", "specialty": "Dentist", "rating": "4.4"},
      {"name": "Dr. G Mchoman", "specialty": "Radiologist", "rating": "4.8"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("MediConnect"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              "Top Doctors",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            ...doctors.map(
              (doc) => Card(
                child: ListTile(
                  title: Text(doc["name"]!),
                  subtitle: Text(doc["specialty"]!),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      Text(doc["rating"]!),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Categories",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children:
                  categories
                      .map(
                        (c) => Chip(
                          label: Text(c),
                          backgroundColor: Colors.blue.shade50,
                        ),
                      )
                      .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
