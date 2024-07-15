import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class BottomContentWidget extends StatelessWidget {
  const BottomContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      width: MediaQuery.of(context).size.width,
      height: 500,
      child: FadeInUp(
        duration: const Duration(milliseconds: 1000),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(0),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FadeInUp(
                duration: const Duration(milliseconds: 1300),
                child: const Text(
                  "Sneakers",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              FadeInUp(
                duration: const Duration(milliseconds: 1400),
                child: const Text(
                  "Size",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),
              _buildSizeOptions(),
              const SizedBox(height: 60),
              FadeInUp(
                duration: const Duration(milliseconds: 1500),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSizeOptions() {
    final sizes = ['40', '42', '44', '46'];
    return Row(
      children: sizes.map((size) {
        final isSelected = size == '42'; // Example: Mark size '42' as selected
        return FadeInUp(
          duration: const Duration(milliseconds: 1450),
          child: Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : null,
              borderRadius: isSelected ? BorderRadius.circular(10) : null,
            ),
            child: Center(
              child: Text(
                size,
                style: TextStyle(
                  color: isSelected ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
