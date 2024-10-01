import 'package:flutter/material.dart';
import 'package:flutter_3d/main_bloc.dart';
import 'package:flutter_3d/main_event.dart';
import 'package:flutter_3d/main_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          final bloc = context.read<MainBloc>();

          print('Current orientation: ${state.orientation}');

          return Column(
            children: [
              Expanded(
                child: ModelViewer(
                  src:
                      'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
                  disableZoom: true,
                  cameraControls: false,
                  orientation: state.orientation,
                ),
              ),
              Slider(
                value: state.x,
                onChanged: (value) {
                  bloc.add(MainEventSetOrientation(x: value));
                },
                min: -180,
                max: 180,
                label: 'X: ${state.x}',
              ),
            ],
          );
        },
      ),
    );
  }
}
