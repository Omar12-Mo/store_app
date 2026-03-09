import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.grey,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCoGtnOF2x3rvnwZJW9S1E_3RmXct-CYvZKg&s",
              width: 100,
              height: 80,
              fit: BoxFit.cover,
        
              loadingBuilder: (context, child, loadingProgress) => child,
              // handle loading errors gracefully
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  width: 100,
                  height: 100,
                  child: Icon(Icons.broken_image, color: Colors.black),
                );
              },
            ),
            Text("T-shirt"),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [Text("\$123"), Gap(40), Icon(CupertinoIcons.heart)],
            ),
          ],
        ),
      ),
    );
  }
}
