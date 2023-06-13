import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unsplash/blocs/photo_data_cubit.dart';
import 'package:unsplash/views/home_screen.dart';

void main() {
  runApp(MaterialApp(
    home: BlocProvider(
        create: (_) => PhotoDataStateCubit(), child: const HomeScreen()),
  ));
}
