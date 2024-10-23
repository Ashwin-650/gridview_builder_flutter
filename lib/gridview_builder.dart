import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Grid View builder',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 133, 216, 255),
      ),
      body: GridView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/widget.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 50,
                width: 50,
              ),
            );
          }),
      backgroundColor: Colors.white,
    );
  }
}
