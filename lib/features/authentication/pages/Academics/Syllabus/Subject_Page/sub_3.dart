import 'package:erp/core/common/widgets/module_card.dart';
import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sub_3 extends StatefulWidget {
  const Sub_3({super.key});

  @override
  State<Sub_3> createState() => _Sub_3State();
}

class _Sub_3State extends State<Sub_3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.white),
          backgroundColor: AppColors.orange,
          title: Center(
            child: Text(
              'MATHS          ',
              style: GoogleFonts.varelaRound(
                color: AppColors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, '/syllabus'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Module(name: "Module 1"),
            Module(name: "Module 2"),
            Module(name: "Module 3"),
            Module(name: "Module 4"),
            Module(name: "Module 5"),
          ],
        ),
      ),
    );
  }
}
