import 'package:flutter/material.dart';
import 'package:shoes_shop_app/view/home/compnents/app_bar_widget.dart';
import 'package:shoes_shop_app/view/home/compnents/category_widget.dart';
import 'package:shoes_shop_app/view/home/compnents/make_item_widget.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              CategoryWidget(),
              SizedBox(height: 20),
              MakeItemWidget(
                image: 'assets/images/one.jpg',
                tag: 'red',
                duration: 1500,
              ),
              MakeItemWidget(
                image: 'assets/images/two.jpg',
                tag: 'blue',
                duration: 1600,
              ),
              MakeItemWidget(
                image: 'assets/images/three.jpg',
                tag: 'white',
                duration: 1700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
