import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 150,
          width: 180,
          child: Card(
            color: Colors.white,
            shadowColor: Colors.grey,
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:  8.0 , vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  Text("T-shirt"),
                 Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   
                    children: [Text("\$123"), Icon(CupertinoIcons.heart)],
                  ),
                ],
              ),
            ),
          ),
        ),
         Positioned(
          left: 40,
          bottom: 70,
           child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCoGtnOF2x3rvnwZJW9S1E_3RmXct-CYvZKg&s",
                  width: 100,
                  height: 90,
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
         ),
      ],
    );
  }
}
