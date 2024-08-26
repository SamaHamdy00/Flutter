import 'package:flutter/material.dart';

// Widget mytextform({
//   required TextInputType keyboardType,
//   required String labelText,
//   bool isPasswordField = false,
// }){
//  return StatefulBuilder(
//     builder: (context, setState) {
//       bool _obscureText = true;
//   return TextFormField(
//     cursorColor: const Color(0xFFF8FE11),
//                 keyboardType: keyboardType,
//                 obscureText: isPasswordField ? _obscureText : false,
//                 style: const TextStyle(
//                   color: Colors.white,
//                 ),
//                    decoration: InputDecoration(
//                     labelText: labelText,
//                     labelStyle: const TextStyle(
//                       color: Color(0xFF808696),
//                        ),
//                        focusedBorder: const UnderlineInputBorder(
//                         borderSide: BorderSide(
//                            color: Color(0xFFF8FE11),
//                             ),
//                   ),
//                   ),

//               ? IconButton(
//                   icon: Icon(
//                     _obscureText ? Icons.visibility : Icons.visibility_off,
//                     color: const Color(0xFF808696),
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _obscureText = !_obscureText;
//                     });
//                   },
//                 )
//               : null,
//   );
//       },
//   );
// }
Widget myTextForm({
  TextInputType? keyboardType,
  String? labelText,
  IconData? icon,
}) {
  return TextFormField(
    keyboardType: keyboardType,
    cursorColor: const Color(0xFFF8FE11),
    style: const TextStyle(
      color: Colors.white,
    ),
    decoration: InputDecoration(
      labelText: labelText,
      labelStyle: const TextStyle(
        color: Color(0xFF808696),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF8FE11),
        ),
      ),
      suffixIcon: icon != null
          ? IconButton(
              icon: Icon(
                icon,
                color: const Color(0xFF808696),
              ),
              onPressed: () {},
            )
          : null,
    ),
  );
}
