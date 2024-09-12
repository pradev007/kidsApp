part of 'learn_letter_cubit.dart';

class LearnLetterState extends Equatable {
  final List<String> letterNameList;

  const LearnLetterState({required this.letterNameList});

  @override
  List<Object> get props => [letterNameList];
}
