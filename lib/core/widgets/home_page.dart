import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // logo
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 16
              ),
              child: Text(
                "g.ku",
                style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                  )
                ),
              ),
            ),
          
          // nav icons
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 16
              ),
                child: Icon(
                  Icons.menu,
                  color: Colors.green,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/profile.jpeg",
              height: 500,
              width: 450,
              ),
            )
            ),
            
            SizedBox(),

            Text(
              'Gilbert Kutoto',
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 60,
                fontWeight: FontWeight.w900,
                // fontStyle: FontStyle.italic,
                color: Colors.green,
              ),
            ),
            ],
      ),
      // navigation
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        
        child: Container(
          // decorate/ style the container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.green,
          ),
          
          // add padding to the container
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            
            child: GNav(
              // add style Gnav
              gap: 10,
              backgroundColor: Colors.green,
              color: Colors.white,
              activeColor: Colors.pink,
              tabBackgroundColor: Colors.white,
              padding: EdgeInsets.all(20),
              tabs: [
                GButton(icon: Icons.home,
                text: "Home"
                ),
                GButton(icon: Icons.info,
                text: "About",
                ),
                GButton(icon: Icons.read_more,
                text: "Blogs",
                ),
                GButton(icon: Icons.email,
                text: "Contact Me",),
                // GButton(icon: Icons.home),
            
              ]
              ),
          ),
        ),
      ),
    );
  }

  
  
}