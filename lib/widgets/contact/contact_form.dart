import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

// form validator

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    // form validator key
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(255, 255, 255, 0.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // name
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor: Colors.pink,
                    style: TextStyle(fontSize: 17, color: Colors.black),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink, width: 1.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.pink,
                        size:
                            20, // Slightly increased size for better visibility
                      ),
                      hintText: 'What do people call you?',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(
                            250, 246, 246, 0.6), // Slightly increased opacity
                        fontSize: 14, // Slightly larger for readability
                      ),
                      labelText: 'Name *',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 16.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                ),

                // email
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor:
                        Colors.pink, // Ensures caret color matches the design
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink, width: 1.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.pink,
                        size: 20,
                      ),
                      hintText: 'Please Enter Your Email',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(
                          250,
                          246,
                          246,
                          0.6,
                        ), // Slightly increased opacity
                        fontSize: 14,
                      ),
                      labelText: 'Email *',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 16.0),
                    ),
                    // Replace autovalidate with autovalidateMode
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (input) {
                      // Safely check if input is not null and then validate
                      if (input != null && input.isValidEmail()) {
                        return null; // valid email
                      }
                      return "Check your email"; // invalid email
                    },
                  ),
                ),

                // phone number
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor: Colors.pink,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink, width: 1.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.pink,
                        size: 20,
                      ),
                      hintText: 'Please Enter Your Phone No',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(
                          250,
                          246,
                          246,
                          0.6,
                        ),
                        fontSize: 14,
                      ),
                      labelText: 'Phone No *',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 16.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone';
                      }
                      return null;
                    },
                  ),
                ),

                // message
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor:
                        Colors.pink, // Ensures caret color matches the design
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                    keyboardType: TextInputType.multiline,
                    minLines: 1, //Normal textInputField will be displayed
                    maxLines: 5,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink, width: 1.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Write a Message...',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(
                          250,
                          246,
                          246,
                          0.6,
                        ), // Slightly increased opacity
                        fontSize: 14, // Slightly larger for readability
                      ),
                      labelText: 'Message ',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 16.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please write a message';
                      }
                      return null;
                    },
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                // button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.green,
                          Colors.pink,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius:
                          BorderRadius.circular(50), // Match the button's shape

                      // boxshadow
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8,
                          offset: Offset(4, 4),
                        ),
                      ],
                    ),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.transparent, // Set to transparent
                        shadowColor:
                            Colors.transparent, // Remove default shadow
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(50), // Match the container
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                      ),
                      onPressed: () {
                        // downloadFile(context);
                        if (formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      label: Text(
                        "Send",
                        style: GoogleFonts.domine(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
