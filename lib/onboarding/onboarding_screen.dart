import 'package:al_quran/translation/translation.dart';
import 'package:flutter/material.dart';
import 'size_config.dart';
import 'onboarding_contents.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  bool itemSelected = false;
  int selectedIndex = 0;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;
  List colors = const [
    Color(0xffDAD3C8),
    Color(0xffFFE5DE),
    Color(0xffDCF6E6),
  ];

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color(0xFF000000),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }


  List<Widget> onboardingPages = [
    Column(
      children: [
        Image.asset(
          'assets/icon/quran_icon.png',
          height: 200,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Assalamu Alaikum!',
          textAlign: TextAlign.center,
          style: TextStyle(
            // fontFamily: "Mulish",
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          'Please setup your translation language and choose a translation.',
          style: TextStyle(
            //   fontFamily: "Mulish",
            fontWeight: FontWeight.w300,
            fontSize:17,
          ),
          textAlign: TextAlign.center,
        )
      ],
    ),
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Choose your translation language',
          textAlign: TextAlign.center,
          style: TextStyle(
            // fontFamily: "Mulish",
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 15),
        Expanded(
          child: Material(
            child: ListView.builder(
              itemCount: Translation.uniqueLanguages().length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {

                  },
                  tileColor: Colors.transparent,
                  title: Text(Translation.uniqueLanguages()[index]),
                );
              },
            ),
          ),
        ),
      ],
    ),
    Text('3rd Page')
  ];





  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: colors[_currentPage],
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: onboardingPages.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: onboardingPages[i],
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardingPages.length,
                          (int index) => _buildDots(
                        index: index,
                      ),
                    ),
                  ),
                  _currentPage + 1 == onboardingPages.length
                      ? Padding(
                    padding: const EdgeInsets.all(30),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 100, vertical: 20),

                        textStyle:
                        TextStyle(fontSize:  13 ),
                      ),
                      child: const Text("START"),
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // TextButton(
                        //   onPressed: () {
                        //     _controller.jumpToPage(2);
                        //   },
                        //   child: const Text(
                        //     "SKIP",
                        //     style: TextStyle(color: Colors.black),
                        //   ),
                        //   style: TextButton.styleFrom(
                        //     elevation: 0,
                        //     textStyle: TextStyle(
                        //       fontWeight: FontWeight.w600,
                        //       fontSize: (width <= 550) ? 13 : 17,
                        //     ),
                        //   ),
                        // ),
                        ElevatedButton(
                          onPressed: () {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeIn,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            elevation: 0,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            textStyle: TextStyle(
                                fontSize: 13 ),
                          ),
                          child: const Text("NEXT"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}