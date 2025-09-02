import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Card buildContactCard({required IconData icon, required String text}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16), // rounded corners
    ),
    elevation: 6, // soft shadow
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xff2b475e),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 18,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontFamily: GoogleFonts.abel().fontFamily,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
