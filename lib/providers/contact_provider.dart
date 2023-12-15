import 'package:flutter/material.dart';
import 'package:craft_app/models/contact_model.dart';

class ContactProvider extends ChangeNotifier {
  final List<Contact> _contacts = [];

  // Constructor para agregar algunos contactos por defecto, se puede usar para probar el scroll infinito
  ContactProvider() {
    _contacts.add(Contact(name: 'Ignacio Durando', phone: '291444444', email: 'nacho@gmail.com', notes: 'Amigo de tal'));
    _contacts.add(Contact(name: 'Federico Falcón', phone: '221777777', email: 'fede@hotmail.com', notes: 'Trabaja en tal lugar'));
  }

  List<Contact> get contacts => _contacts;

  void addContact(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}