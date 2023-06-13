### UnSplash
##  Simple mobile application using Flutter that allows users to browse and view a list of photos fetched from the unsplash developer API
### Description

Welcome aboard fellow developer. This is a simple flutter Application which which allows users to browse and view a liat of photos fetched from the unsplash developer API and displays them in a beautiful GridView


##  Implementation Notes

# Flutter State Management and Unit Testing

This repository contains a Flutter application that demonstrates state management using the BLoC pattern and unit testing with widget tests. The code consists of a HomeScreen that fetches and displays photos from an API using a PhotoDataStateCubit. The AppBar widget is also tested using widget tests.

## State Management - BLoC Pattern

The state management in this project is based on the BLoC (Business Logic Component) pattern. The key components related to state management are:

- **PhotoDataStateCubit**: This class extends the Cubit class from the `flutter_bloc` package. It manages the state of photo data and exposes methods to fetch photos from the API. The `getPhotos` method is responsible for fetching photos and updating the state accordingly.

- **PhotoDataState**: This class represents the state of the photo data. It defines different states such as `PhotoDataStateLoading` and `PhotoDataLoaded` that are used to handle loading and loaded states, respectively.

- **HomeScreen**: This screen is the main entry point of the application. It utilizes the `PhotoDataStateCubit` to fetch photos and manage the state. The `BlocBuilder` widget from `flutter_bloc` is used to listen to state changes and rebuild the UI accordingly.

## Unit Testing - Widget Tests

The unit tests in this project are implemented using widget tests. The key tests and their purpose are as follows:

- **Test AppBar/Scaffold on HomeScreen**: This test verifies the existence and properties of the AppBar widget on the HomeScreen. It uses widget testing techniques, including `pumpWidget`, `find.byKey`, and `expect`, to locate and assert the AppBar's presence and background color.

- **Mocking PhotoDataStateCubit**: To isolate the widget tests from external dependencies, a mock class `PhotoDataStateCubitMock` is created to replace the actual `PhotoDataStateCubit`. The mock class provides a mock implementation of the `getPhotos` method.

## Getting Started

To run the application and execute the unit tests, follow these steps:

1. Ensure that you have Flutter and Dart installed on your machine.

2. Clone this repository.

3. Open the project in your preferred Flutter development environment.

4. Run `flutter pub get` to fetch the project dependencies.

5. To run the application, use the `flutter run` command.

6. There two test files basically

  To run the unit tests in networking_test.dart, use the 'flutter test test/networking_test.dart' command
  
  To run the widget tests in widget_test.dart, use the 'flutter test test/widget_test.dart' command

Feel free to explore the code, modify it, and experiment with different state management approaches and testing techniques!




