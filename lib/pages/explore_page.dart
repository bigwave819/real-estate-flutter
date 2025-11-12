import 'package:flutter/material.dart';
import 'package:real_estate/components/my_estate_card.dart';
import 'package:real_estate/components/my_estate_card_type2.dart';
import 'package:real_estate/models/estate.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int _selectedIndex = 0;

  // Only enum values, no null
  final List<EstateTypeCategory> categories = EstateTypeCategory.values;

  // Safely get category label
  String _getCategoryLabel(int index) {
    if (index == 0) return 'All';
    final cat = categories[index - 1]; // index-1 because 'All' is virtual
    return cat.name[0].toUpperCase() + cat.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(title: Text('Home')),
            ListTile(title: Text('Saved')),
            ListTile(title: Text('Settings')),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/profile.jpg')
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Welcome Text

              Text(
                "Find Your Dream",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  letterSpacing: 1.8
                ),
              ),

              Text(
                "Property",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 22,
                  letterSpacing: 1.8
                ),
              ),

              const SizedBox(height: 15,),
              // 🔍 Search Bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Color.fromARGB(221, 147, 147, 147),
                      offset: Offset(2, 1),
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search For Assets',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // 🏷️ Categories List
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length + 1, 
                  itemBuilder: (context, index) {
                    final isSelected = _selectedIndex == index;
                    final label = _getCategoryLabel(index);
        
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: GestureDetector(
                        onTap: () => setState(() => _selectedIndex = index),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.green
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: isSelected
                                  ? Colors.green
                                  : Colors.grey.shade300,
                            ),
                          ),
                          child: Text(
                            label,
                            style: TextStyle(
                              color: isSelected
                                  ? Colors.white
                                  : Colors.grey.shade700,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
        
              const SizedBox(height: 20,),
        
              // some texts
        
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured Properties',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
        
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12
                    ),
                  )
                ],
              ),
        
              // estate card1 hozizontal
        
              MyEstateCard(),

              //real estate type 2 vertical
              MyEstateCardType2()
            ],
          ),
        ),
      ),
    );
  }
}
