import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
final String title;
final VoidCallback onPressed;

const StyledButton({
super.key,
required this.title,
required this.onPressed
}
);

@override
Widget build(BuildContext context) {
return ElevatedButton(
onPressed: onPressed, 
style: ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0)),
  backgroundColor: const Color(0xff4B3B2E),
  foregroundColor: Colors.white
), 
child: Text(
  title,
  style: const TextStyle(
    fontSize: 14
  ),
  textAlign: TextAlign.center,
));
}
}