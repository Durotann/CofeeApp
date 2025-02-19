import 'package:cofee_app/view/list_coffee_screen/bloc/list_coffee_screen_event.dart';
import 'package:cofee_app/view/list_coffee_screen/bloc/list_coffee_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCoffeeScreenBloc
    extends Bloc<ListCoffeeScreenEvent, ListCoffeeScreenState> {
  ListCoffeeScreenBloc() : super(ListCoffeeScreenState.initial()) {
    on<TapFilter>(tapFilter);
  }

  void tapFilter(TapFilter event, Emitter emit) async {}
}
