enum Flavor { prod, dev }

class AppConfig {
  final String appName;
  final Flavor flavor;
  final String baseUrl;

  const AppConfig({
    required this.appName,
    required this.flavor,
    required this.baseUrl,
  });

  static late final AppConfig instance;

  factory AppConfig.dev() {
    instance = const AppConfig(
      appName: 'News App Dev',
      flavor: Flavor.dev,
      baseUrl: 'https://newsapi.org/v2',
    );
    return instance;
  }

  factory AppConfig.prod() {
    instance = const AppConfig(
      appName: 'News App',
      flavor: Flavor.prod,
      baseUrl: 'https://newsapi.org/v2',
    );
    return instance;
  }
}
