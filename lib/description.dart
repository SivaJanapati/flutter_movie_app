import 'package:flutter/material.dart';
import 'package:movie/utils/text.dart';

class Description extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote, launch_on;

  const Description(
      {super.key,
      required this.name,
      required this.description,
      required this.bannerurl,
      required this.posterurl,
      required this.vote,
      required this.launch_on});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        bannerurl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: modified_text(
                        text: 'AverageRating - ' + vote,
                        color: Colors.white,
                        size: 13),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: modified_text(
                  text: name,
                  size: 24,
                  color: Colors.white,
                )),
            Container(
                padding: EdgeInsets.only(left: 10),
                child: modified_text(
                  text: 'Releasing On - ' + launch_on,
                  size: 14,
                  color: Colors.white,
                )),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  height: 200,
                  width: 100,
                  child: Image.network(posterurl),
                ),
                Flexible(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: modified_text(
                        text: description,
                        size: 18,
                        color: Colors.white,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
