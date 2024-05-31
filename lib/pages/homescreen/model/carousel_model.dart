class carouselModel {
  final String imagePath;
  final String imageTitle;
  final String? movieStar;
  final String movieDescription;

  carouselModel(
      {required this.imagePath,
      required this.imageTitle,
      this.movieStar,
      required this.movieDescription});
}
