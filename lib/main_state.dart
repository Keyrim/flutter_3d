import 'package:equatable/equatable.dart';

class MainState extends Equatable {
  final double x;
  final double y;
  final double z;
  final bool isLoading = false;

  String get orientation => '${x.toInt()}deg ${y.toInt()}deg ${z.toInt()}deg';

  const MainState({
    required this.x,
    required this.y,
    required this.z,
  });

  const MainState.init()
      : x = 50,
        y = 0,
        z = 0;

  MainState copyWith({
    double? x,
    double? y,
    double? z,
  }) {
    return MainState(
      x: x ?? this.x,
      y: y ?? this.y,
      z: z ?? this.z,
    );
  }

  @override
  List<Object> get props => [x, y, z, isLoading];
}
