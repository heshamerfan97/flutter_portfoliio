
import 'package:bloc/bloc.dart';
import 'package:portfolio/modules/contacts/repositories/contacts_repository.dart';

import '../models/contact.dart';

class ContactsCubit extends Cubit<List<Contact>> {
  ContactsCubit({ContactsRepository? contactsRepository})
      : _contactsRepository = contactsRepository ?? ContactsRepository(),
        super([]);

  final ContactsRepository _contactsRepository;

  Future<void> loadContacts() async {
    final contacts = await _contactsRepository.getContacts();
    emit(contacts);
  }
}
