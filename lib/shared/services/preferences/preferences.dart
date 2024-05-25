class Preferences {
  static String user = 'user';
  static String userCountryId = 'userCountryId';
  static String theme = 'theme';
  static String darkOption = 'darkOption';
  static String language = 'lang';
  static String firstTime = 'firstTime';
  static String token = 'token';
  static String termsAndConditions = 'termsAndConditions';
  static String onBoardingFinished = 'onBoardingFinished';
  static String fcmToken = 'fcmToken';


  ///Singleton factory
  static final Preferences _instance = Preferences._internal();

  factory Preferences() {
    return _instance;
  }

  Preferences._internal();
}
