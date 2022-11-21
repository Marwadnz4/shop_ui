import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: const HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      title: Text(
        'مرحبا بكم في متجر الالكترونيات',
        style: GoogleFonts.getFont('Almarai'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ],
    );
  }
}
