// components/estate_tab_view.dart
import 'dart:ui';
import 'package:flutter/material.dart';
import '../models/estate.dart';

class EstateTabView extends StatelessWidget {
  final String category;
  final List<Estate> estates;

  const EstateTabView({
    super.key,
    required this.category,
    required this.estates,
  });

  List<Estate> _filterEstates() {
    if (category.toLowerCase() == 'all') return estates;
    return estates
        .where((e) => e.estateType.name.toLowerCase() == category.toLowerCase())
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final filteredEstates = _filterEstates();

    if (filteredEstates.isEmpty) {
      return const Center(
        child: Text(
          'No properties found',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemCount: filteredEstates.length,
      itemBuilder: (context, index) {
        final estate = filteredEstates[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: EstateCard(estate: estate),
        );
      },
    );
  }
}

class EstateCard extends StatelessWidget {
  final Estate estate;

  const EstateCard({super.key, required this.estate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE SECTION
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Image.network(
              estate.imageUrls.isNotEmpty
                  ? estate.imageUrls.first
                  : 'https://via.placeholder.com/400x200',
              width: 150,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),

          // DETAILS SECTION
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title and favorite
                  Text(
                    estate.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 16,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          estate.location,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'RWF ${estate.price.toStringAsFixed(0)}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade600,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                        ),
                        child: const Text(
                          'View More',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
