import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieContainer extends StatefulWidget {
  final String moviePath;

  final String movieStar;

  const MovieContainer({
    super.key,
    required this.moviePath,
    required this.movieStar,
  });

  @override
  State<MovieContainer> createState() => _MovieContainerState();
}

class _MovieContainerState extends State<MovieContainer> {
  bool ispressed = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.moviePath), fit: BoxFit.cover),
            ),
          ),
        ),
        Row(
          children: [
            Text(
              widget.movieStar,
              style: GoogleFonts.poppins(
                color: Colors.amber[900],
                fontSize: 15,
              ),
            ),
            SizedBox(
              width: 65,
            ),
            IconButton(
              onPressed: () {
                void pressed(bool value) {
                  setState(() {
                    ispressed = value;
                  });
                }
              },
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}
