import 'package:flutter/material.dart';
import 'package:pilem/services/api_service.dart';
import 'package:pilem/models/movie.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final ApiService _apiService = ApiService();
  final TextEditingController _searchController = TextEditingController();
  List<Movie> _searchResult = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_searchMovies);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  void _searchMovies() async{

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0
              ),
            ),
            child: Row(
              children: [
                TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search Movies...',
                    border: InputBorder.none,
                    ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: (){_searchController.clear();
            setState(() {
              _searchController.clear();
            });},
            icon:Icon(Icons.clear)
          ),
        ],
      ),
    )
  }
}
