import 'package:flutter/material.dart';
import 'package:nestflix_movie/core/utilis/movie_data.dart';
import 'package:nestflix_movie/pages/descriptionpage/description_page.dart';
import 'package:nestflix_movie/pages/homescreen/model/carousel_model.dart';

import 'package:nestflix_movie/pages/homescreen/widgets/movie_container.dart';

class ViewAllPage extends StatefulWidget {
  const ViewAllPage({super.key});

  @override
  State<ViewAllPage> createState() => _ViewAllPageState();
}

class _ViewAllPageState extends State<ViewAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 10.0,
            ),
            itemCount: moviedata.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionPage(),
                        settings: RouteSettings(
                            arguments: carouselModel(
                          imagePath: moviedata[index].moviePath,
                          imageTitle: moviedata[index].movieTitle,
                          movieDescription: moviedata[index].movieDescription,
                          movieStar: moviedata[index].movieStar,
                        )),
                      ),
                    );
                  },
                  child: MovieContainer(
                    moviePath: moviedata[index].moviePath,
                    movieStar: moviedata[index].movieStar,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
