import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipesCard extends StatelessWidget {
  final String catlogname;
  final String rating;
  final String assets;
  final Color color;
  const RecipesCard(
      {Key? key,
      required this.catlogname,
      required this.rating,
      required this.assets,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Color(0xFFA1A1A1),
                blurRadius: 5,
                blurStyle: BlurStyle.normal)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              assets,
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                catlogname,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.redAccent,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      rating,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
