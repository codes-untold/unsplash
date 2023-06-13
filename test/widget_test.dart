import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:unsplash/blocs/photo_data_cubit.dart';
import 'package:unsplash/blocs/photo_data_state.dart';
import 'package:unsplash/models/photo_response_model.dart';
import 'package:unsplash/utils/constants.dart';
import 'package:unsplash/views/home_screen.dart';

class MockPhotoDataStateCubit extends Mock implements PhotoDataStateCubit {
  @override
  Future<void> getPhotos(String page) async {}
}

void main() {
  testWidgets('HomeScreen displays loading state', (WidgetTester tester) async {
    await tester.pumpWidget(
      BlocProvider<PhotoDataStateCubit>.value(
        value: PhotoDataStateCubit(),
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('HomeScreen displays AppBar', (WidgetTester tester) async {
    await tester.pumpWidget(
      BlocProvider<PhotoDataStateCubit>.value(
        value: PhotoDataStateCubit(),
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );
    final appBarFinder = find.byKey(const Key('AppBar'));
    expect(appBarFinder, findsOneWidget);
  });

  testWidgets('HomeScreen displays Scaffold', (WidgetTester tester) async {
    await tester.pumpWidget(
      BlocProvider<PhotoDataStateCubit>.value(
        value: PhotoDataStateCubit(),
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );
    final appBarFinder = find.byKey(const Key('Scaffold'));
    expect(appBarFinder, findsOneWidget);
  });
}
