import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MapStateToWidget<B extends Bloc<dynamic, S>, S> extends BlocBuilderBase {
  final Map<Type, Widget Function(S)> statesToWidgets;
  final Bloc<dynamic, S> bloc;
  const MapStateToWidget({
    @required this.statesToWidgets,
    @required this.bloc,
  }) : super(bloc: bloc);

  @override
  Widget build(BuildContext context, state) {
    final widget = statesToWidgets[state.runtimeType];
    if (widget != null) {
      return widget(state as S);
    }
    return Container();
  }
}
