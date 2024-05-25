class CustomException implements Exception {
  String cause;

  CustomException(this.cause) {
    throw (cause);
  }
}
