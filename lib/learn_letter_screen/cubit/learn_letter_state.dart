part of 'learn_letter_cubit.dart';

class LearnLetterState extends Equatable {
  final List<String> letterName;

  const LearnLetterState({required this.letterName});

  @override
  List<Object> get props => [letterName];
}
