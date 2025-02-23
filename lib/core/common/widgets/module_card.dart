import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Module extends StatefulWidget {
  final String name;
  Module({super.key, required this.name});

  @override
  State<Module> createState() => _ModuleState();
}

class _ModuleState extends State<Module> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 150,
        width: double.infinity,
        child: Card(
          color: AppColors.white,
          elevation: 10,
          margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 130,
                height: 50,
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  widget.name,
                  style: GoogleFonts.workSans(
                    color: AppColors.black,
                    fontSize: 28,
                  ),
                ),
              ),
              Container(
                width: 190,
                height: 40,
                margin: EdgeInsets.only(left: 10, right: 15),
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
                      "Click for notes",
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
      ),
    );
  }
}
