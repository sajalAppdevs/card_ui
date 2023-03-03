part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class ButtonClickedEvent extends HomeEvent {
  final String imgUrl;
  final bool btn1, btn2, btn3;

  ButtonClickedEvent({
    required this.imgUrl,
    required this.btn1,
    required this.btn2,
    required this.btn3,
  });
}
