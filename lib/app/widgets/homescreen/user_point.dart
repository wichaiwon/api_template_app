import 'package:flutter/material.dart';

class UserPoint extends StatelessWidget {
  final String userName;
  final String greetingMessage;
  final String pointA;
  final String pointB;

  const UserPoint({
    super.key,
    required this.userName,
    required this.greetingMessage,
    required this.pointA,
    required this.pointB,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'สวัสดี , $userName',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xBF792AFF),
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              greetingMessage,
              style: TextStyle(fontSize: 14, color: Color(0xBF1a1818)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  pointA,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xBF792AFF),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  pointB,
                  style: TextStyle(fontSize: 14, color: Color(0xBF1a1818)),
                ),
              ],
            ),
            SizedBox(width: 8),
            Container(
              width: 24,
              height: 44,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 147, 0, 0.08),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Center(child: Icon(Icons.chevron_right, size: 24)),
            ),
          ],
        ),
      ],
    );
  }
}
