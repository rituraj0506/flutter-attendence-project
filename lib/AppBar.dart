import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  final bool isCollapsed;
  final String userName;
  final String email;

  Appbar({
    super.key,
    required this.isCollapsed,
    required this.userName,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(
            Icons.menu,
            size: 30,
            color: Color(0XFF007DBB),
          ),
          onPressed: () {},
        ),
        Row(
          children: [
            const CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(
                'assets/gamer.png',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "$userName\n$email",
              style: const TextStyle(
                  fontWeight: FontWeight.w700, color: Color(0XFF007DBB)),
            ),
            IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 30,
                color: Color(0XFF007DBB),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        )
      ],
    );
  }
}
