import 'logger.dart';

class TypeChecker {
  static int? isInt(dynamic number, {String? className, String? varName}) {
    if (number is int) {
      return number;
    } else {
      throwTypeConflictException(number, "int", className: className, varName: varName);
      return null;
    }
  }

  static String? isString(dynamic text, {String? className, String? varName}) {
    if (text is String) {
      return text;
    } else {
      throwTypeConflictException(text, "String", className: className, varName: varName);
      return null;
    }
  }

  static double? isDouble(dynamic number, {String? className, String? varName}) {
    if (number is double) {
      return number;
    } else {
      throwTypeConflictException(number, "double", className: className, varName: varName);
      return null;
    }
  }

  static DateTime? isDateTime(dynamic dateTime, {String? className, String? varName}) {
    if (dateTime is DateTime) {
      return dateTime;
    } else {
      throwTypeConflictException(dateTime, "DateTime", className: className, varName: varName);
      return null;
    }
  }

  static bool? isBool(dynamic question, {String? className, String? varName}) {
    if (question is bool) {
      return question;
    } else {
      throwTypeConflictException(question, "bool", className: className, varName: varName);
      return null;
    }
  }

  static throwTypeConflictException(dynamic value, String mainType, {String? className, String? varName}) =>
      Logger.logError("${varName ?? ""} is ${value.runtimeType} which is not subtype of type $mainType",
          tag: "Handled Type conflict in $className");
}
