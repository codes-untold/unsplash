import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:unsplash/networking/api_service.dart';
import 'package:unsplash/utils/constants.dart';

class MockClient extends Mock implements http.Client {}

//class MockConnectivity extends Mock implements Connectivity {}

void main() {
  late MockClient mockClient;

  setUp(() {
    mockClient = MockClient();
    registerFallbackValue(Uri());
  });

  test('fetchData returns correct data', () async {
    final responseJson = jsonEncode(
        PhotoDataTestResponse.photoData.map((e) => e.toJson()).toList());
    final mockResponse = http.Response(responseJson, 200);

    when(() => mockClient.get(any())).thenAnswer((_) async => mockResponse);

    // Act
    final result = await ApiService.fetchImages(
      photoId: 'N_Zc_G7wToY',
      page: '2',
    );

    // Assert
    expect(result?.first, equals(PhotoDataTestResponse.photoData.first));
  });

  test('Test internetCheck function', () async {
    // Simulate a successful InternetAddress lookup
    final result = await ApiService.internetCheck();

    // Verify that the result is true
    expect(result, true);
  });
}
