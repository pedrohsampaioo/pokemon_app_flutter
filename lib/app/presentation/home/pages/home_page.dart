import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_app/app/application/auth/authentication_status/authentication_status_bloc.dart';

import '../../../application/pokemon/infinite_list/infinite_list_bloc.dart';
import '../components/list_with_pokemon_component.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _infiniteListBloc = Modular.get<InfiniteListBloc>();
  final _authenticationStatusBloc = Modular.get<AuthenticationStatusBloc>();
  ScrollController _scrollController;
  bool _endOfList = false;

  @override
  void initState() {
    super.initState();
    _infiniteListBloc.add(
      InfiniteListEvent.fetchPokemonPressed(),
    );
    _scrollController = ScrollController();
    _scrollController.addListener(_performActionToSeekPokemons);
  }

  void _performActionToSeekPokemons() {
    if (_scrollController.offset - 32 >=
            _scrollController.position.maxScrollExtent &&
        _infiniteListBloc.state is SuccessfullyLoaded &&
        !_endOfList) {
      _infiniteListBloc.add(
        InfiniteListEvent.fetchPokemonPressed(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7f8fe),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Pokédex",
                      style: TextStyle(
                        color: Color(0xFF2c3956),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _authenticationStatusBloc.add(
                          $AuthenticationStatusEvent.signOutPressed(),
                        );
                        Navigator.pushNamedAndRemoveUntil(context,
                            "/auth_module", (Route<dynamic> route) => false);
                      },
                      child: Text(
                        "logout",
                        style: TextStyle(
                          color: Color(0xFFd684a6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                BlocBuilder<InfiniteListBloc, InfiniteListState>(
                  bloc: _infiniteListBloc,
                  builder: (context, state) {
                    return state.map(
                      initial: (data) => Container(),
                      loading: (data) => Column(
                        children: <Widget>[
                          ListWithPokemonComponent(
                            pokemonList: data.currentListing,
                          ),
                          const SizedBox(height: 32),
                          Center(
                            child: CircularProgressIndicator(),
                          ),
                        ],
                      ),
                      successfullyLoaded: (data) {
                        _endOfList = data.endOfList;
                        return ListWithPokemonComponent(
                          pokemonList: data.currentListing,
                        );
                      },
                      failureLoaded: (data) => Column(
                        children: <Widget>[
                          ListWithPokemonComponent(
                            pokemonList: data.currentListing,
                          ),
                          const SizedBox(height: 32),
                          Center(
                            child: IconButton(
                              icon: Icon(Icons.refresh),
                              onPressed: () => _infiniteListBloc.add(
                                InfiniteListEvent.fetchPokemonPressed(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
