import 'package:irodo/model/mealplan.dart';

class MealCategory {
  final int id;
  final String name;
  final String imageUrl;
  final List<MealPlan> mealPlans;

  MealCategory({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.mealPlans,
  });

  factory MealCategory.fromJson(Map<String, dynamic> json) {
    return MealCategory(
      id: json['id'],
      name: json['name'],
      imageUrl: json['image'],
      mealPlans: (json['meal_plans'] as List)
          .map((planJson) => MealPlan.fromJson(planJson))
          .toList(),
    );
  }
}
