import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Pengembangan extends StatelessWidget {
  const Pengembangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: CircleAvatar(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              icon: const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Halaman dalam pengembangan',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
