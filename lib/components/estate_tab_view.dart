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
      padding: const EdgeInsets.all(16),
      itemCount: filteredEstates.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: EstateCard(estate: filteredEstates[index]),
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
      height: 160,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // LEFT — IMAGE (50% width)
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              child: Image.network(
                estate.imageUrls.isNotEmpty
                    ? estate.imageUrls.first
                    : 'https://via.placeholder.com/400',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // RIGHT — CONTENT (50% width)
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TITLE
                  Text(
                    estate.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  // LOCATION
                  Row(
                    children: [
                      const Icon(Icons.location_on,
                          size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          estate.location,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  // PRICE + BUTTON
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "RWF ${_formatPrice(estate.price)}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 28,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            minimumSize: Size.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            "View",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatPrice(double price) {
    if (price >= 1000000) return "${(price / 1000000).toStringAsFixed(1)}M";
    if (price >= 1000) return "${(price / 1000).toStringAsFixed(0)}K";
    return price.toStringAsFixed(0);
  }
}
