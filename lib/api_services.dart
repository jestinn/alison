import 'dart:convert';
import 'package:alison_test/models/alison_cart_model.dart';
import 'package:http/http.dart';

class ApiService {
  final String endpoint = 'https://swan.alisonsnewdemo.online/api/home';

  Future<List<AlisonCartModel>> getUser() async {
    try {
      Response response = await post(
        Uri.parse(endpoint),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "id": "bDy",
          "token": "WxEgW3wGnacAitZpJiLWPY3AWPePB2veadcIQdec",
        }),
      );

      if (response.statusCode == 200) {
        // Log the entire response for debugging
        print("Response Body: ${response.body}");

        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final List<dynamic> data = responseData['data'] ?? [];

        // Check if the 'data' list contains the expected banners
        if (data.isNotEmpty && data.first.containsKey('banner1')) {
          print("Banners found: ${data.first['banner1']}");
        } else {
          print("No banners found in the response data.");
        }

        return data.map((e) => AlisonCartModel.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load data: ${response.reasonPhrase}');
      }
    } catch (error) {
      throw Exception('Error: $error');
    }
  }
}
