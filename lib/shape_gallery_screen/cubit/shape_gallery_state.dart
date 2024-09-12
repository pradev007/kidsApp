part of 'shape_gallery_cubit.dart';

class ShapeGalleryState extends Equatable {
  final List<String> shapeImageList;
  final List<String> soundNameList;

  const ShapeGalleryState({
    required this.shapeImageList,
    required this.soundNameList,
  });
  @override
  List<Object?> get props => [shapeImageList, soundNameList];
}
