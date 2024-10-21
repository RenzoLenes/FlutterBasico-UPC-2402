import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.menu),
        Icon(Icons.gamepad),
        CircleAvatar()
      ],),
      ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: CupertinoSearchTextField(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            borderRadius: BorderRadius.circular(20),
            placeholder: "Buscar juego",
            ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 300,
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: PostCard(),);
              },),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Stack(
                children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/spiderman.jpg",
                  width: double.infinity,
                  height: 120,
                  fit: BoxFit.cover),
                  )
                ],
              ),
            ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            "Más juegos",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.grey),
              ),
            )  
    ],),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        width: double.infinity,
        height:50,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [Icon(Icons.home),Text("Home")],
            ),
            Column(
              children: [Icon(Icons.explore_rounded),Text("explorer")],
            ),
            Column(
              children: [Icon(
                Icons.sports_esports_rounded,
                size:40)],
            ),
            Column(
              children: [Icon(Icons.home),Text("Home")],
            ),
            Column(
              children: [Icon(Icons.shop),Text("Store")],
            ),
          ],
        ),
      ),
    );
    
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.red, borderRadius: BorderRadius.circular(20),
      ),
      child: Stack( 
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
            "assets/crash.jpg",
            height: 300,
            width: 300,
            fit: BoxFit.cover),),
          const Positioned(
            right: 10,
            top: 10,
            child: Icon(
              Icons.favorite,
              color:Colors.white,
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Text(
              "Crash Bandicoot 4: It's about time",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20),
            ))
        ]
      ),
    );
  }
}