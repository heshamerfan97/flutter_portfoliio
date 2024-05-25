import '../../../application/application.dart';
import '../../../config/constants.dart';

class Images {
  static const base = 'assets/images';

  static const logo = '$base/logo.png';
  static const male = '$base/male.png';
  static const female = '$base/female.png';

  static String prepareNetworkImage(String path) {
    return '${Application.debug ? Constants.debugBaseUrl : Constants.releaseBaseUrl}$path';
  }

}
