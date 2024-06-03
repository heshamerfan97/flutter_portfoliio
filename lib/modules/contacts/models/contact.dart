import 'package:flutter/material.dart';

class Contact {
  final String title, url;
  final IconData iconData;

  Contact({
    required this.title,
    required this.url,
    required this.iconData,
  });

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
      title: json['title'],
      url: json['url'],
      iconData: json['iconData']
    );

  Map<String, dynamic> toJson() => {
    'title': title,
    'url': url,
    'iconData': iconData,
  };
}