part of 'home_bloc.dart';

class HomeState extends Equatable {
  final String imgUrl;
  final bool btn1, btn2, btn3;

  const HomeState({
    required this.imgUrl,
    required this.btn1,
    required this.btn2,
    required this.btn3,
  });

  static HomeState initial() {
    return const HomeState(
      imgUrl: 'images/bg1.png',
      btn1: true,
      btn2: false,
      btn3: false,
    );
  }

  HomeState copyWith({
    String? imgUrl,
    bool? btn1,
    bool? btn2,
    bool? btn3,
  }) {
    return HomeState(
      imgUrl: imgUrl ?? this.imgUrl,
      btn1: btn1 ?? this.btn1,
      btn2: btn2 ?? this.btn2,
      btn3: btn3 ?? this.btn3,
    );
  }

  @override
  List<Object?> get props => [
        imgUrl,
        btn1,
        btn2,
        btn3,
      ];
}
