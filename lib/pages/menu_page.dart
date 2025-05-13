import 'package:bakeryshop/components/button.dart';
import 'package:bakeryshop/components/food_tile.dart';
import 'package:bakeryshop/pages/details_page.dart';
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

  void navigateToDetailsPage(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailsPage()),
    );
  }

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
                // promo image
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
                hintText: "Search here...",
              ),
            ),
          ),
          const SizedBox(height: 25),
          // menu list
          SizedBox(
            height: 300.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    "Food Menu",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: foodMenu.length,
                    itemBuilder:
                        (context, index) => FoodTile(
                          food: foodMenu[index],
                          onTap: () => navigateToDetailsPage(index),
                        ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),

          // popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(
              left: 25.0,
              right: 25.0,
              bottom: 25.0,
            ),
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // image
                    Image.asset('lib/images/cake.png', height: 60.0),

                    const SizedBox(width: 20.0),

                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // name
                        Text(
                          'Chocolate Cake',
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(height: 10.0),

                        // price
                        Text(
                          foodMenu[3].price,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // star rating
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow[700]),
                    Text(
                      foodMenu[3].rating,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),

                // heart
                IconButton(
                  onPressed: () {
                    // handle favorite action
                  },
                  icon: const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.red,
                    size: 28.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
