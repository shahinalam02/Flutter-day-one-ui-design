import 'package:day_01_flutter/widgets/catalogcard2.dart';
import 'package:day_01_flutter/widgets/recipes_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/catalogcard.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Search \nFor Recipes",
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.redAccent[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: const [
                        SizedBox(width: 20),
                        Icon(
                          Icons.search,
                          size: 25,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Serach for a recipe',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 60),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.redAccent[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.mic,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const CatalogCard(
                  catlogname: "Thai",
                  assets: "assets/thai.png",
                  color: Colors.redAccent,
                ),
                CatalogCard2(
                  catlogname: "Pizza",
                  assets: "assets/pizz.png",
                  color: Colors.grey[100]!,
                ),
                CatalogCard2(
                  catlogname: "American",
                  assets: "assets/American.png",
                  color: Colors.grey[100]!,
                ),
                CatalogCard2(
                  catlogname: "Thai",
                  assets: "assets/thai.png",
                  color: Colors.grey[100]!,
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
            child: Text(
              "Trending Recipes",
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 280,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                RecipesCard(
                  catlogname: "Fried noodle with pork",
                  rating: '4.5',
                  assets: "assets/traditional.png",
                  color: Color(0xFFFF9F9F),
                ),
                RecipesCard(
                  catlogname: "Fried noodle with pork",
                  rating: '4.5',
                  assets: "assets/imgbin_chow-mein.png",
                  color: Color(0xFF9EFABA),
                ),
                RecipesCard(
                  catlogname: "Fried noodle with pork",
                  rating: '4.5',
                  assets: "assets/noodles.png",
                  color: Color(0xFFBDF5E4),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 95,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.home,
                        size: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Home',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.favorite,
                  size: 30,
                  color: Colors.white,
                ),
                const Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.white,
                ),
                const Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
