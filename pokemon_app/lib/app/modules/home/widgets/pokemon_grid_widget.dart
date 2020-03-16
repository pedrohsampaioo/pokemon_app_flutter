import 'package:flutter/material.dart';

class PokemonGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: 21,
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.8,
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (_, index) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 5,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Material(
                          color: Color(0xFFeeebe8),
                          child: InkWell(
                            onTap: () {},
                            child: Image.network(
                              "http://www.serebii.net/pokemongo/pokemon/020.png",
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: CircleAvatar(
                          maxRadius: 15,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xFF304661),
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                child: Text(
                  "Pokemon",
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFF7c818b),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        );
      },
    );
  }
}
