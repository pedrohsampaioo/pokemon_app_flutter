import 'package:flutter/material.dart';

import '../widgets/close_page_icon_widget.dart';

class TopInformationComponent extends StatelessWidget {
  final String titlePage;

  const TopInformationComponent({
    Key key,
    @required this.titlePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 32),
              Image.asset(
                "assets/images/pokemon_logo.png",
                height: 72,
              ),
              const SizedBox(height: 16),
              Text(
                "Welcome $titlePage",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2c3956),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Search, filter and favorite several Pokemon",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2c3956),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: ClosePageIconWidget(
            action: () => Navigator.pop(context),
          ),
        ),
      ],
    );
  }
}
