import 'package:flutter/material.dart';
import 'package:pilem/models/movie.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;
  const DetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://image.tmdb.org/t/p/w500${movie.backdropPath}',
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          const Text(
            'Overview',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(movie.overview),
          const SizedBox(height: 20),
          Row(
            children: [
              Icon(
                Icons.calendar_month_outlined,
                color: Colors.blue[600],
              ),
              SizedBox(width: 10),
              Text(
                'Release Date',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 10),
              Text(movie.releaseDate),
              const SizedBox(height: 20),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              SizedBox(width: 10),
              Text(
                'Rating',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 10),
              Text(movie.voteAverage.toString()),
            ],
          ),
        ],
      ),
    );
  }
}