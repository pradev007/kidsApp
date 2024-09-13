import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'learn_number_state.dart';

class LearnNumberCubit extends Cubit<LearnNumberState> {
  LearnNumberCubit()
      : super(
          const LearnNumberState(
            numberNameList: [
              '1.jpg',
              '2.jfif',
              '3.jpg',
              '4.jpg',
              '5.webp',
              '6.avif',
              '7.webp',
              '8.webp',
              '9.jpg',
              '10.jpg',
            ],
            selectedIndex: -1,
          ),
        );
  void selectedNumber(int index) {
    print('selectedNumber called with index: $index'); // Debug statement
    emit(LearnNumberState(
      numberNameList: state.numberNameList,
      selectedIndex: index,
    ));
  }
}
