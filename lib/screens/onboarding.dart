import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_baratillo/pages/login_page.dart';

import '../constants.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: demo_data.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => OnboardContent(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                  description: demo_data[index].description,
                ),
              ),
            ),
            Row(
              children: [
                ...List.generate(
                  demo_data.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: DotIndicator(isActive: index == _pageIndex),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                      onPressed: () {
                        // TODO CAMBIO DE EJECUCION
                        // _pageController.nextPage(
                        //     duration: const Duration(milliseconds: 300),
                        //     curve: Curves.ease);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 25,
                      )),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 20 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor : kSecondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: "assets/images/cart3.png",
    title: "1. Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    description:
        "Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consect.",
  ),
  Onboard(
    image: "assets/images/cart1.png",
    title: "2. Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    description:
        "Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consect.",
  ),
  Onboard(
    image: "assets/images/icon.png",
    title: "3. Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    description:
        "Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consect.",
  ),
  Onboard(
    image: "assets/images/icono.png",
    title: "4. Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    description:
        "Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consect.",
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
  }) : super(key: key);

  final String title, image, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(image, height: 250),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          description,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
