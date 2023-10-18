import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_skuypay_app/utils/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ic_logo_skuypay.png',
                width: 210,
                height: 299,
              ),
              Text(
                'Skuypay',
                style: GoogleFonts.roboto(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff2B3990)),
              ),
              const SizedBox(
                height: 150,
              ),
              Text(
                'SkuyPay memiliki lisensi dan diawasi oleh Otoritas',
                style: blackFont16.copyWith(color: Colors.grey, fontSize: 14),
              ),
              Text(
                'Jasa Keuangan (OJK) dan merupakan anggota',
                style: blackFont16.copyWith(color: Colors.grey, fontSize: 14),
              ),
              Text(
                'Lembaga Penjamin Simpanan (LPS).',
                style: blackFont16.copyWith(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 134,
                height: 30,
                child: Image.asset('assets/images/ic_logo_bawah.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
