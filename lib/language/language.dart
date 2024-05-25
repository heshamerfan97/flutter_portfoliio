import 'dart:ui';

class Language {
  final TextDirection textDirection;
  final Locale locale;
  final String name;

  const Language({
    required this.textDirection,
    required this.locale,
    required this.name,
  });
}
