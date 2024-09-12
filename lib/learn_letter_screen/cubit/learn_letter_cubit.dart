import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'learn_letter_state.dart';

class LearnLetterCubit extends Cubit<LearnLetterState> {
  LearnLetterCubit()
      : super(
          const LearnLetterState(
            letterNameList: [
              'A.png',
              'B.jpg',
              'C.jpg',
              'D.avif',
              'E.jpg',
              'F.jpg',
              'G.png',
              'H.jpg',
              'I.jpg',
              'J.jpg',
              'K.jpg',
              'L.jpg',
              'M.jpg',
              'N.png',
              'O.jpg',
              'P.avif',
              'Q.jpg',
              'R.jpg',
              'S.avif',
              'T.jpg',
              'U.jpg',
              'V.jpg',
              'W.jpg',
              'X.jpg',
              'Y.jpg',
              'Z.jpg',
            ],
          ),
        );
}
