import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoDetailScreen extends StatelessWidget {
  final dynamic photo;

  PhotoDetailScreen({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Photo Detail'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            photo['url'],
            width: 300,
            height: 300,
          ),

          SizedBox(height: 10),
          Text('Title: ${photo['title']}',style: TextStyle(fontSize: 16)),
          SizedBox(height: 20),
          Text('ID: ${photo['id']}'),
        ],
      ),
    );
  }
}