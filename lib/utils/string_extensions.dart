import '../application/application.dart';
import '../language/language_bloc/language_bloc.dart';

const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];




extension StringExtensions on String {

  String localize() => LanguageBloc.localizedStrings[this]??this;

  String localizeNumber() {
    String number = this;
    if (Application.isArabic) {
      for (int i = 0; i < english.length; i++) {
        number = number.replaceAll(english[i], arabic[i]);
      }
    }
    return number;
  }

  String removeNumbers() => replaceAll('1', '')
      .replaceAll('2', '')
      .replaceAll('3', '')
      .replaceAll('4', '')
      .replaceAll('5', '')
      .replaceAll('6', '')
      .replaceAll('7', '')
      .replaceAll('8', '')
      .replaceAll('9', '')
      .replaceAll('0', '');

  String removeChars() => replaceAll('h', '')
      .replaceAll('l', '')
      .replaceAll('n', '')
      .replaceAll('p', '')
      .replaceAll('[', '')
      .replaceAll(']', '');

  String replace(String replacement) => replaceAll(this, replacement);

  String replaceIndex(String replacement, int index) => substring(0, index) + replacement + substring(index + 1);

  String insert(String text, int index) => substring(0, index) + text + substring(index);
}
