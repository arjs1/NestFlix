import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nestflix_movie/pages/homescreen/model/carousel_model.dart';
import 'package:nestflix_movie/pages/homescreen/model/movie_model.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    carouselModel? carouseldata =
        ModalRoute.of(context)?.settings.arguments as carouselModel;
    MovieModel? moviedata =
        ModalRoute.of(context)?.settings.arguments as MovieModel;
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.width / 0.9,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: MovieModel == Null
                      ? AssetImage(carouseldata.imagePath)
                      : AssetImage(moviedata.moviePath),
                  fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber[900],
                  size: 30,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  MovieModel == Null
                      ? carouseldata.movieStar!
                      : moviedata.movieStar,
                  style: GoogleFonts.bebasNeue(
                    color: Colors.amber[900],
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              // carouselModel == null
              //  ? moviedata.movieTitle.toUpperCase():carouseldata.imageTitle.toUpperCase(),

              MovieModel == Null
                  ? carouseldata.imageTitle
                  : moviedata.movieTitle,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              MovieModel == Null
                  ? carouseldata.movieDescription
                  : moviedata.movieDescription,
              style: GoogleFonts.poppins(
                color: Colors.white,
                wordSpacing: 2.0,
                height: 2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
