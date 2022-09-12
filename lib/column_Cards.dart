import 'package:flutter/material.dart';

class colCards extends StatelessWidget {
  final String title;
  final String text;
  final AssetImage image;
  const colCards(
      {Key? key, required this.title, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: image,
            child: InkWell(
              onTap: () {},
            ),
            height: 150,
            fit: BoxFit.cover,
          ),
          Positioned(
              bottom: 45,
              right: 16,
              left: 16,
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              )),
          Positioned(
            bottom: 16,
            right: 16,
            left: 16,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
