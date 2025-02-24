import 'package:erp/core/common/widgets/Card_box.dart';
import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.white),
          title: Center(
            child: Text(
              'LIBRARY        ',
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Card(
                  elevation: 10,
                  surfaceTintColor: AppColors.transperent,
                  child: Center(
                    child: SfRadialGauge(
                      axes: [
                        RadialAxis(
                          minimum: 0,
                          maximum: 100,
                          ranges: [
                            GaugeRange(
                              startValue: 0,
                              endValue: 35,
                              color: AppColors.red,
                            ),
                            GaugeRange(
                              startValue: 35,
                              endValue: 70,
                              color: AppColors.orange,
                            ),
                            GaugeRange(
                              startValue: 70,
                              endValue: 100,
                              color: Colors.green,
                            ),
                          ],
                          pointers: const [NeedlePointer(value: 0)],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardBox(title: "Books", icon: Icons.book),
                  CardBox(title: "Journals", icon: Icons.my_library_books),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardBox(title: "News", icon: Icons.newspaper),
                  CardBox(
                    title: "History",
                    icon: Icons.location_history_rounded,
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
