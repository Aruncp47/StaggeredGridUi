import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Staggered(),
  ));
}

class Staggered extends StatelessWidget {
  const Staggered({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StaggeredTile> stile = [
      const StaggeredTile.count(2, 2),
      const StaggeredTile.count(2, 2),
      const StaggeredTile.count(2, 3),
      const StaggeredTile.count(2, 2),
      const StaggeredTile.count(2, 3),
      const StaggeredTile.count(2, 2),
      const StaggeredTile.count(2, 3),
      const StaggeredTile.count(2, 2),
    ];
    final List<Tile> tile = [
      const Tile(
          Url:
              "https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&s=612x612&w=0&h=i38qBm2P-6V4vZVEaMy_TaTEaoCMkYhvLCysE7yJQ5Q=",
          Caption: "Nature",
          Subtitle: "Subtitle"),
      const Tile(
          Url:
              "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/new-york-skyline-on-a-sunny-day-with-clear-blue-sky-royalty-free-image-1577127184.jpg",
          Caption: "Building",
          Subtitle: "Subtitle"),
      const Tile(
          Url:
              "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/new-york-skyline-on-a-sunny-day-with-clear-blue-sky-royalty-free-image-1577127184.jpg",
          Caption: "Building",
          Subtitle: "Subtitle"),
      const Tile(
          Url:
              "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/new-york-skyline-on-a-sunny-day-with-clear-blue-sky-royalty-free-image-1577127184.jpg",
          Caption: "Building",
          Subtitle: "Subtitle"),
      const Tile(
          Url:
              "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/new-york-skyline-on-a-sunny-day-with-clear-blue-sky-royalty-free-image-1577127184.jpg",
          Caption: "Building",
          Subtitle: "Subtitle"),
      const Tile(
          Url:
              "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/new-york-skyline-on-a-sunny-day-with-clear-blue-sky-royalty-free-image-1577127184.jpg",
          Caption: "Building",
          Subtitle: "Subtitle"),
      const Tile(
          Url:
              "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/new-york-skyline-on-a-sunny-day-with-clear-blue-sky-royalty-free-image-1577127184.jpg",
          Caption: "Building",
          Subtitle: "Subtitle"),
      const Tile(
          Url:
              "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/new-york-skyline-on-a-sunny-day-with-clear-blue-sky-royalty-free-image-1577127184.jpg",
          Caption: "Building",
          Subtitle: "Subtitle"),
    ];
    return Scaffold(
      appBar: AppBar(title: Text("StaggeredEx")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 6,
            crossAxisSpacing: 6,
            staggeredTiles: stile,
            children: tile),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String Url;
  final String Caption;
  final String Subtitle;

  const Tile(
      {Key? key,
      required this.Url,
      required this.Caption,
      required this.Subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.network(Url),
        const SizedBox(height: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Caption,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(Subtitle)
          ],
        )
      ]),
    );
  }
}
