import 'package:flutter/material.dart';
import '../components/estate_tab_view.dart';
import '../models/estate.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final List<String> _categories;

  @override
  void initState() {
    super.initState();
    // Create categories list
    _categories = [
      'All',
      ...EstateTypeCategory.values.map(
        (e) => e.name[0].toUpperCase() + e.name.substring(1),
      ),
    ];
    // Initialize TabController
    _tabController = TabController(length: _categories.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.7),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Search Properties",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Tabs
          TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.green,
            tabs: _categories.map((e) => Tab(text: e)).toList(),
          ),

          // Tab content
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _categories
                  .map(
                    (category) =>
                        EstateTabView(category: category, estates: estates),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
