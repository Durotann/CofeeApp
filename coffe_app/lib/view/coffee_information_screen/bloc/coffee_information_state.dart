part of 'coffee_information_bloc.dart';

sealed class CoffeeInformationState extends Equatable {
  const CoffeeInformationState();
  
  @override
  List<Object> get props => [];
}

final class CoffeeInformationInitial extends CoffeeInformationState {}
