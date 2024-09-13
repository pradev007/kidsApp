part of 'learn_number_cubit.dart';

class LearnNumberState extends Equatable {
  final List<String> numberNameList;
  final int selectedIndex;
  const LearnNumberState(
      {required this.numberNameList, this.selectedIndex = -1});

  @override
  List<Object> get props => [numberNameList, selectedIndex];
}
