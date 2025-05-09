import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonMenu extends StatelessWidget {
  final int currentIndex;
  const ButtonMenu({super.key, this.currentIndex = 0});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/image/Home.svg',
            height: 24.0,
            width: 24.0,
          ),
          label: 'หน้าหลัก',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt),
          label: 'ตัวแทนการตลาด',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none_outlined),
          label: 'แจ้งเตือน',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/home');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/saved');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/cart');
            break;
        }
      },
      selectedItemColor: Color.fromRGBO(255, 147, 0, 1),
      unselectedItemColor: Colors.grey,
    );
  }
}
