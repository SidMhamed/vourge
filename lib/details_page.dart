import 'package:flutter/material.dart';

class CompanyDetailsPage extends StatelessWidget {
  _buildSettingsElement(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(text,
            style: TextStyle(
              color: Colors.blue,
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildCompanyImage(),
        _buildCompanyDescriptionAndRating(),
        _buildUerActions(),
        _buildCompanyDescription(),
      ],
    );
  }

  _buildCompanyImage() {
    return Image.network(
        "https://www.smartmssa.com/assets/img/blog/blog4Beta.png");
  }

  _buildCompanyDescriptionAndRating() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Smart SM SA",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Mauritania, NKTT",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.deepOrangeAccent,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  _buildUerActions() {
    Widget rocket = _buildSettingsElement(Icons.map_sharp, "Location");
    Widget call = _buildSettingsElement(Icons.call, "Call");
    Widget share = _buildSettingsElement(Icons.share, "Share");

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [call, rocket, share],
    );
  }

  _buildCompanyDescription() {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Text(
          "Flutter is an open-source UI toolkit from Google for building natively compiled applications across mobile, web, and desktop platforms using a single codebase. It's known for its fast development, expressive UI, and native performance."),
    );
  }
}
