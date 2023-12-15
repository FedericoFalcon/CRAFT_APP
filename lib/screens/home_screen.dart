import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:craft_app/models/contact_model.dart';
import 'package:craft_app/providers/contact_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: Colors.blue,
      ),
      body: IndexedStack(
        index: 0,
        children: [
          Container(
            color: Colors.black,
            child: const Center(
              child: FadeInImage(
                placeholder: AssetImage('../../assets/images/loading.gif'),
                image: NetworkImage('https://picsum.photos/id/100/1200'),
                fit: BoxFit.fill,
                height: 1000,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, 'home');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, 'listview');
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
