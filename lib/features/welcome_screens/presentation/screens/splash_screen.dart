import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../core/constants/appcolors.dart';
import 'dart:math' as Math;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _progressController;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();

    _progressController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _progressAnimation = CurvedAnimation(
      parent: _progressController,
      curve: Curves.easeInOut,
    );

    _progressController.forward();

    // Navigate after splash if required.
    // Timer(const Duration(seconds: 4), () {
    //   if (mounted) {
    //     context.go('/home');
    //   }
    // });
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Stack(
          children: [
            // Very subtle pink glow behind the logo.
            Positioned(
              top: size.height * 0.10,
              left: size.width * 0.20,
              right: size.width * 0.20,
              child: Container(
                height: size.width * 0.55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.softPrimary.withValues(alpha: 0.55),
                      blurRadius: 80,
                      spreadRadius: 25,
                    ),
                  ],
                ),
              ),
            ),

            Center(
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildDecorativeTop(),

                      SizedBox(height: size.height * 0.018),

                      _buildLogoContainer(),

                      SizedBox(height: size.height * 0.075),

                      _buildTitle(),

                      SizedBox(height: size.height * 0.018),

                      _buildTagline(),

                      SizedBox(height: size.height * 0.105),

                      _buildProgressDecorations(),

                      const SizedBox(height: 10),

                      _buildProgressBar(),

                      const SizedBox(height: 28),

                      _buildPreparingText(),

                      const SizedBox(height: 8),

                      _buildPrivateSpace(),

                      const SizedBox(height: 20),

                      _buildPortalText(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // TOP DECORATIONS
  // ============================================================

  Widget _buildDecorativeTop() {
    return SizedBox(
      height: 34,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Sun / sparkle
          Positioned(
            left: 0,
            child: SizedBox(
              width: 32,
              height: 32,
              child: CustomPaint(painter: _SunPainter(color: AppColors.accent)),
            ),
          ),

          // Pink dots
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                  color: Color(0xFFE8C3D2),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 18),
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color(0xFFECCEDB),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ============================================================
  // LOGO
  // ============================================================

  Widget _buildLogoContainer() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 282,
          height: 282,
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF6E4B5F).withValues(alpha: 0.10),
                blurRadius: 24,
                offset: const Offset(0, 12),
              ),
            ],
          ),
          child: Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(28),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF6E4B5F).withValues(alpha: 0.08),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(22),
              child: Image.asset(
                'assets/images/mehfil.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),

        // Small yellow circle at top-right.
        Positioned(
          right: -8,
          top: -10,
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: AppColors.accent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.white, width: 5),
            ),
            child: Center(
              child: Container(
                width: 9,
                height: 9,
                decoration: const BoxDecoration(
                  color: AppColors.heading,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================
  // TITLE
  // ============================================================

  Widget _buildTitle() {
    return Text(
      'Mehfil',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: 48,
        height: 1,
        fontWeight: FontWeight.w700,
        color: AppColors.primary,
      ),
    );
  }

  // ============================================================
  // TAGLINE
  // ============================================================

  Widget _buildTagline() {
    return Text(
      'Your wedding, together.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: 28,
        height: 1.15,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic,
        color: const Color(0xFF51434A),
      ),
    );
  }

  // ============================================================
  // PROGRESS DECORATIONS
  // ============================================================

  Widget _buildProgressDecorations() {
    return SizedBox(
      height: 24,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(left: 25, child: _dot(14, AppColors.accent)),
          Positioned(
            left: 125,
            child: _dot(20, AppColors.secondary.withValues(alpha: 0.65)),
          ),
          Positioned(left: 200, child: _dot(15, const Color(0xFFF2B9D1))),
          Positioned(right: 40, child: _dot(12, const Color(0xFFFFF4E8))),
        ],
      ),
    );
  }

  Widget _dot(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }

  // ============================================================
  // PROGRESS BAR
  // ============================================================

  Widget _buildProgressBar() {
    return AnimatedBuilder(
      animation: _progressAnimation,
      builder: (context, child) {
        return Container(
          height: 9,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFE5DEE3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: FractionallySizedBox(
              widthFactor: _progressAnimation.value,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.accent,
                      AppColors.primary,
                      AppColors.secondary,
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // ============================================================
  // PREPARING TEXT
  // ============================================================

  Widget _buildPreparingText() {
    return Text(
      'PREPARING YOUR CELEBRATION',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: 15,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.5,
        color: const Color(0xFF81747D),
      ),
    );
  }

  // ============================================================
  // PRIVATE SPACE
  // ============================================================

  Widget _buildPrivateSpace() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
      decoration: BoxDecoration(
        color: AppColors.softPrimary.withValues(alpha: 0.65),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.lock_rounded, size: 21, color: Color(0xFF765400)),
          const SizedBox(width: 14),
          Text(
            'A private gathering space',
            style: TextStyle(
              fontFamily: 'NotoSerif',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF51434A),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // PORTAL TEXT
  // ============================================================

  Widget _buildPortalText() {
    return Text(
      'Temporary Event Portal • Invitation Only',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: 15,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.4,
        color: const Color(0xFFA1949D),
      ),
    );
  }
}

// ================================================================
// SUN PAINTER
// ================================================================

class _SunPainter extends CustomPainter {
  final Color color;

  _SunPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 5, paint);

    const rayLength = 6;
    const rayStart = 9;

    for (int i = 0; i < 8; i++) {
      final angle = i * 3.14159 / 4;

      final start = Offset(
        center.dx + rayStart * Math.cos(angle),
        center.dy + rayStart * Math.sin(angle),
      );

      final end = Offset(
        center.dx + (rayStart + rayLength) * Math.cos(angle),
        center.dy + (rayStart + rayLength) * Math.sin(angle),
      );

      canvas.drawLine(start, end, paint);
    }
  }

  @override
  bool shouldRepaint(covariant _SunPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
