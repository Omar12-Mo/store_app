import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/widgets/card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Text("Store App"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.cart)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  8.0 , vertical: 15),
        child: GridView.builder(
          clipBehavior: Clip.none,
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount :2,
           childAspectRatio: 1.2,
           crossAxisSpacing: 10,
           mainAxisSpacing: 40
          ),
          itemBuilder: (context, index) {
            return const CardItem();
          },
        ),
      ),
    );
  }
}
