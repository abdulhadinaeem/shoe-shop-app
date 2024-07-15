import 'package:flutter/material.dart';
import 'package:shoes_shop_app/view/shoes_view/component/bottom_content_widget.dart';
import 'package:shoes_shop_app/view/shoes_view/component/topbar_widget.dart';

class Shoes extends StatelessWidget {
  final String image;
  final String tag;

  const Shoes({super.key, required this.image, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: tag,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
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
            child: const Stack(
              children: <Widget>[TopBarWidget(), BottomContentWidget()],
            ),
          ),
        ),
      ),
    );
  }
}
