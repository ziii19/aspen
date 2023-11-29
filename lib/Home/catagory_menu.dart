import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int activeButtonIndex = 0; // Indeks tombol yang aktif

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            buildButton('Location', 0),
            const SizedBox(width: 20),
            buildButton('Hotels', 1),
            const SizedBox(width: 20),
            buildButton('Food', 2),
            const SizedBox(width: 20),
            buildButton('Adventure', 3),
            const SizedBox(width: 20),
            buildButton('Peace', 4),
            const SizedBox(width: 20),
            buildButton('Mountain', 5),
          ],
        ),
      ),
    );
  }

  Widget buildButton(String text, int index) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: activeButtonIndex == index
            ? const Color.fromARGB(255, 184, 210, 255)
            : const Color.fromARGB(44, 255, 255, 255),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
      ),
      onPressed: () {
        setState(() {
          activeButtonIndex = index;
        });
      },
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: activeButtonIndex == index ? Colors.blue : const Color(0XFFB8B8B8),
        ),
      ),
    );
  }
}
