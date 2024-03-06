import 'dart:convert';
import 'package:http/http.dart' as http; //d4b79a377a964e0e5b846e669a52bf62

class ApiService {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = '6a8f370aa98b22838995b471741ad0a4';
  Future<List<Map<String, dynamic>>> getAllMovies() async {
    final response =
        await http.get(Uri.parse("$baseUrl/movie/now_playing?api_key=$apiKey"));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }

  Future<List<Map<String, dynamic>>> getTrendingMovies() async {
    final response = await http
        .get(Uri.parse("$baseUrl/trending/movie/week?api_key=$apiKey"));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }

  Future<List<Map<String, dynamic>>> getPopularMovies() async {
    final response =
        await http.get(Uri.parse("$baseUrl/movie/popular?api_key=$apiKey"));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }

  searchMovies(String text) {}
}
