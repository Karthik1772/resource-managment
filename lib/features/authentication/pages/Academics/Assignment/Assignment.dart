import 'package:erp/core/common/widgets/Card_box.dart';
import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.white),
          backgroundColor: AppColors.orange,
          title: Center(
            child: Text(
              'ASSIGNMENTS        ',
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
            onPressed: () => Navigator.pop(context, '/academics'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardBox(
                    icon: Icons.menu_book_sharp,
                    title: "MATHS",
                    onPressed: () => Navigator.pushNamed(context, '/asgmt1'),
                  ),
                  CardBox(
                    icon: Icons.menu_book_sharp,
                    title: "DSDV",
                    // onPressed: () => Navigator.pushNamed(context, '/sub2'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardBox(
                    icon: Icons.menu_book_sharp,
                    title: "EPC",
                    // onPressed: () => Navigator.pushNamed(context, '/sub3'),
                  ),
                  CardBox(
                    icon: Icons.menu_book_sharp,
                    title: "NT",
                    // onPressed: () => Navigator.pushNamed(context, '/sub4'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardBox(
                    icon: Icons.menu_book_sharp,
                    title: "AD LAB",
                    // onPressed: () => Navigator.pushNamed(context, '/sub5'),
                  ),
                  CardBox(
                    icon: Icons.menu_book_sharp,
                    title: "ED",
                    // onPressed: () => Navigator.pushNamed(context, '/sub6'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardBox(
                    icon: Icons.menu_book_sharp,
                    title: "C++ LAB",
                    // onPressed: () => Navigator.pushNamed(context, '/sub7'),
                  ),
                  CardBox(
                    icon: Icons.menu_book_sharp,
                    title: "SCR",
                    // onPressed: () => Navigator.pushNamed(context, '/sub8'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
