import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/widgets/card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Store app"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.cart)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
         
          children: [
            CardItem()
          ],
        ),
      ),
    );
  }
}
