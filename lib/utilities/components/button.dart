import 'package:flutter/material.dart';

import '../shared/colors/default_app_color.dart';

class DefaultElevatedButton extends StatelessWidget {
  final Widget header;
  final VoidCallback? onPressed;
  final Color? color;

  const DefaultElevatedButton({
    Key? key,
    required this.header,
    required this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width / 8,
      width: size.width / 1.22,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: color ?? defaultColor,
          fixedSize: const Size(1000, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: header,
      ),
    );
  }
}

class DefaultOutlinedButton extends StatelessWidget {
  const DefaultOutlinedButton({
    required this.onPressed,
    required this.header,
    Key? key,
  }) : super(key: key);

  final String header;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          header,
          style: Theme.of(context).textTheme.button!.copyWith(
                color: defaultColor,
              ),
        ),
      ),
    );
  }
}
