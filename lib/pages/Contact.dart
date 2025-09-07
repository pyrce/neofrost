import 'package:flutter/material.dart';

class ContactFormPage extends StatefulWidget {
  @override
  _ContactFormPageState createState() => _ContactFormPageState();
}

class _ContactFormPageState extends State<ContactFormPage> {
  final _formKey = GlobalKey<FormState>();

  // Contrôleurs pour récupérer les valeurs
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _objectController = TextEditingController();
  final _messageController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Ici tu peux envoyer les données ou faire une action
      print("Formulaire envoyé avec succès !");
      print("Nom: ${_nameController.text}");
      print("Prénom: ${_surnameController.text}");
      print("Email: ${_emailController.text}");
      print("Téléphone: ${_phoneController.text}");
      print("Objet: ${_objectController.text}");
      print("Message: ${_messageController.text}");

      // Nettoyer le formulaire
      _formKey.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Row(children:[Text("Neofrost  ",style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) )),
        Text("contact", style: TextStyle(fontSize: 24,color:Color(0xFFFF00FF) ) )]),
          toolbarHeight: 100,backgroundColor:Color(0x0A0A0A)  ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) =>
                value!.isEmpty ? 'Please enter your name' : null,
              ),
              TextFormField(
                controller: _surnameController,
                decoration: InputDecoration(labelText: 'Surname'),
                validator: (value) =>
                value!.isEmpty ? 'Please enter your surname' : null,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) return 'Please enter your email';
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value))
                    return 'Enter a valid email';
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) return 'Please enter your phone number';
                  if (!RegExp(r'^\d+$').hasMatch(value))
                    return 'Only digits are allowed';
                  return null;
                },
              ),
              TextFormField(
                controller: _objectController,
                decoration: InputDecoration(labelText: 'Object'),
                validator: (value) =>
                value!.isEmpty ? 'Please enter the object' : null,
              ),
              TextFormField(
                controller: _messageController,
                decoration: InputDecoration(labelText: 'Message'),
                maxLines: 4,
                validator: (value) =>
                value!.isEmpty ? 'Please enter your message' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Envoyer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
