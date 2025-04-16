import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Asgmt extends StatefulWidget {
  final String title;
  final String date;
  const Asgmt({super.key, required this.title, required this.date});

  @override
  State<Asgmt> createState() => _AsgmtState();
}

class _AsgmtState extends State<Asgmt> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Card(
          color: AppColors.white,
          elevation: 10,
          margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: double.infinity,
                height: 75,
                child: Center(
                  child: Text(
                    widget.title,
                    style: GoogleFonts.workSans(
                      color: AppColors.black,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 130,
                          height: 40,
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'Due Date :',
                            style: GoogleFonts.workSans(
                              color: AppColors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 40,
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            widget.date,
                            style: GoogleFonts.workSans(
                              color: AppColors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 190,
                      height: 55,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: AppColors.orange,
                        border: Border.all(color: AppColors.orange),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/hostel");
                        },
                        child: Center(
                          child: Text(
                            "Click for material",
                            style: GoogleFonts.workSans(
                              color: AppColors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
