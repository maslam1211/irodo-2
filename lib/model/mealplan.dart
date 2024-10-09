class MealPlan {
  final int id;
  final String name;
  final String mealTypes;
  final String shortDescription;

  MealPlan({
    required this.id,
    required this.name,
    required this.mealTypes,
    required this.shortDescription,
  });

  factory MealPlan.fromJson(Map<String, dynamic> json) {
    return MealPlan(
      id: json['id'],
      name: json['name'],
      mealTypes: json['meal_types'],
      shortDescription: json['short_description'],
    );
  }
}
