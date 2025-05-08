import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesButton extends StatelessWidget {
  final RxList<Map<String, String>> categories;
  final RxInt selectedCategoryIndex;
  final Function(int) onCategorySelected;

  const CategoriesButton({
    Key? key,
    required this.categories,
    required this.selectedCategoryIndex,
    required this.onCategorySelected,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(categories.length, (idx) {
            final isSelected = selectedCategoryIndex.value == idx;
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: GestureDetector(
                onTap: () => onCategorySelected(idx),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Center(
                    child: Text(
                      categories[idx]['name'] as String,
                      style: TextStyle(
                        color:
                            isSelected ? Colors.purple[300] : Colors.grey[600],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
