import 'package:equatable/equatable.dart';

class MainEvent extends Equatable {
  const MainEvent();

  @override
  List<Object?> get props => [];
}

class MainEventSetOrientation extends MainEvent {
  final double? x;
  final double? y;
  final double? z;

  const MainEventSetOrientation({
    this.x,
    this.y,
    this.z,
  });

  @override
  List<Object?> get props => [x, y, z];
}
