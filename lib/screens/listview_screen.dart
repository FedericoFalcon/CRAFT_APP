import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:craft_app/models/contact_model.dart';
import 'package:craft_app/providers/contact_provider.dart';
import 'package:craft_app/screens/contactdetails_screen.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Contactos'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: contactProvider.contacts.map((contact) {
          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.phone),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.arrow_circle_right_outlined),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactDetailsScreen(contact: contact),
                ),
              );
            },
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, 'home');
          } else if (index == 1) {
            // Nada, ya estamos aca
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddContactDialog(context, contactProvider);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _showAddContactDialog(BuildContext context, ContactProvider contactProvider) async {
    String name = '';
    String phone = '';
    String email = '';
    String notes = '';

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Agregar Contacto'),
          content: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Nombre:'),
                onChanged: (value) {
                  name = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Teléfono:'),
                onChanged: (value) {
                  phone = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Email:'),
                onChanged: (value) {
                  email = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Notas adicionales:'),
                onChanged: (value) {
                  notes = value;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                if (name.isNotEmpty && phone.isNotEmpty) {
                  contactProvider.addContact(Contact(name: name, phone: phone, email: email, notes: notes));
                }
                Navigator.pop(context);
              },
              child: const Text('Agregar'),
            ),
          ],
        );
      },
    );
  }
}