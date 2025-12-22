import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../i18n/strings.g.dart';
import '../../core/core.dart';

class AppLocaleNotifier extends ChangeNotifier {
  AppLocaleNotifier(this._prefs) {
    _loadSavedLocale();
  }
  final SharedPreferences _prefs;

  // Supported Languages
  final locales = <CustomAppLocale>[
    CustomAppLocale(
      name: "Afrikans",
      languageCode: "af",
      countryCode: "ZA",
      currencySymbol: "R",
    ),
    /*
    CustomAppLocale(
      name: "Albanian",
      languageCode: "sq",
      countryCode: "AL",
      currencySymbol: "Lek",
    ),
    CustomAppLocale(
      name: "Amharic",
      languageCode: "am",
      countryCode: "ET",
      currencySymbol: "Br",
    ),
    */
    CustomAppLocale(
      name: "Arabic",
      languageCode: "ar",
      countryCode: "SA",
      currencySymbol: "﷼",
    ),
    /*
    CustomAppLocale(
      name: "Armenian",
      languageCode: "hy",
      countryCode: "AM",
      currencySymbol: "֏",
    ),
    CustomAppLocale(
      name: "Assamese",
      languageCode: "as",
      countryCode: "IN",
      currencySymbol: "₹",
    ),
    CustomAppLocale(
      name: "Azerbaijani",
      languageCode: "az",
      countryCode: "AZ",
      currencySymbol: "₼",
    ),
    */
    CustomAppLocale(
      name: "Bangla",
      languageCode: "bn",
      countryCode: "BD",
      currencySymbol: "৳",
    ),
    /*
    CustomAppLocale(
      name: "Basque",
      languageCode: "eu",
      countryCode: "ES",
      currencySymbol: "€",
    ),
    CustomAppLocale(
      name: "Belarusian",
      languageCode: "be",
      countryCode: "BY",
      currencySymbol: "Br",
    ),
    CustomAppLocale(
      name: "Bosnian",
      languageCode: "bs",
      countryCode: "BA",
      currencySymbol: "KM",
    ),
    */
    CustomAppLocale(
      name: "Bulgarian",
      languageCode: "bg",
      countryCode: "BG",
      currencySymbol: "лв",
    ),
    /*
    CustomAppLocale(
      name: "Burmese",
      languageCode: "my",
      countryCode: "MM",
      currencySymbol: "Ks",
    ),
    CustomAppLocale(
      name: "Catalan Valencian",
      languageCode: "ca",
      countryCode: "ES",
      currencySymbol: "€",
    ),
    */
    CustomAppLocale(
      name: "Chinese",
      languageCode: "zh",
      countryCode: "CN",
      currencySymbol: "¥",
    ),
    CustomAppLocale(
      name: "Croatian",
      languageCode: "hr",
      countryCode: "HR",
      currencySymbol: "€",
    ),
    CustomAppLocale(
      name: "Czech",
      languageCode: "cs",
      countryCode: "CZ",
      currencySymbol: "Kč",
    ),
    CustomAppLocale(
      name: "Danish",
      languageCode: "da",
      countryCode: "DK",
      currencySymbol: "kr",
    ),
    CustomAppLocale(
      name: "Dutch Flemish",
      languageCode: "nl",
      countryCode: "BE",
      currencySymbol: "€",
    ),
    CustomAppLocale(
      name: "English",
      languageCode: "en",
      countryCode: "US",
      currencySymbol: "\$",
    ),
    CustomAppLocale(
      name: "Estonian",
      languageCode: "et",
      countryCode: "EE",
      currencySymbol: "€",
    ),
    /*
    CustomAppLocale(
      name: "Filipino",
      languageCode: "fil",
      countryCode: "PH",
      currencySymbol: "₱",
    ),
    */
    CustomAppLocale(
      name: "Finnish",
      languageCode: "fi",
      countryCode: "FI",
      currencySymbol: "€",
    ),
    CustomAppLocale(
      name: "French",
      languageCode: "fr",
      countryCode: "FR",
      currencySymbol: "€",
    ),
    /*
    CustomAppLocale(
      name: "Galician",
      languageCode: "gl",
      countryCode: "ES",
      currencySymbol: "€",
    ),
    CustomAppLocale(
      name: "Georgian",
      languageCode: "ka",
      countryCode: "GE",
      currencySymbol: "ლ",
    ),
    */
    CustomAppLocale(
      name: "German",
      languageCode: "de",
      countryCode: "DE",
      currencySymbol: "€",
    ),
    CustomAppLocale(
      name: "Greek",
      languageCode: "el",
      countryCode: "GR",
      currencySymbol: "€",
    ),
    /*
    CustomAppLocale(
      name: "Gujarati",
      languageCode: "gu",
      countryCode: "IN",
      currencySymbol: "₹",
    ),
    */
    CustomAppLocale(
      name: "Hebrew",
      languageCode: "he",
      countryCode: "IL",
      currencySymbol: "₪",
    ),
    CustomAppLocale(
      name: "Hindi",
      languageCode: "hi",
      countryCode: "IN",
      currencySymbol: "₹",
    ),
    CustomAppLocale(
      name: "Hungarian",
      languageCode: "hu",
      countryCode: "HU",
      currencySymbol: "Ft",
    ),
    /*
    CustomAppLocale(
      name: "Icelandic",
      languageCode: "is",
      countryCode: "IS",
      currencySymbol: "kr",
    ),
    */
    CustomAppLocale(
      name: "Indonesian",
      languageCode: "id",
      countryCode: "ID",
      currencySymbol: "Rp",
    ),
    CustomAppLocale(
      name: "Italian",
      languageCode: "it",
      countryCode: "IT",
      currencySymbol: "€",
    ),
    CustomAppLocale(
      name: "Japanese",
      languageCode: "ja",
      countryCode: "JP",
      currencySymbol: "¥",
    ),
    /*
    CustomAppLocale(
      name: "Kannada",
      languageCode: "kn",
      countryCode: "IN",
      currencySymbol: "₹",
    ),
    CustomAppLocale(
      name: "Kazakh",
      languageCode: "kk",
      countryCode: "KZ",
      currencySymbol: "₸",
    ),
    CustomAppLocale(
      name: "Khmer",
      languageCode: "km",
      countryCode: "KH",
      currencySymbol: "៛",
    ),
    CustomAppLocale(
      name: "Kirghiz Kyrgyz",
      languageCode: "ky",
      countryCode: "KG",
      currencySymbol: "с",
    ),
    */
    CustomAppLocale(
      name: "Korean",
      languageCode: "ko",
      countryCode: "KR",
      currencySymbol: "₩",
    ),
    /*
    CustomAppLocale(
      name: "Lao",
      languageCode: "lo",
      countryCode: "LA",
      currencySymbol: "₭",
    ),
    */
    CustomAppLocale(
      name: "Latvian",
      languageCode: "lv",
      countryCode: "LV",
      currencySymbol: "€",
    ),
    CustomAppLocale(
      name: "Lithuanian",
      languageCode: "lt",
      countryCode: "LT",
      currencySymbol: "€",
    ),
    /*
    CustomAppLocale(
      name: "Macedonian",
      languageCode: "mk",
      countryCode: "MK",
      currencySymbol: "ден",
    ),
    */
    CustomAppLocale(
      name: "Malay",
      languageCode: "ms",
      countryCode: "MY",
      currencySymbol: "RM",
    ),
    /*
    CustomAppLocale(
      name: "Malayalam",
      languageCode: "ml",
      countryCode: "IN",
      currencySymbol: "₹",
    ),
    CustomAppLocale(
      name: "Marathi",
      languageCode: "mr",
      countryCode: "IN",
      currencySymbol: "₹",
    ),
    CustomAppLocale(
      name: "Mongolian",
      languageCode: "mn",
      countryCode: "MN",
      currencySymbol: "₮",
    ),
    CustomAppLocale(
      name: "Nepali",
      languageCode: "ne",
      countryCode: "NP",
      currencySymbol: "₨",
    ),
    */
    CustomAppLocale(
      name: "Norwegian",
      languageCode: "no",
      countryCode: "NO",
      currencySymbol: "kr",
    ),
    /*
    CustomAppLocale(
      name: "Norwegian Bokmål",
      languageCode: "nb",
      countryCode: "NO",
      currencySymbol: "kr",
    ),
    CustomAppLocale(
      name: "Oriya",
      languageCode: "or",
      countryCode: "IN",
      currencySymbol: "₹",
    ),
    CustomAppLocale(
      name: "Panjabi",
      languageCode: "pa",
      countryCode: "IN",
      currencySymbol: "₹",
    ),
    CustomAppLocale(
      name: "Persian",
      languageCode: "fa",
      countryCode: "IR",
      currencySymbol: "﷼",
    ),
    */
    CustomAppLocale(
      name: "Polish",
      languageCode: "pl",
      countryCode: "PL",
      currencySymbol: "zł",
    ),
    CustomAppLocale(
      name: "Portuguese",
      languageCode: "pt",
      countryCode: "PT",
      currencySymbol: "€",
    ),
    /*
    CustomAppLocale(
      name: "Pushto",
      languageCode: "ps",
      countryCode: "AF",
      currencySymbol: "؋",
    ),
    */
    CustomAppLocale(
      name: "Romanian",
      languageCode: "ro",
      countryCode: "RO",
      currencySymbol: "lei",
    ),
    CustomAppLocale(
      name: "Serbian",
      languageCode: "sr",
      countryCode: "RS",
      currencySymbol: "дин",
    ),
    /*
    CustomAppLocale(
      name: "Sinhala",
      languageCode: "si",
      countryCode: "LK",
      currencySymbol: "රු",
    ),
    */
    CustomAppLocale(
      name: "Slovak",
      languageCode: "sk",
      countryCode: "SK",
      currencySymbol: "€",
    ),
    CustomAppLocale(
      name: "Slovenian",
      languageCode: "sl",
      countryCode: "SI",
      currencySymbol: "€",
    ),
    CustomAppLocale(
      name: "Spanish",
      languageCode: "es",
      countryCode: "ES",
      currencySymbol: "€",
    ),
    CustomAppLocale(
      name: "Swahili",
      languageCode: "sw",
      countryCode: "TZ",
      currencySymbol: "TSh",
    ),
    CustomAppLocale(
      name: "Swedish",
      languageCode: "sv",
      countryCode: "SE",
      currencySymbol: "kr",
    ),
    /*
    CustomAppLocale(
      name: "Swiss German Alemannic Alsatian",
      languageCode: "gsw",
      countryCode: "CH",
      currencySymbol: "CHF",
    ),
    CustomAppLocale(
      name: "Tamil",
      languageCode: "ta",
      countryCode: "IN",
      currencySymbol: "₹",
    ),
    CustomAppLocale(
      name: "Telugu",
      languageCode: "te",
      countryCode: "IN",
      currencySymbol: "₹",
    ),
    */
    CustomAppLocale(
      name: "Thai",
      languageCode: "th",
      countryCode: "TH",
      currencySymbol: "฿",
    ),
    CustomAppLocale(
      name: "Turkish",
      languageCode: "tr",
      countryCode: "TR",
      currencySymbol: "₺",
    ),
    CustomAppLocale(
      name: "Ukrainian",
      languageCode: "uk",
      countryCode: "UA",
      currencySymbol: "₴",
    ),
    /*
    CustomAppLocale(
      name: "Urdu",
      languageCode: "ur",
      countryCode: "PK",
      currencySymbol: "₨",
    ),
    */
    CustomAppLocale(
      name: "Vietnamese",
      languageCode: "vi",
      countryCode: "VN",
      currencySymbol: "₫",
    ),
    /*
    CustomAppLocale(
      name: "Welsh",
      languageCode: "cy",
      countryCode: "GB",
      currencySymbol: "£",
    ),
    */
    CustomAppLocale(
      name: "Русский",
      languageCode: "ru",
      countryCode: "RU",
      currencySymbol: "₽",
    ),
  ];

