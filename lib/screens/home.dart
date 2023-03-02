import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161621),
      body: SafeArea(
        child: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
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
                //padding: const EdgeInsets.all(10.0),
                width: double.infinity,
                height: 230,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'images/bg1.png',
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
                  Container(
                    height: 70,
                    width: 70,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(
                          'images/btn1.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(
                          'images/btn2.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(
                          'images/btn3.png',
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 90,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff21222D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                ),
                onPressed: () {},
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
