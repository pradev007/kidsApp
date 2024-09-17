part of 'learn_animal_cubit.dart';

class LearnAnimalState extends Equatable {
  final List<String> animalNameList;
  final List<String> animalImageList;
  final String animalTts;

  const LearnAnimalState({
    required this.animalNameList,
    required this.animalImageList,
    required this.animalTts,
  });

  @override
  List<Object> get props => [animalNameList, animalImageList, animalTts];
}