  late CustomAppLocale currentLocale = fallback;
  static final fallback = CustomAppLocale(
    name: 'English',
    languageCode: 'en',
    countryCode: 'US',
    currencySymbol: '\$',
  );

  void _loadSavedLocale() {
    final savedLang = _prefs.getString(DAppSPrefsKeys.savedLanguage);

    if (savedLang != null) {
      currentLocale = CustomAppLocale.fromString(savedLang);
    }
    GlobalAppLocaleHolder.setContext(currentLocale);
    notifyListeners();
    LocaleSettings.setLocaleRaw(currentLocale.languageCode);
  }

  Future<Either<String?, String?>> saveLocale() async {
    final result = await _prefs.setString(
      DAppSPrefsKeys.savedLanguage,
      currentLocale.toString(),
    );

    await Future.delayed(Durations.medium1);

    if (result) {
      await LocaleSettings.setLocaleRaw(currentLocale.languageCode);
      GlobalAppLocaleHolder.setContext(currentLocale);
      notifyListeners();
      return Either.success('Language saved successfully.');
    }

    return Either.failure('Failed to save language, please try again.');
  }
}

final appLocaleProvider = Provider.autoDispose<AppLocaleNotifier>(
  (ref) => throw AssertionError(
    "AppLocaleNotifier is not initialized. Ensure it is overridden in the ProviderScope.",
  ),
);

