import 'package:equatable/equatable.dart';

class ListCoffeeScreenState extends Equatable {
  final bool isSelected;
  const ListCoffeeScreenState({
    this.isSelected = false,
  });

  static ListCoffeeScreenState initial() => const ListCoffeeScreenState();

  ListCoffeeScreenState copyWith({
    bool? isSelected,
  }) {
    return ListCoffeeScreenState(
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object> get props => [isSelected];
}


