import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailNewsPage extends StatelessWidget {
  final String? imgUrl;
  final String title;
  final String? author;
  final DateTime? publishedAt;
  final String? description;

  const DetailNewsPage({
    super.key,
    this.imgUrl,
    required this.title,
    this.author,
    this.publishedAt,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: imgUrl ?? '',
              child: CachedNetworkImage(
                imageUrl: imgUrl ?? '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
