import 'package:flutter/material.dart';
import 'category_chip.dart';

class AnimatedCategorySection<T> extends StatelessWidget {
  final List<T> categories;
  final String? selectedCategoryId;
  final ValueChanged<String> onCategorySelected;

  final String Function(T) idBuilder;
  final String Function(T) titleBuilder;
  final IconData Function(T) iconBuilder;
  final Color Function(T) colorBuilder;

  const AnimatedCategorySection({
    super.key,
    required this.categories,
    required this.selectedCategoryId,
    required this.onCategorySelected,
    required this.idBuilder,
    required this.titleBuilder,
    required this.iconBuilder,
    required this.colorBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        SizedBox(
          height: 70,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final category = categories[index];

                return CategoryChip(
                  title: titleBuilder(category),
                  icon: iconBuilder(category),
                  selectedColor: colorBuilder(category),
                  isSelected: idBuilder(category) == selectedCategoryId,
                  onTap: () => onCategorySelected(idBuilder(category)),
                );
              },
          ),
        ),
      ],
    );
  }
}
