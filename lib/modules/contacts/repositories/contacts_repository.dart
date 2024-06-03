import 'package:fluttericon/font_awesome_icons.dart';
import 'package:portfolio/modules/contacts/models/contact.dart';

import '../../../api/api.dart';

class ContactsRepository {
  final API _api;

  ContactsRepository({API? api}) : _api = api ?? API();

  Future<List<Contact>> getContacts() async {
    return _contacts;
  }

  final List<Contact> _contacts = [
    Contact(title: "Github", url: "https://github.com/heshamerfan97", iconData: FontAwesome.github_squared),
    Contact(title: "LinkedIn", url: "https://www.linkedin.com/in/hesham-erfan-876b83105", iconData: FontAwesome.linkedin_squared),
    Contact(title: "Facebook", url: "https://www.facebook.com/heshamerfan7", iconData: FontAwesome.facebook_squared),
    Contact(title: "WhatsApp", url: "https://api.whatsapp.com/send/?phone=201154351174", iconData: FontAwesome.whatsapp),
  ];
}
