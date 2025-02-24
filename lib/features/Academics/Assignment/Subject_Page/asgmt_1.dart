import 'package:erp/core/common/widgets/assignment_card.dart';
import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class asgmt_1 extends StatefulWidget {
  const asgmt_1({super.key});

  @override
  State<asgmt_1> createState() => _asgmt_1State();
}

class _asgmt_1State extends State<asgmt_1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.white),
          backgroundColor: AppColors.orange,
          title: Center(
            child: Text(
              'MATHS         ',
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
            onPressed: () => Navigator.pop(context, '/assignment'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Asgmt(title: 'First Assignment', date: "22/04/2024"),
            Asgmt(title: 'Second Assignment', date: "22/05/2024"),
          ],
        ),
      ),
    );
  }
}
