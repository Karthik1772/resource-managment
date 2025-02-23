import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:erp/core/common/widgets/Card_box.dart';

class Hostel extends StatefulWidget {
  const Hostel({super.key});

  @override
  State<Hostel> createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.white),
        title: Center(
          child: Text(
            'HOSTEL        ',
            style: GoogleFonts.varelaRound(
              color: AppColors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: AppColors.orange,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, '/homepage'),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardBox(
                  icon: Icons.access_time,
                  title: "Outing History",
                  // onPressed: () => Navigator.pushNamed(context, routeName),
                ),
                CardBox(
                  icon: Icons.home_outlined,
                  title: "Home history",
                  onPressed: () => Navigator.pushNamed(context, '/marks'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardBox(
                  icon: Icons.library_books_outlined,
                  title: "Complaints",
                  // onPressed: () => Navigator.pushNamed(context, routeName),
                ),
                CardBox(
                  icon: Icons.food_bank_outlined,
                  title: "Food Feed Back",
                  // onPressed: () => Navigator.pushNamed(context, '/marks'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
