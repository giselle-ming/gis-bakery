import 'package:bakeryshop/models/food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 237, 131, 211),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          // image
          Image.asset(food.image, height: 80, width: 80),
          const SizedBox(height: 10),

          // name
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),

          // price
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${food.price}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow[700]),
                    const SizedBox(width: 5),
                    Text(
                      food.rating,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
