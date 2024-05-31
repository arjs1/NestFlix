import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nestflix_movie/core/utilis/carousel_data.dart';
import 'package:nestflix_movie/core/utilis/movie_data.dart';
import 'package:nestflix_movie/pages/descriptionpage/description_carousel_page.dart';
import 'package:nestflix_movie/pages/homescreen/model/carousel_model.dart';
import 'package:nestflix_movie/pages/homescreen/model/movie_model.dart';
import 'package:nestflix_movie/pages/homescreen/widgets/header_widget.dart';
import 'package:nestflix_movie/pages/homescreen/widgets/movie_container.dart';
import 'package:nestflix_movie/pages/viewpage/view_all_page.dart';

import 'widgets/carousel_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    String logindata = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            HeaderWidget(logindata: logindata),
            SizedBox(
              height: 20,
            ),
            Text(
              "Most Watched Movie".toUpperCase(),
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            CarouselSlider.builder(
              itemCount: carouseldata.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionPage(),
                        settings: RouteSettings(
                          arguments: carouselModel(
                            imagePath: carouseldata[itemIndex].imagePath,
                            imageTitle: carouseldata[itemIndex].imageTitle,
                            movieStar:
                                carouseldata[itemIndex].movieStar ?? "n/a",
                            movieDescription:
                                carouseldata[itemIndex].movieDescription,
                          ),
                        ),
                      ),
                    );
                  },
                  child: CarouselWidget(
                    imagePath: carouseldata[itemIndex].imagePath,
                    imageTitle: carouseldata[itemIndex].imageTitle,
                    movieStar: carouseldata[itemIndex].movieStar ?? "n/a",
                    movieDescription: carouseldata[itemIndex].movieDescription,
                  ),
                ),
              ),
              options: CarouselOptions(viewportFraction: 1),
            ),
            SizedBox(
              height: 18,
            ),
            // ListView.builder(
            //   physics: NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   // scrollDirection: Axis.horizontal,
            //   itemCount: moviedata.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return
            //     );
            //   },
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending Movies",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewAllPage()),
                    );
                  },
                  child: Text(
                    "View more",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 10.0,
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionPage(),
                        settings: RouteSettings(
                          arguments: MovieModel(
                            moviePath: moviedata[index].moviePath,
                            movieTitle: moviedata[index].movieTitle,
                            movieStar: moviedata[index].movieStar,
                            movieDescription: moviedata[index].movieDescription,
                          ),
                        ),
                      ),
                    );
                  },
                  child: MovieContainer(
                    moviePath: moviedata[index].moviePath,
                    movieStar: moviedata[index].movieStar,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
