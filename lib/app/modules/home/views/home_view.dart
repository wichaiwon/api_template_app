import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('หน้าหลัก', style: TextStyle(fontSize: 24)),
            Row(
              children: [
                IconButton(icon: Icon(Icons.chat), onPressed: () {}),
                SizedBox(width: 24),
                IconButton(icon: Icon(Icons.settings), onPressed: () {}),
                SizedBox(width: 24),
                IconButton(icon: Icon(Icons.person), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          // เปลี่ยนจาก Row เป็น Column เพื่อรองรับหลาย Row
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'สวัสดี , ${controller.userName}',
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xBF792AFF),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'เอเอเอ็ม  ยินดีให้บริการ',
                      style: TextStyle(fontSize: 22, color: Color(0xBF1a1818)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'A',
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xBF792AFF),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '= 1',
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xBF1a1818),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFF9300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.chevron_right, size: 24),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16), // เพิ่มระยะห่างระหว่าง Row
            Row(
              // Row ใหม่
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Row ใหม่',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
