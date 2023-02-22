import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogCard extends StatelessWidget {
  final String catlogname;
  final String assets;
  final Color color;
  const CatalogCard(
      {Key? key,
      required this.catlogname,
      required this.assets,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.redAccent,
                blurRadius: 5,
                blurStyle: BlurStyle.outer)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              assets,
              height: 30,
              width: 30,
              color: Colors.white,
            ),
            Text(
              catlogname,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
