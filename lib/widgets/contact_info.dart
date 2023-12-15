import 'package:flutter/material.dart';
import 'package:craft_app/models/contact_model.dart';

class ContactInfo extends StatelessWidget {
  final Contact contact;

  const ContactInfo({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Nombre: ${contact.name}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        Text('Teléfono: ${contact.phone}', style: const TextStyle(fontSize: 20)),
        Text('Email: ${contact.email.isNotEmpty ? contact.email : ' '}', style: const TextStyle(fontSize: 20)),
        Text('Notas: ${contact.notes}', style: const TextStyle(fontSize: 20)),
      ],
    );
  }
}