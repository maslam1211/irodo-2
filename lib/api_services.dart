import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = 'http://54.170.183.211/api/v1/get-mealcategories';

  Future<Map<String, dynamic>> fetchMealCategories() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return {
        'meal_categories': data['data']['meal_categories'],
        'banners': data['data']['banners'],
      };
    } else {
      throw Exception('Failed to load meal categories');
    }
  }
}
