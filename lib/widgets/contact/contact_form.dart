import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          // boxshadow
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 8,
              offset: Offset(4, 4),
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Colors.green.withOpacity(0.9),
              Colors.pink.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Form(
              child: TextFormField(
                maxLength: 50,
                decoration: InputDecoration(helper: Text("Name")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
