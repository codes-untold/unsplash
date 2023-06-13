import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unsplash/models/photo_response_model.dart';

class ImageDetailScreen extends StatelessWidget {
  const ImageDetailScreen(this.data, this.index, {super.key});
  final PhotoResponseModel data;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFF17181B),
        ),
        backgroundColor: const Color(0XFF262932),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Hero(
                    tag: 'TAG $index',
                    child: CachedNetworkImage(
                      height: MediaQuery.of(context).size.height * 0.7,
                      imageUrl: data.urls!.small!,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0XFF2764FF),
                      radius: 15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: CachedNetworkImage(
                          width: 25,
                          height: 25,
                          imageUrl: data.user!.profileImage!.small!,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'By ${data.user?.firstName ?? ''}',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  data.description ?? '',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ));
  }
}
