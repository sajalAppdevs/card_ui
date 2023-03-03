import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(
          HomeState.initial(),
        ) {
    on<ButtonClickedEvent>(_onButtonClickedEvent);
  }

  void _onButtonClickedEvent(ButtonClickedEvent event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        imgUrl: event.imgUrl,
        btn1: event.btn1,
        btn2: event.btn2,
        btn3: event.btn3,
      ),
    );
  }
}
