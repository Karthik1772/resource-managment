import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sem_marks extends StatefulWidget {
  const Sem_marks({super.key});

  @override
  State<Sem_marks> createState() => _Sem_marksState();
}

class _Sem_marksState extends State<Sem_marks> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.white),
          title: Center(
            child: Text(
              'SEM MARKS        ',
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
            onPressed: () => Navigator.pop(context, '/marks'),
          ),
        ),
        body: Column(
          children: [
            const TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  // icon: Icon(Icons.border_color_sharp),
                  text: '1st sem',
                ),
                Tab(
                  // icon: Icon(Icons.border_all_rounded),
                  text: '2nd sem',
                ),
                Tab(
                  // icon: Icon(Icons.border_clear),
                  text: '3rd sem',
                ),
                Tab(
                  // icon: Icon(Icons.border_clear),
                  text: '4th sem',
                ),
                Tab(
                  // icon: Icon(Icons.border_clear),
                  text: '5th sem',
                ),
                Tab(
                  // icon: Icon(Icons.border_clear),
                  text: '6th sem',
                ),
                Tab(
                  // icon: Icon(Icons.border_clear),
                  text: '7th sem',
                ),
                Tab(
                  // icon: Icon(Icons.border_clear),
                  text: '8th sem',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
