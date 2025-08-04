import 'package:flutter/material.dart';
import 'category_item.dart'; // Import the reusable CategoryItem widget

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  // Keeps track of which category icon is selected (-1 means none selected initially)
  int selectedIndex = -1;

  // Demo data for categories (icon + title)
  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.palette, 'title': 'Lifestyle'},
    {'icon': Icons.campaign, 'title': 'Marketing'},
    {'icon': Icons.business_center, 'title': 'Business'},
    {'icon': Icons.lightbulb, 'title': 'Creativity'},
    {'icon': Icons.data_usage, 'title': 'Data'},
    {'icon': Icons.library_books, 'title': 'Books'},
    {'icon': Icons.sports_basketball, 'title': 'Sports'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Enables horizontal scrolling
      child: Row(
        children: List.generate(categories.length, (index) {
          return GestureDetector(
            onTap: () {
              // When an icon is tapped, update the selected index
              setState(() {
                selectedIndex = index;
              });
            },
            child: CategoryItem(
              icon: categories[index]['icon'],      // Icon for this category
              title: categories[index]['title'],    // Text below icon
              isSelected: selectedIndex == index,   // True if this is the selected icon
            ),
          );
        }),
      ),
    );
  }
}
