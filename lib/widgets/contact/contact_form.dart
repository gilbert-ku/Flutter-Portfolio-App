import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                return 'Please write a message';
              }
              return null;
            },
          ),

          // ElevatedButton(onPressed: () {}, child: Text("Send"))
          SizedBox(height: 5,),
          Container(
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
                backgroundColor: Colors.transparent, // Set to transparent
                shadowColor: Colors.transparent, // Remove default shadow
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
          )
        ],
      ),
    );
  }
}
