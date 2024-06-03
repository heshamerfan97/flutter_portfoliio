import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/modules/contacts/controller/contacts_cubit.dart';
import 'package:portfolio/modules/contacts/models/contact.dart';
import 'package:portfolio/modules/contacts/ui/components/contact_tile.dart';


class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactsCubit, List<Contact>>(
      builder: (context, contacts) {
        return Wrap(
          children: contacts.map((contact) => ContactTile(contact)).toList(),
          direction: Axis.horizontal,

        );/*Resizer(
            desktop: Row(children: contacts.map((contact) => ContactTile(contact)).toList(),),
            largeMobile: Row(children: contacts.map((contact) => ContactTile(contact)).toList(),),
            mobile: Row(children: contacts.map((contact) => ContactTile(contact)).toList(),),
            tablet: Row(children: contacts.map((contact) => ContactTile(contact)).toList(),));*/
      },
    );
  }
}
