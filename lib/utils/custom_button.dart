import 'package:flutter/material.dart';
import 'package:ycps_society_app/utils/constants.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData? icon;
  final bool isAnimated;

  const CustomButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.icon,
      required this.isAnimated});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // AnimationController for infinite size animation
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true); // Repeat the animation in reverse

    // Scale animation for size variation
    _scaleAnimation = Tween<double>(begin: 0.95, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale:
          widget.isAnimated ? _scaleAnimation : const AlwaysStoppedAnimation(1),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          icon: Icon(
            widget.icon,
            color: Colors.white,
          ),
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Constants.primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          label: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
