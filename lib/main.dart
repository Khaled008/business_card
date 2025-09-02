import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/contact_card.dart';

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff2b475e),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile Avatar
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 95,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 90,
                      backgroundImage:
                          AssetImage('assets/images/Hire-Flutter.png'),
                    ),
                  ),
                ),

                // Name
                Text(
                  'Khaled Omar',
                  style: TextStyle(
                    fontFamily: GoogleFonts.pacifico().fontFamily,
                    fontSize: 32,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),

                Text(
                  '-Flutter Developer-',
                  style: TextStyle(
                    fontFamily: GoogleFonts.juliusSansOne().fontFamily,
                    fontSize: 24,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),

                Divider(
                  color: Colors.black,
                  indent: 60,
                  endIndent: 60,
                  height: 5,
                  thickness: 1.2,
                ),

                buildContactCard(
                  icon: Icons.phone,
                  text: '(+20) 123 456 7890',
                ),

                buildContactCard(
                  icon: Icons.mail,
                  text: 'Khaled123@gmail.com',
                ),

                buildContactCard(
                  icon: Icons.language,
                  text: 'www.arabflutterdev.com',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
