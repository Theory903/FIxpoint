import 'package:get/get.dart';
import 'en_us/en_us_translations.dart';  // Assuming this contains your en_us map
// If you have other translations (e.g., es_us, fr_fr), import them as well

// AppLocalization class extending GetX Translations
class AppLocalization extends Translations {
  // Override the keys method to define translation maps
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUs,  // Reference to your en_us translations map
    // If you have more languages, you can add them here like this:
    // 'es_ES': esEs, // Spanish translation map
    // 'fr_FR': frFr, // French translation map
  };

  // Optionally, you can define other logic for loading translations or additional features if needed.
  static List<String> languages() => ['en', /* 'es', 'fr', etc. */];
}
