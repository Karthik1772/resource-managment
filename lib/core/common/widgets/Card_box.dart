import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardBox extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onPressed;
  const CardBox({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: 170,
        height: 170,
        child: Card(
          elevation: 5,
          color: AppColors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon, weight: 10, size: 80),
              Center(
                child: Text(
                  title,
                  style: GoogleFonts.workSans(
                    color: AppColors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
