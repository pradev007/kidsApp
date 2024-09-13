part of 'learn_letter_cubit.dart';

class LearnLetterState extends Equatable {
  final List<String> letterNameList;
  final int selectedIndex;

  const LearnLetterState(
      {required this.letterNameList, this.selectedIndex = -1});

  @override
  List<Object> get props => [letterNameList, selectedIndex];
}
