import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unsplash/blocs/photo_data_cubit.dart';
import 'package:unsplash/blocs/photo_data_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:unsplash/models/photo_response_model.dart';
import 'package:unsplash/views/image_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PhotoResponseModel> imageList = [];
  late PhotoDataStateCubit _bloc;
  final ScrollController _scrollController = ScrollController();
  int page = 1;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<PhotoDataStateCubit>(context, listen: false);
    _bloc.getPhotos('1');
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      page++;

      _bloc.getPhotos(page.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF17181B),
      ),
      backgroundColor: const Color(0XFF262932),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: BlocBuilder<PhotoDataStateCubit, PhotoDataState>(
          builder: (context, state) {
            Widget widget = const SizedBox.shrink();

            if (state is PhotoDataStateLoading) {
              widget = const Center(child: CircularProgressIndicator());
            }

            if (state is PhotoDataLoaded) {
              imageList.addAll(state.data);

              widget = Column(
                children: [
                  Expanded(child: _gridBody(imageList)),
                  state.isPaginating
                      ? const Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            CircularProgressIndicator()
                          ],
                        )
                      : const SizedBox.shrink()
                ],
              );
            }

            return widget;
          },
        ),
      ),
    );
  }

  Widget _gridBody(List<PhotoResponseModel> list) {
    return GridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        controller: _scrollController,
        childAspectRatio: 0.55,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(
            list.length,
            (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ImageDetailScreen(list[index], index)));
                      },
                      child: Card(
                          color: Colors.transparent,
                          elevation: 10,
                          shadowColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Hero(
                              tag: 'TAG $index',
                              child: CachedNetworkImage(
                                imageUrl: list[index].urls!.small!,
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'By ${list[index].user?.firstName}',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    )
                  ],
                )));
  }
}
