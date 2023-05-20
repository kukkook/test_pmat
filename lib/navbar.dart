import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        color: Color.fromARGB(255, 200, 231, 251),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        // SizedBox(
        //   width: screenSize.width / 4,
        // ),
        Padding(
          padding: const EdgeInsets.only( left: 91),
          child: SizedBox(
            height: 70,
            width: 100,
            child: Image.asset(
              'assets/banner/logo.png',
            ),
          ),
        ),
        SizedBox(
          width: screenSize.width / 2,
        ),
        SizedBox(
          height: 30,
          // width: 62,
          child: TextButton(
            child: Text(
              "หน้าแรก",
              style: GoogleFonts.sarabun(
                fontSize: 20,
                color: Color.fromARGB(255, 22, 93, 152),
              ),
            ),
            onPressed: () => context.go('/') ,
          ),
        ),
        SizedBox(
          width: 40,
        ),
        SizedBox(
          height: 30,
          // width: 62,
          child: TextButton(
            child: Text(
              "เกี่ยวกับเรา",
              style: GoogleFonts.sarabun(
                fontSize: 20,
                color: Color.fromARGB(255, 22, 93, 152),
              ),
            ),
            onPressed: () => context.go('/about') ,
          ),
        ),

        SizedBox(
          width: 40,
        ),
        Container(
          height: 30,
          // width: 100,
          // color: Colors.amber,
          child: TextButton(
            child: Text(
              "งานบริการ",
              style: GoogleFonts.sarabun(
                fontSize: 20,
                color: Color.fromARGB(255, 22, 93, 152),
              ),
            ),
            onPressed: () => context.go('/services'),
          ),
        ),
        SizedBox(
          width: 40,
        ),
        TextButton(
          child: Text(
            "ติดต่อเรา",
            style: GoogleFonts.sarabun(
              fontSize: 20,
              color: Color.fromARGB(255, 22, 93, 152),
            ),
          ),
          onPressed: () => context.go('/contact') ,
        ),
          ],
        ),
      ),
    );
  
  }
}