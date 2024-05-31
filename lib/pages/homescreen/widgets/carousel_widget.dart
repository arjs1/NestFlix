import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:nestflix_movie/pages/descriptionpage/description_page.dart';
// import 'package:nestflix_movie/pages/homescreen/model/carousel_model.dart';

class CarouselWidget extends StatelessWidget {
  final String imagePath;
  final String imageTitle;
  final String movieStar;
  final String movieDescription;
  const CarouselWidget(
      {super.key,
      required this.imagePath,
      required this.imageTitle,
      required this.movieStar,
      required this.movieDescription});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      padding: EdgeInsets.all(15),
      alignment: Alignment.bottomLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            imageTitle,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Container(
            width: 100,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: Text(
              "Watch now",
              style: GoogleFonts.poppins(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
