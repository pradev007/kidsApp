part of 'shape_gallery_cubit.dart';

class ShapeGalleryState extends Equatable {
  final List<String> shapeImageList;
  const ShapeGalleryState({required this.shapeImageList});
  @override
  List<Object?> get props => [shapeImageList];
}
