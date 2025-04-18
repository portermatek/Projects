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
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("MediConnect"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              "Top Doctors",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            ...doctors.map(
              (doc) => Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 6,
                child: ListTile(
                  title: Text(
                    doc["name"]!,
                    style: const TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    doc["specialty"]!,
                    style: const TextStyle(color: Colors.black87),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        doc["rating"]!,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children:
                  categories
                      .map(
                        (c) => Chip(
                          label: Text(c),
                          backgroundColor: Colors.white,
                          labelStyle: const TextStyle(color: Colors.teal),
                          elevation: 4,
                          shadowColor: Colors.tealAccent,
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
