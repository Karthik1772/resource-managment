import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  final String? name;
  final String? ans;
  final double height;
  final double width;
  Details({
    super.key,
    this.name,
    this.ans,
    required this.height,
    required this.width,
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: widget.width,
          height: widget.height,
          margin: EdgeInsets.only(left: 25),
          child: Text(
            widget.name!,
            // style: TextStyle(fontSize: 16),
            style: GoogleFonts.workSans(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          width: widget.width,
          height: widget.height,
          margin: EdgeInsets.only(right: 25),
          child: Text(
            widget.ans!,
            style: GoogleFonts.workSans(color: AppColors.black, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
