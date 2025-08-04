import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final IconData icon;  // Icon for the category
  final String title;   // Title text for the category
  final bool isSelected; // Whether this category is selected

  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,  // Make sure title is required
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Icon(
            icon,  // Display the icon passed from the demo data
            color: isSelected ? Colors.black : Colors.blue,  // Change color if selected
            size: 30,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          title,  // Display the title passed from the demo data
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

