import 'package:flutter/material.dart';

// this class contains constants in the app.
class Constants {
  static const debugBaseUrl = "http://172.17.54.235:90/";
  static const releaseBaseUrl = "http://172.17.54.235:90/";

  static const String errorImage =
      'https://media.istockphoto.com/vectors/error-page-dead-emoji-illustration-vector-id1095047472?k=20&m=1095047472&s=612x612&w=0&h=1lDW_CWDLYwOUO7tAsLHnXTSwuvcWqWq4rysM1y6-E8=' /*'https://via.placeholder.com/150.png'*/;

  static const String userErrorImage =
      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png';

  static Widget errorImageBuilder(ctx, o, t) => Image.network(errorImage);

}
