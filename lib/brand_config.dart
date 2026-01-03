import 'package:flutter/material.dart';

enum AppScheme { a, b }

/// Brand configuration class for white-labeling
/// This allows different branded versions of the app from a single codebase
class BrandConfig {
  final String brandName;
  final String appName;
  final String applicationId;
  final String bundleId;
  final BrandColors colors;
  final BrandAssets assets;

  const BrandConfig({
    required this.brandName,
    required this.appName,
    required this.applicationId,
    required this.bundleId,
    required this.colors,
    required this.assets,
  });
}

class BrandColors {
  final Color primaryColor;

  const BrandColors({required this.primaryColor});
}

class BrandAssets {
  final String logoPath;

  const BrandAssets({required this.logoPath});
}

class SchemeConfig {
  static AppScheme? _currentScheme;
  static BrandConfig? _brandConfig;

  static void setScheme(AppScheme scheme) {
    _currentScheme = scheme;
    _brandConfig = _getBrandConfig(scheme);
  }

  static AppScheme get currentScheme {
    return _currentScheme ?? AppScheme.a;
  }

  static BrandConfig get brandConfig {
    if (_brandConfig == null) {
      throw Exception(
        'Brand config not initialized! Call SchemeConfig.setScheme() first.',
      );
    }
    return _brandConfig!;
  }

  static bool get isA => _currentScheme == AppScheme.a;

  static bool get isB => _currentScheme == AppScheme.b;

  /// Get brand configuration for a specific scheme
  static BrandConfig _getBrandConfig(AppScheme scheme) {
    switch (scheme) {
      case AppScheme.a:
        return _a;
      case AppScheme.b:
        return _b;
    }
  }

  /// App A configuration
  static final BrandConfig _a = BrandConfig(
    brandName: 'A',
    appName: 'A',
    applicationId: 'com.abdulabbozov.multi_scheme_demo.a',
    bundleId: 'com.abdulabbozov.multiSchemeDemo.a',
    colors: BrandColors(primaryColor: Color(0xFFFF4444)),
    assets: BrandAssets(logoPath: 'assets/a.png'),
  );

  /// App B configuration
  static final BrandConfig _b = BrandConfig(
    brandName: 'B',
    appName: 'B',
    applicationId: 'com.abdulabbozov.multi_scheme_demo.b',
    bundleId: 'com.abdulabbozov.multiSchemeDemo.b',
    colors: BrandColors(primaryColor: Color(0xFF0974F4)),
    assets: BrandAssets(logoPath: 'assets/b.png'),
  );
}
