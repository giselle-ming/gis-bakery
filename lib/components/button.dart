import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 170, 215),
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(color: Colors.white, fontSize: 20)),

            const SizedBox(width: 10),

            Icon(
              Icons.arrow_forward,
              color: const Color.fromARGB(255, 208, 46, 167),
            ),
          ],
        ),
      ),
    );
  }
}
