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
      body: const Center(
        child: Text('HomeView is working', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
