import 'package:card_ui/home/bloc/home_bloc.dart';
import 'package:card_ui/utils/constants.dart';
import 'package:card_ui/home/widgets/color_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xff161621),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 58,
                  backgroundColor: Colors.white38,
                  child: CircleAvatar(
                    radius: 56,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/64529996?v=4',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 15.0,
                ),
                child: Text(
                  'Open New Card',
                  style: headerTextStyle,
                ),
              ),
              Text(
                'Build your wealth easily with our\ninternational interest rate',
                textAlign: TextAlign.center,
                style: subHeading,
              ),
              const SizedBox(
                height: 50,
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return Container(
                    width: double.infinity,
                    height: 230,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          state.imgUrl,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 6,
                          ),
                          const Image(
                            image: AssetImage(
                              'images/cc.png',
                            ),
                            width: 140,
                            height: 35,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              top: 30,
                            ),
                            child: Text(
                              '\$1,500,000',
                              style: cardTextHead,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              top: 45.0,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '**** **** **** 1996',
                                  style: cardNumber,
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 40),
                                  child: Text(
                                    '08/30',
                                    style: cardDate,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorButton(
                        onTap: () {
                          context.read<HomeBloc>().add(
                                ButtonClickedEvent(
                                  imgUrl: 'images/bg1.png',
                                  btn1: true,
                                  btn2: false,
                                  btn3: false,
                                ),
                              );
                        },
                        isSelected: state.btn1,
                        img: 'images/btn1.png',
                      ),
                      ColorButton(
                        onTap: () {
                          context.read<HomeBloc>().add(
                                ButtonClickedEvent(
                                  imgUrl: 'images/bg2.png',
                                  btn1: false,
                                  btn2: true,
                                  btn3: false,
                                ),
                              );
                        },
                        isSelected: state.btn2,
                        img: 'images/btn2.png',
                      ),
                      ColorButton(
                        onTap: () {
                          context.read<HomeBloc>().add(
                                ButtonClickedEvent(
                                  imgUrl: 'images/bg3.png',
                                  btn1: false,
                                  btn2: false,
                                  btn3: true,
                                ),
                              );
                        },
                        isSelected: state.btn3,
                        img: 'images/btn3.png',
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 90,
              ),
              ElevatedButton(
                style: saveCard,
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      //backgroundColor: Color(0xff161621),
                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                      content: Text(
                        'Your Card is Saved ✅',
                        style: snackbarText,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 100.0,
                    right: 100.0,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Text(
                    'Save My Card',
                    style: saveCardTextStyle,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
