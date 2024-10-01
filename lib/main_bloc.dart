import 'package:flutter_3d/main_event.dart';
import 'package:flutter_3d/main_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState.init()) {
    on<MainEventSetOrientation>(_onSetOrientation);
  }

  void _onSetOrientation(
    MainEventSetOrientation event,
    Emitter<MainState> emit,
  ) {
    emit(state.copyWith(
      x: event.x,
      y: event.y,
      z: event.z,
    ));
  }
}
