import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String bgCard = 'images/bg1.png';
  bool btn1 = true;
  bool btn2 = false;
  bool btn3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xff161621),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/64529996?v=4',
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
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Build your wealth easily with our\ninternational interest rate',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: Colors.white70,
                  height: 1.48,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      bgCard,
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
                          '\$15,500,000',
                          style: GoogleFonts.inter(
                            color: const Color(
                              0xff161621,
                            ),
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                          ),
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
                              style: GoogleFonts.inter(
                                color: const Color(
                                  0xff161621,
                                ),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text(
                                '08/30',
                                style: GoogleFonts.inter(
                                  color: const Color(
                                    0xff161621,
                                  ),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: btn1 ? 70 : 55,
                    width: 70,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          bgCard = 'images/bg1.png';
                          btn1 = true;
                          btn2 = false;
                          btn3 = false;
                        });
                      },
                      icon: const Image(
                        image: AssetImage(
                          'images/btn1.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: btn2 ? 70 : 55,
                    width: 70,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          bgCard = 'images/bg2.png';
                          btn1 = false;
                          btn2 = true;
                          btn3 = false;
                        });
                      },
                      icon: const Image(
                        image: AssetImage(
                          'images/btn2.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: btn3 ? 70 : 55,
                    width: 70,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          bgCard = 'images/bg3.png';
                          btn1 = false;
                          btn2 = false;
                          btn3 = true;
                        });
                      },
                      icon: const Image(
                        image: AssetImage(
                          'images/btn3.png',
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 90,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff21222D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      //backgroundColor: Color(0xff161621),
                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                      content: const Text(
                        'Your Card is Saved ✅',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                        ),
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
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                    ),
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
