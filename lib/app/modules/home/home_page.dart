import 'package:flutter/material.dart';
import 'package:pokemon_app/app/shared/bloc/pokemon_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_app/app/modules/home/widgets/custom_app_bar_widget.dart';
import 'package:pokemon_app/app/modules/home/widgets/filter_widget.dart';
import 'package:pokemon_app/app/modules/home/widgets/pokemon_grid_widget.dart';
import 'package:pokemon_app/app/modules/home/widgets/sort_widget.dart';
import 'package:pokemon_app/app/shared/widgets/map_state_to_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _blocPokemon = Modular.get<PokemonBloc>();
  ScrollController _scrollController;
  final int limitOfElements = 21;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    fetchPokemon(
      PokemonFetch(
        currentPage: currentPage,
        limit: limitOfElements,
      ),
    );
    _scrollController = ScrollController();
    _scrollController.addListener(_handleInfinityList);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _handleInfinityList() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        _blocPokemon.state is PokemonLoaded) {
      fetchPokemon(
        PokemonListMore(
          currentPage: currentPage,
          limit: limitOfElements,
        ),
      );
    }
  }

  void fetchPokemon(PokemonEvent event) {
    _blocPokemon.add(event);
    currentPage += limitOfElements;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(),
      backgroundColor: Color(0xFFf7f8fe),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: <Widget>[
                _buildTitle(),
                _buildFilterWidgets(),
                SizedBox(height: 32),
                MapStateToWidget<PokemonBloc, PokemonState>(
                  bloc: _blocPokemon,
                  statesToWidgets: {
                    PokemonInitial: (state) {
                      return Container();
                    },
                    PokemonLoading: (state) {
                      return Column(
                        children: <Widget>[
                          PokemonGridWidget(
                            pokemonList:
                                (state as PokemonLoading).pokemonList ?? [],
                          ),
                          SizedBox(height: 16),
                          Center(
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xFF0d3663),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    PokemonLoaded: (state) {
                      return PokemonGridWidget(
                        pokemonList: (state as PokemonLoaded).pokemonList,
                      );
                    },
                    PokemonError: (state) {
                      return Center(
                        child: Text((state as PokemonError).message),
                      );
                    },
                  },
                ),
                SizedBox(height: 32),
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
          child: SortWidget(
            action: () {},
          ),
        ),
        Flexible(
          flex: 2,
          child: SizedBox(),
        ),
        Flexible(
          flex: 4,
          child: FilterWidget(
            action: () {},
          ),
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
