# News App by [newsorg.api](newsorg.api)

> A Flutter project using newsorg.api with clean architecture implementation. Also the app has the ability to perform development environment and production environment

The app screenshot is in `screenshot` directory

## Repository structure

_this repository follow clean architecture structure, with addition of some custom assets directory e.g FlutterGen._

the `lib/` directory is divided into two main directory: `/core` and `/feature`

#### `lib/core/`

- `lib/core/constant` contains constant variable that implemented globally and being use in every aspect e.g. `DisplaySize` class is being used for sizing consistently

- `lib/core/error` contains error class which being use to handle error scenario and to catch `throw` in try catch

- `lib/core/gen` contains generated assets from `assets/` by FlutterGen. The implementation is quite easy, we just call `Assets.images.welcome.image()` for images and `Assest.icons.splash.image()` to create an image widget. It also work for SVG format

- `lib/core/ui_component` contains global widget component that can be used on repeat

- `lib/core/usecase` contains global implementation for usecase, it can be implemented into usecase class to perform a 'call' function

- `lib/core/util` contains helper class and extension on widget and function

#### `lib/faature/`

_the directory contains 3 folder: `data, domain, & presentation`_

- `some_feature/data/datasource/` Consist of remote and local Data Sources. Remote Data Source will perform HTTP requests on the API. While local Data Source will cache or persist data
- `some_feature/data/model/` Map Entity objects to Models and vice-versa
- `some_feature/data/repository/` Actual implementations of the repositories in the Domain layer. Repositories are responsible to coordinate data from the different Data Sources
- `some_feature/domain/entity` Business objects of the application
- `some_feature/domain/repository` Abstract classes that define the expected functionality of outer layers
- `some_feature/domain/usecase` Application-specific business rules
- `some_feature/presentation/controller` Impelementation of BLoCs
- `some_feature/presentation/page` Contains pages in the app
- `some_feature/presentation/widget` Contains spesific widget used by the page

#### `lib/`

- **`app_config.dart`** Contains app environment and the class factory for production and developement
- **`injector.dart`** Contains all imported package in `injector.main.dart`
- **`injector.main.dart`** Contains service locator and initialized dependency
- **`main_dev.dart`** The entry point to use development rule
- **`main_prod.dart`** The entry point to use production rule
- **`main.dart`** The main flutter entry point and contain `runApp` function

## How to develop

In the app we use several packages, some of which you need to take notes:

- [Bloc](https://bloclibrary.dev/#/) is our main state management library
- [Freezed](https://pub.dev/packages/freezed) for creating union classes and JSON generator
- [Dio](https://pub.dev/packages/dio) for http client and request interceptors
- [GetIt](https://pub.dev/packages/get_it) for service locator
- [FlutterGen](https://pub.dev/packages/get_it) code generator for your assets, fonts, colors
- [FlutterGen](https://pub.dev/packages/json_serializable) Provides Dart Build System builders for handling JSON

### Add or modify models or blocs

You need to run `flutter packages pub run build_runner build --delete-conflicting-outputs` every time you add or modify models or blocs (especially modifying states).

### Add or remove assets

You need to run `fluttergen -c pubspec.yaml` every time you add or remove assets.

### Build Android development app

To build the APK run the following command:

```bash
flutter build  apk --obfuscate --split-debug-info=./split-debug-info-development  --split-per-abi  --flavor development -t lib/main_dev.dart
```

### Build iOS development app

You need to build the artifact by running:

```bash
flutter build ipa --obfuscate --split-debug-info=./split-debug-info-development  --flavor development -t lib/main_dev.dart
```
