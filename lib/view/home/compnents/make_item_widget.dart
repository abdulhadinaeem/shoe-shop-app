import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoes_shop_app/view/shoes_view/shoes.dart';

class MakeItemWidget extends StatelessWidget {
  const MakeItemWidget({
    super.key,
    required this.image,
    required this.tag,
    required this.duration,
  });

  final int duration;
  final String image;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: duration),
      child: Hero(
        tag: tag,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Shoes(image: image, tag: tag),
              ),
            );
          },
          child: Container(
            height: 250,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 10,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeInUp(
                            duration: const Duration(milliseconds: 1000),
                            child: const Text(
                              "Sneakers",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          FadeInUp(
                            duration: const Duration(milliseconds: 1100),
                            child: const Text(
                              "Nike",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1200),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.favorite_border,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                FadeInUp(
                  duration: const Duration(milliseconds: 1200),
                  child: const Text(
                    "100\$",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
