import 'package:flutter/material.dart';
import 'package:pokemon_app/app/presentation/home/widgets/custom_app_bar_widget.dart';
import 'package:pokemon_app/app/presentation/home/widgets/filter_widget.dart';
import 'package:pokemon_app/app/presentation/home/widgets/pokemon_grid_widget.dart';
import 'package:pokemon_app/app/presentation/home/widgets/sort_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(),
      backgroundColor: Color(0xFFf7f8fe),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: <Widget>[
                _buildTitle(),
                _buildFilterWidgets(),
                SizedBox(height: 32),
                PokemonGridWidget(),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFilterWidgets() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          flex: 4,
          child: SortWidget(),
        ),
        Flexible(
          flex: 2,
          child: SizedBox(),
        ),
        Flexible(
          flex: 4,
          child: FilterWidget(),
        )
      ],
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Text(
        "Welcome",
        style: TextStyle(
          color: Color(0xFF0d3861),
          fontSize: 32.0,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
