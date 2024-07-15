import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  final categories = const ['All', 'Sneakers', 'Football', 'Soccer', 'Golf'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final duration = 1000 + index * 100;
          return AspectRatio(
            aspectRatio: 2.2 / 1,
            child: FadeInUp(
              duration: Duration(milliseconds: duration),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: const TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
