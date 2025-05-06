import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/providers/providers.dart';
import 'package:todoapp/utils/utils.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/widget/widgets.dart';

class SelectCategory extends ConsumerWidget {
  const SelectCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(categoryProvider);
    final categories = TaskCategories.values.toList();

    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Text(
            'Category',
            style: context.textTheme.titleLarge,
          ),
          const Gap(10),
          Expanded(
              child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, i) {
              final category = categories[i];

              return InkWell(
                onTap: () {
                  ref.read(categoryProvider.notifier).state = category;
                },
                borderRadius: BorderRadius.circular(30),
                child: CircleContainer(
                  color: category.color.withOpacity(0.3),
                  child: Icon(
                    category.icon,
                    color: category == selectedCategory
                        ? context.colorSchame.primary
                        : category.color,
                  ),
                ),
              );
            },
            separatorBuilder: (ctx, i) => const Gap(8),
            itemCount: categories.length,
          ))
        ],
      ),
    );
  }
}
