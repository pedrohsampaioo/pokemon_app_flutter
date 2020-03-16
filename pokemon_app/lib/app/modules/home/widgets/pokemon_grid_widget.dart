import 'package:flutter/material.dart';

class PokemonGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: 20,
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 4 / 5,
        crossAxisCount: 2,
      ),
      itemBuilder: (_, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Material(
                color: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: Image.network(
                    "http://www.serebii.net/pokemongo/pokemon/020.png",
                    height: 128,
                  ),
                ),
              ),
            ),
            Text("sasaas"),
            SizedBox(height: 16.0),
          ],
        );
      },
    );
  }
}