class GlobalAppLocaleHolder {
  static final ValueNotifier<CustomAppLocale> _localeNotifier =
      ValueNotifier<CustomAppLocale>(AppLocaleNotifier.fallback);

  static ValueNotifier<CustomAppLocale> get notifier => _localeNotifier;

  static CustomAppLocale get currentLocale => _localeNotifier.value;

  static void setContext(CustomAppLocale locale) {
    if (_localeNotifier.value != locale) {
      _localeNotifier.value = locale;
    }
  }
}

mixin CurrencyRebuilderMixin<T extends StatefulWidget> on State<T> {
  @override
  void initState() {
    super.initState();
    GlobalAppLocaleHolder.notifier.addListener(_rebuild);
  }

  @override
  void dispose() {
    GlobalAppLocaleHolder.notifier.removeListener(_rebuild);
    super.dispose();
  }

  void _rebuild() => setState(() {});
}

class CustomAppLocale extends Locale {
  CustomAppLocale({
    required this.name,
    required String languageCode,
    String? countryCode,
    String? currencySymbol,
  })  : currencySymbol = currencySymbol ?? '\$',
        super(languageCode, countryCode);
  final String name;
  final String? currencySymbol;

  factory CustomAppLocale.fromString(String source) {
    final regExp = RegExp(
      r'^CustomAppLocale\(name: (.*?), languageCode: (.*?), countryCode: (.*?), currencySymbol: (.*?)\)$',
    );

    final match = regExp.firstMatch(source);
    if (match == null) {
      throw FormatException('Invalid CustomAppLocale string: $source');
    }

    String? parseValue(String? value) => value == 'null' ? null : value;

    return CustomAppLocale(
      name: match.group(1)!,
      languageCode: match.group(2)!,
      countryCode: parseValue(match.group(3)),
      currencySymbol: parseValue(match.group(4)),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is CustomAppLocale &&
            runtimeType == other.runtimeType &&
            other.name == name &&
            languageCode == other.languageCode &&
            countryCode == other.countryCode &&
            currencySymbol == other.currencySymbol;
  }

  @override
  int get hashCode {
    return Object.hash(
      name,
      languageCode,
      countryCode,
      currencySymbol,
    );
  }

  @override
  String toString() {
    return 'CustomAppLocale(name: $name, languageCode: $languageCode, countryCode: $countryCode, currencySymbol: $currencySymbol)';
  }
}
