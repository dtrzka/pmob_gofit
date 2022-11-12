import 'package:flutter/material.dart';
import 'package:flutter_1/workout_detail.dart';

class colCards extends StatelessWidget {
  final String id;
  final String title;
  final String text;
  final String image;
  colCards(this.id, this.title, this.text, this.image);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            WoDetail.routeName,
            arguments: id,
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage('images/$image'),
              height: 150,
              fit: BoxFit.cover,
            ),
            Positioned(
                bottom: 45,
                right: 16,
                left: 16,
                child: Text(
                  title,
                  style: const TextStyle(
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
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
