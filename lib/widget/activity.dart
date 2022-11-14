import 'package:flutter/material.dart';
import 'package:flutter_1/gifstep.dart';
import 'package:flutter_1/video_page.dart';

class Activity extends StatelessWidget {
  final String title;
  final String text;
  final String id;
  final String image;
  Activity(this.title, this.text, this.id, this.image);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 2,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Steps()),
          );
        },
        child: Row(
          // alignment: Alignment.center,
          children: <Widget>[
            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Ink.image(
                  image: AssetImage('images/$image'),
                  height: 100,
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(
              width: 240,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Wrap(
                  direction: Axis.vertical,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      text,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color(0x8C000000),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
