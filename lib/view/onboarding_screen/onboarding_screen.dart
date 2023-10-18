import 'package:flutter/material.dart';
import 'package:slicing_skuypay_app/utils/theme.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<String> imagePaths = [
    'assets/images/ic_onboarding1.png',
    'assets/images/ic_onboarding2.png',
    'assets/images/ic_onboarding3.png',
  ];

  final List<String> titles = [
    'Teman yang memudahkan',
    'Aman dan Terpercaya',
    'Kini semuanya dalam satu genggaman',
  ];

  final List<String> descriptions = [
    'Sekarang Skuypay bisa menjadi teman\nanda dalam mengatur tagihan anda.',
    'Skuypay sudah melakukan tahapan pengujian\nkeamanan oleh tim hacker internasional',
    'Lebih mudah dalam melakukan semua pembayaran\nserta aman dan terintegrasi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemCount: imagePaths.length,
              itemBuilder: (BuildContext context, int index) {
                return buildOnboardingItem(
                  imagePaths[index],
                  titles[index],
                  descriptions[index],
                  index,
                );
              },
            ),
          ),
          // const SizedBox(height: 20),
          buildPageIndicator(),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: _currentPage == 2
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.of(context).pushAndRemoveUntil(
                      //   MaterialPageRoute(
                      //     builder: (context) => const RegisterScreen(),
                      //   ),
                      //   (route) => false,
                      // );
                    },
                    child: Text(
                      'Daftar',
                      style: whiteFont14,
                    ),
                  )
                : Container(),
          ),
          if (_currentPage == 2)
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sudah punya akun? ',
                    style: blackFont16.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Masuk',
                      style: blackFont16.copyWith(
                        fontSize: 12,
                        color: blueColor,
                      ),
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }

  Widget buildOnboardingItem(
      String imagePath, String title, String description, int index) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 380,
          child: Stack(
            children: [
              Image.asset(imagePath),
              Positioned(
                top: 52,
                right: 26,
                child: index < 2
                    ? Text(
                        'Lewati',
                        style: blackFont16.copyWith(
                          color: index == 0 ? Colors.white : Colors.black,
                        ),
                      )
                    : Container(),
              ),
            ],
          ),
        ),
        const SizedBox(height: 57),
        Text(
          title,
          style: blackFont18,
        ),
        const SizedBox(height: 24),
        Text(
          description,
          style: blackFont16.copyWith(fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        // const SizedBox(height: 233),
      ],
    );
  }

  Widget buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        imagePaths.length,
        (index) => buildIndicator(index),
      ),
    );
  }

  Widget buildIndicator(int index) {
    double size = 10.0;
    bool isCurrentPage = index == _currentPage;
    return Container(
      width: size,
      height: size,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCurrentPage ? blueColor : Colors.grey,
      ),
    );
  }
}
