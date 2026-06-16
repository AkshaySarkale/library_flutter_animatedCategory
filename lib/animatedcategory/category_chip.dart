import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CategoryChip extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color selectedColor;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryChip({
    super.key,
    required this.title,
    required this.icon,
    required this.selectedColor,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        onTap();
      },
      child: AnimatedScale(
        scale: isSelected ? 1.2 : 1.0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutBack,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300, seconds: 1),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? selectedColor
                : (isDark ? Colors.grey[850] : Colors.grey[200]),
            borderRadius: BorderRadius.circular(20),
            boxShadow: isSelected
                ? [
              BoxShadow(
                color: selectedColor.withOpacity(0.4),
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ]
                : [],
            border: Border.all(
              color: isSelected
                  ? Colors.transparent
                  : theme.dividerColor.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 20,
                color: isSelected
                    ? Colors.white
                    : theme.iconTheme.color?.withOpacity(0.6),
              ),
              const SizedBox(width: 8),
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: theme.textTheme.labelLarge!.copyWith(
                  color: isSelected
                      ? Colors.white
                      : theme.textTheme.labelLarge?.color,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
                child: Text(title),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
