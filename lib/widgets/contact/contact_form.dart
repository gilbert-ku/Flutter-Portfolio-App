import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // name
          TextFormField(
            cursorColor: Colors.pink, // Ensures caret color matches the design
            style: TextStyle(fontSize: 17),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink, width: 1.0),
                borderRadius: BorderRadius.circular(12),
              ),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.pink,
                size: 20, // Slightly increased size for better visibility
              ),
              hintText: 'What do people call you?',
              hintStyle: TextStyle(
                color: Color.fromRGBO(
                    250, 246, 246, 0.6), // Slightly increased opacity
                fontSize: 14, // Slightly larger for readability
              ),
              labelText: 'Name *',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          SizedBox(
            height: 5,
          ),
          // email
          TextFormField(
            cursorColor: Colors.pink, // Ensures caret color matches the design
            style: TextStyle(fontSize: 17),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink, width: 1.0),
                borderRadius: BorderRadius.circular(12),
              ),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.pink,
                size: 20, // Slightly increased size for better visibility
              ),
              hintText: 'Please Enter Your Email',
              hintStyle: TextStyle(
                color: Color.fromRGBO(
                    250, 246, 246, 0.6), // Slightly increased opacity
                fontSize: 14, // Slightly larger for readability
              ),
              labelText: 'Email *',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),

          SizedBox(
            height: 5,
          ),

          // phone number
          TextFormField(
            cursorColor: Colors.pink, // Ensures caret color matches the design
            style: TextStyle(fontSize: 17),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink, width: 1.0),
                borderRadius: BorderRadius.circular(12),
              ),
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.pink,
                size: 20, // Slightly increased size for better visibility
              ),
              hintText: 'Please Enter Your Phone No',
              hintStyle: TextStyle(
                color: Color.fromRGBO(
                    250, 246, 246, 0.6), // Slightly increased opacity
                fontSize: 14, // Slightly larger for readability
              ),
              labelText: 'Phone No *',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone';
              }
              return null;
            },
          ),

          SizedBox(
            height: 5,
          ),

          // message
          TextFormField(
            cursorColor: Colors.pink, // Ensures caret color matches the design
            style: TextStyle(fontSize: 17),
            keyboardType: TextInputType.multiline,
            minLines: 1, //Normal textInputField will be displayed
            maxLines: 5,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink, width: 1.0),
                borderRadius: BorderRadius.circular(12),
              ),
              
              hintText: 'Write a Message...',
              hintStyle: TextStyle(
                color: Color.fromRGBO(
                    250, 246, 246, 0.6), // Slightly increased opacity
                fontSize: 14, // Slightly larger for readability
              ),
              labelText: 'Message ',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
