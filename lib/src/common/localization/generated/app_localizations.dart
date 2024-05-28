import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// Title of the app
  ///
  /// In en, this message translates to:
  /// **'Alias'**
  String get appTitle;

  /// Title 'New game'
  ///
  /// In en, this message translates to:
  /// **'New game'**
  String get newGame;

  /// Title `How to play`
  ///
  /// In en, this message translates to:
  /// **'How to play'**
  String get howToPlay;

  /// Title of packages page
  ///
  /// In en, this message translates to:
  /// **'Packages'**
  String get packagesTitle;

  /// Title of teams page
  ///
  /// In en, this message translates to:
  /// **'Teams'**
  String get teamsTitle;

  /// Title of game settings page
  ///
  /// In en, this message translates to:
  /// **'Game settings'**
  String get gameSettingsTitle;

  /// Easy difficulty of the package
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get easyPackageDifficulty;

  /// Medium difficulty of the package
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get mediumPackageDifficulty;

  /// Hard difficulty of the package
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get hardPackageDifficulty;

  /// Add team button title
  ///
  /// In en, this message translates to:
  /// **'Add team'**
  String get addTeamTitle;

  /// No description provided for @penaltySettingTitle.
  ///
  /// In en, this message translates to:
  /// **'Penalty for skipping'**
  String get penaltySettingTitle;

  /// No description provided for @numberOfWordsSettingTitle.
  ///
  /// In en, this message translates to:
  /// **'Number of words'**
  String get numberOfWordsSettingTitle;

  /// No description provided for @numberOfWordsSettingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'to win'**
  String get numberOfWordsSettingSubtitle;

  /// No description provided for @gameTimeSettingTitle.
  ///
  /// In en, this message translates to:
  /// **'Time of the game'**
  String get gameTimeSettingTitle;

  /// No description provided for @gameTimeSettingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'in seconds'**
  String get gameTimeSettingSubtitle;

  /// No description provided for @continueTitle.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueTitle;

  /// No description provided for @acceptTitle.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get acceptTitle;

  /// No description provided for @letsGoTitle.
  ///
  /// In en, this message translates to:
  /// **'Let\'s go'**
  String get letsGoTitle;

  /// No description provided for @round.
  ///
  /// In en, this message translates to:
  /// **'round'**
  String get round;

  /// No description provided for @play.
  ///
  /// In en, this message translates to:
  /// **'play'**
  String get play;

  /// No description provided for @playTitle.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get playTitle;

  /// No description provided for @seconds.
  ///
  /// In en, this message translates to:
  /// **'sec'**
  String get seconds;

  /// No description provided for @guessedTitle.
  ///
  /// In en, this message translates to:
  /// **'Guessed'**
  String get guessedTitle;

  /// No description provided for @passedTitle.
  ///
  /// In en, this message translates to:
  /// **'Passed'**
  String get passedTitle;

  /// No description provided for @startTitle.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get startTitle;

  /// No description provided for @championTitle.
  ///
  /// In en, this message translates to:
  /// **'Champion'**
  String get championTitle;

  /// No description provided for @startOverTitle.
  ///
  /// In en, this message translates to:
  /// **'Start over'**
  String get startOverTitle;

  /// No description provided for @exitTitle.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exitTitle;

  /// No description provided for @teamTigers.
  ///
  /// In en, this message translates to:
  /// **'Tigers'**
  String get teamTigers;

  /// No description provided for @teamChickens.
  ///
  /// In en, this message translates to:
  /// **'Chickens'**
  String get teamChickens;

  /// No description provided for @teamFoxes.
  ///
  /// In en, this message translates to:
  /// **'Foxes'**
  String get teamFoxes;

  /// No description provided for @teamDogs.
  ///
  /// In en, this message translates to:
  /// **'Dogs'**
  String get teamDogs;

  /// No description provided for @teamFrogs.
  ///
  /// In en, this message translates to:
  /// **'Frogs'**
  String get teamFrogs;

  /// No description provided for @teamWolfs.
  ///
  /// In en, this message translates to:
  /// **'Wolfs'**
  String get teamWolfs;

  /// No description provided for @prepareTitle.
  ///
  /// In en, this message translates to:
  /// **'Prepare'**
  String get prepareTitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
