import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:go_router/go_router.dart';
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green[100],
            floating: true,
            pinned: true,
            expandedHeight: 100.0, 
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true, 
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    // Main title
                    'Projects', 
                    style: GoogleFonts.domine(
                      textStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, 
                      ),
                    ),
                  ),
                  Visibility(
                    visible: false, // Initially invisible description
                    child: Text(
                      'A showcase of all my work',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    color: Colors.green[300], // Background color
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Text(
                        'A showcase of all my work',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                // real Estate app
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                    vertical: 4,
                  ),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          child: Image.asset(
                            'assets/images/realEstate_app.png',
                            width: double.infinity,
                            // height: 200.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                          ),
                          child: Text(
                            'EstateEase App',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            'A real estate management platform with secure user authentication, property browsing, and listing capabilities. Tenants can manage leases, make online payments, and access invoices through a dedicated dashboard.',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: IconButton(
                              style: IconButton.styleFrom(
                                  backgroundColor: Colors.pinkAccent),
                              icon: Icon(
                                Icons.link_sharp,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                debugPrint('Link clicked!');
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                  ),
                ),

                // blue eye insurance
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                    vertical: 4,
                  ),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          child: Image.asset(
                            'assets/images/blue_eye.png',
                            width: double.infinity,
                            // height: 200.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                          ),
                          child: Text(
                            'Blue Eye Insurance Agency',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            'Blue Eye Insurance Agency is a web app for financial advisors that allows them to generate personalized leads, schedule meetings, and share financial content with clients through a blog section.',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: IconButton(
                              style: IconButton.styleFrom(
                                  backgroundColor: Colors.pinkAccent),
                              icon: Icon(
                                Icons.link_sharp,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                debugPrint('Link clicked!');
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                  ),
                ),

                // mtaa mall
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                    vertical: 4,
                  ),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          child: Image.asset(
                            'assets/images/mtaamall.png',
                            width: double.infinity,
                            // height: 200.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                          ),
                          child: Text(
                            'Storefront',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            'Storefront eCommerce is a modern online shopping platform with product listings, category filtering, detailed pages, and seamless navigation, designed for performance and user-friendliness.  ',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: IconButton(
                              style: IconButton.styleFrom(
                                  backgroundColor: Colors.pinkAccent),
                              icon: Icon(
                                Icons.link_sharp,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                debugPrint('Link clicked!');
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
