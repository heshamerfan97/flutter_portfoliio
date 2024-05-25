

import '../shared/models/api_result_model.dart';
import 'dio_manager.dart';

class API {
  /// Dummy Links
  static String url = 'api';
  final String _validateToken = '$url/validateToken';
  final String _newToken = '$url/newToken';

  /// Auth
  final String _userData = '$url/getUserData';
  final String _getCountries = '$url/Country/GetAllCountryLimition';
  final String _sendOTP = '$url/Authentication/generateOTP';
  final String _validateOTP = '$url/Authentication/verifyOTP';
  final String _acceptTermsAndConditions = '$url/Authentication/TermsAndConditionsConfirmation';
  final String _addUserData = '$url/client/register';
  final String _logout = '$url/Authentication/logout';

  ///Client
  final String _getCities = "$url/Client/GetCitiesRegions";

  /// Home
  final String _getDashboardData = '$url/Dashboard/GetDashboardData';
  final String _getTermsAndConditions = '$url/Authentication/GetTermsAndConditions';
  final String _validateScannedCodeUrl = '$url/scanning/productScanning';
  final String _tierPrivilegesUrl = '$url/privilege/getPrivilege';

  /// User Profile
  final String _editUserData = '$url/client/editClient';
  final String _deleteUser = '$url/client/deleteClient';

  /// Notifications
  final String _getUserNotifications = '$url/mobileNotification/getNotificationsPaginated';
  final String _readNotification = '$url/mobileNotification/readNotification';

  /// Videos
  final String _getUserVideos = '$url/Videos/GetAllVideosPaginated';
  final String _videoAction = '$url/Videos/VideoAction';

  /// Redemption
  final String _getRedemptionProviders = '$url/Providers/GetAllProvidersMobile';
  final String _redeemReward = '$url/Redemption/RedeemedImpact';

  ///RewardingHistory
  final String _getRewardingHistory="$url/RewardingHistory/GetAllRewardingHistory";

  /// Offers
  final String _getOffers = '$url/OfferAchievement/getAllOffers';

  ///ManageAppLanguage
  final String _manageAppLanguage = '$url/Client/ManageAppLanguage';

  /// Auth
  Future<APIResultModel<T>> validateUserToken<T>() async {
    return APIResultModel.fromResponse(response: await DIOManger.get(path: _validateToken, parameters: {}));
  }

  Future<APIResultModel<T>> getCountriesData<T>() async {
    return APIResultModel.fromResponse(response: await DIOManger.get(path: _getCountries, parameters: {}), data: "data");
  }

  Future<APIResultModel<T>> requestNewToken<T>() async {
    return APIResultModel.fromResponse(response: await DIOManger.get(path: _newToken, parameters: {}));
  }

  Future<APIResultModel<T>> getUserData<T>(String token) async {
    return APIResultModel.fromResponse(response: await DIOManger.get(path: _userData, parameters: {"token": token}));
  }

  Future<APIResultModel<T>> sendOtp<T>(Map<String, dynamic> body) async =>
      APIResultModel.fromResponse(response: await DIOManger.post(path: _sendOTP, body: body), data: "data");

  Future<APIResultModel<T>> validateOtp<T>(Map<String, dynamic> body) async =>
      APIResultModel.fromResponse(response: await DIOManger.post(path: _validateOTP, body: body), data: "data");

  Future<APIResultModel<T>> acceptTermsAndConditions<T>() async =>
      APIResultModel.fromResponse(response: await DIOManger.post(path: _acceptTermsAndConditions, body: null));

  Future<APIResultModel<T>> addUserData<T>(Map<String, dynamic> body) async =>
      APIResultModel.fromResponse(response: await DIOManger.post(path: _addUserData, body: body));

  Future<APIResultModel<T>> logout<T>() async =>
      APIResultModel.fromResponse(response: await DIOManger.get(path: _logout, parameters: null));


  ///Client
  Future<APIResultModel<T>> getCities<T>() async =>
      APIResultModel.fromResponse(response: await DIOManger.get(path: _getCities, parameters: null), data: "data");

  /// Home
  Future<APIResultModel<T>> getHomeData<T>() async {
    return APIResultModel.fromResponse(response: await DIOManger.get(path: _getDashboardData, parameters: {}), data: "data");
  }
  Future<APIResultModel<T>> getTermsAndConditions<T>() async {
    return APIResultModel.fromResponse(response: await DIOManger.get(path: _getTermsAndConditions, parameters: {}), data: "data");
  }

  Future<APIResultModel<T>> validateScannedCode<T>(String code) async {
    return APIResultModel.fromResponse(
        response: await DIOManger.post(path: _validateScannedCodeUrl, body: {"code": code}));
  }

  Future<APIResultModel<T>> getTierPrivilege<T>(int id) async {
    return APIResultModel.fromResponse(
        response: await DIOManger.post(path: _tierPrivilegesUrl, body: {"tierId": id}), data: 'data');
  }

  /// User profile
  Future<APIResultModel<T>> editUserData<T>(Map<String, dynamic> body) async {
    return APIResultModel.fromResponse(
        response: await DIOManger.post(path: _editUserData, body: body,), data: "data");
  }
  Future<APIResultModel<T>> deleteUser<T>() async {
    return APIResultModel.fromResponse(
        response: await DIOManger.get(path: _deleteUser, parameters: {}));
  }


  /// Notifications
  Future<APIResultModel<T>> getUserNotifications<T>(Map<String, dynamic> body) async {
    return APIResultModel.fromResponse(
        response: await DIOManger.post(path: _getUserNotifications, body: body), data: "data");
  }
  Future<APIResultModel<T>> readNotification<T>(Map<String, dynamic> body, Map<String, dynamic>? parameters) async {
    return APIResultModel.fromResponse(
        response: await DIOManger.post(path: _readNotification, body: body, parameters: parameters), data: "data");
  }



  /// Videos
  Future<APIResultModel<T>> getUserVideos<T>(Map<String, dynamic> body) async {
    return APIResultModel.fromResponse(
        response: await DIOManger.post(path: _getUserVideos, body: body), data: "data");
  }
  Future<APIResultModel<T>> takeVideoAction<T>(Map<String, dynamic> body, Map<String, dynamic>? parameters) async {
    return APIResultModel.fromResponse(
        response: await DIOManger.post(path: _videoAction, body: body, parameters: parameters), data: "data");
  }

  /// Redemption
  Future<APIResultModel<T>> getRedemptionProviders<T>(int tierId) async {
    return APIResultModel.fromResponse(
        response: await DIOManger.get(path: _getRedemptionProviders, parameters: {"TireID": tierId}), data: "data");
  }
  Future<APIResultModel<T>> redeemReward<T>(int rewardId) async {
    return APIResultModel.fromResponse(
        response: await DIOManger.get(path: _redeemReward, parameters: {"rewardId": rewardId}), data: "data");
  }
  ///RewardingHistory
 Future<APIResultModel<T>>getRewardingHistory<T>()async{
    return APIResultModel.fromResponse(
      response: await DIOManger.get(path: _getRewardingHistory, parameters: {},) , data: "data"
    );
 }

  /// Offers
  Future<APIResultModel<T>> getOffers<T>(Map<String, dynamic> parameters) async {
    return APIResultModel.fromResponse(
        response: await DIOManger.get(path: _getOffers, parameters: parameters), data: "data");
  }

  Future<APIResultModel<T>> appLanguage<T>(String language) async {
    return APIResultModel.fromResponse(
        response: await DIOManger.post(path: _manageAppLanguage, body: {},parameters: {"lang": language} ), data: "data");
  }
}
