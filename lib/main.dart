// ignore_for_file: library_private_types_in_public_ap
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'eWalle',
      home: SignInPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/bg_home.png"),
              )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _topContent(),
                    _centerContent(),
                    _bottomContent(context)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

Widget _topContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const SizedBox(
        height: 18,
      ),
      Row(
        children: <Widget>[
          Text(
            "06:20 PM",
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: const Color(0xff1B1D28),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Image.asset("assets/cloud.png"),
          const SizedBox(
            width: 10,
          ),
          Text(
            "32° C",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: const Color(0xff1B1D28),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 14,
      ),
      Text(
        "Nov.10.2020 | Wednesday",
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: const Color(0xff7B7F9E),
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

Widget _centerContent() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset("assets/logo.png"),
        const SizedBox(
          height: 18,
        ),
        Text(
          "eWalle",
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: const Color(0xff1B1D28),
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          "Open An Account For Digital  E-Wallet Solutions.Instant Payouts. \n\nJoin For Free.",
          style: GoogleFonts.poppins(
            fontSize: 15,
            height: 1.6,
            color: const Color(0xff7b7f9e),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}

Widget _bottomContent(context) {
  return Column(
    children: <Widget>[
      MaterialButton(
        elevation: 0,
        color: const Color(0xFFFFAC30),
        height: 50,
        minWidth: 200,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: Text(
          "Sign In",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: const Color(0xff212330),
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      GestureDetector(
        onTap: () {},
        child: Text(
          "Create an Account",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: const Color(0xff212330),
            fontWeight: FontWeight.w500,
          ),
        ),
      )
    ],
  );
}
