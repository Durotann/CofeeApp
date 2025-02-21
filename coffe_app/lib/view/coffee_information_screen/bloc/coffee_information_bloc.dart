import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'coffee_information_event.dart';
part 'coffee_information_state.dart';

class CoffeeInformationBloc extends Bloc<CoffeeInformationEvent, CoffeeInformationState> {
  CoffeeInformationBloc() : super(CoffeeInformationInitial()) {
    on<CoffeeInformationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
