import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Image.asset(
                    'assets/img/nike.png',
                    height: 70,
                    width: double.infinity,
                  ),
                  Positioned(
                      top: 8,
                      left: 8,
                      child: SvgPicture.asset('assets/icon/favorite_item.svg'))
                ]),
              ],
            ),
          );
        },
      ),
    );
  }
}
