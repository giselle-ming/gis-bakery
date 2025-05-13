import 'package:bakeryshop/components/button.dart';
import 'package:bakeryshop/components/food.tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bakeryshop/models/food.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foodMenu = [
    Food(
      name: "Chocolate Cake",
      price: "20",
      image: "lib/images/cake.png",
      rating: "4.5",
    ),
    Food(
      name: "Vanilla Cake",
      price: "15",
      image: "lib/images/cake.png",
      rating: "4.0",
    ),
    Food(
      name: "Strawberry Cake",
      price: "25",
      image: "lib/images/cake.png",
      rating: "5.0",
    ),
    Food(
      name: "Red Velvet Cake",
      price: "30",
      image: "lib/images/cake.png",
      rating: "4.8",
    ),
    Food(
      name: "Lemon Cake",
      price: "18",
      image: "lib/images/cake.png",
      rating: "4.2",
    ),
    Food(
      name: "Carrot Cake",
      price: "22",
      image: "lib/images/cake.png",
      rating: "4.6",
    ),
    Food(
      name: "Cheesecake",
      price: "28",
      image: "lib/images/cake.png",
      rating: "4.9",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: const Color.fromARGB(255, 142, 17, 61),
        ),
        title: Text(
          "Menu",
          style: TextStyle(color: const Color.fromARGB(255, 141, 0, 49)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[300],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get 20% off',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    MyButton(text: "Redeem", onTap: () {}),
                  ],
                ),
                // promo imege
                Image.asset('lib/images/cake.png', height: 100, width: 100),
              ],
            ),
          ),

          const SizedBox(height: 25),
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink[300]!),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink[300]!),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Food Menu",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 141, 0, 49),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(food: foodMenu[index]),
            ),
          ),
          const SizedBox(height: 25),
          // popular food
          Container(
            child: Row(
              children: [
                Image.asset('lib/images/cake.png', height: 60),

                Column(
                  children: [
                    Text(
                      "Chocolate Cake",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 141, 0, 49),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "\$20",
                      style: TextStyle(fontSize: 18, color: Colors.pink[300]),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
