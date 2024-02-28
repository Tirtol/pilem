import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServices {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = 'd4b79a377a964e0e5b846e669a52bf62';

  Future<List<Map<String, dynamic>>> getaAllMovies() async {
    final response = await http.get(Uri.parse('$baseUrl/movie/now_playing?api_key=$apiKey'));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }//API buat liat film yg lagi tayang

  Future<List<Map<String, dynamic>>> getTrendingMovies() async {
    final response =
        await http.get(Uri.parse('$baseUrl/movie/week?api_key=$apiKey'));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  } //API buat liat film yang lagi trending

  Future<List<Map<String, dynamic>>> getPopularMovies() async {
    final response =
        await http.get(Uri.parse('$baseUrl/movie/popular?api_key=$apiKey'));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  } //API buat liat film yg populer
}
