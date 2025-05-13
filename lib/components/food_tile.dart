import 'package:bakeryshop/models/food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: const EdgeInsets.only(left: 15.0),
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // image
              Image.asset(food.image, height: 80.0, width: 80.0),
              // text
              Text(
                food.name,
                style: GoogleFonts.dmSerifDisplay(fontSize: 20.0),
              ),
              SizedBox(
                width: 100.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // price
                    Text(
                      food.price,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                      ),
                    ),

                    Row(
                      children: [
                        // rating
                        Icon(Icons.star, color: Colors.yellow[700]),
                        Text(
                          food.rating,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: -8,
            right: -8,
            child: IconButton(
              onPressed: () {
                // handle favorite action
              },
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.grey,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
