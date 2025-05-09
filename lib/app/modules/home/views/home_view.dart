import 'package:api_template_app/app/widgets/button_menu.dart';
import 'package:api_template_app/app/widgets/homescreen/service.dart';
import 'package:api_template_app/app/widgets/homescreen/user_point.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'package:api_template_app/app/widgets/homescreen/catagories_button.dart';
import 'package:api_template_app/app/widgets/homescreen/loan.dart';
import 'package:api_template_app/app/widgets/homescreen/installment.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'หน้าหลัก',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                IconButton(icon: Icon(Icons.chat), onPressed: () {}),
                SizedBox(width: 12),
                IconButton(icon: Icon(Icons.settings), onPressed: () {}),
                SizedBox(width: 12),
                IconButton(icon: Icon(Icons.person), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UserPoint(
              key: const Key('userPoint'),
              userName: controller.userName.value,
              greetingMessage: 'เอเอเอ็ม ยินดีให้บริการ',
              pointA: 'A 0',
              pointB: '= B1',
            ),
            SizedBox(height: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'หมวดหมู่',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                CategoriesButton(
                  key: const Key('catagoryButton'),
                  categories: controller.categories,
                  selectedCategoryIndex: controller.selectedCategoryIndex,
                  onCategorySelected: (index) {
                    controller.selectCatagory(index);
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Loan(
                  key: const Key('loan1'),
                  title: 'เอเอเอ็ม พร้อมใช้',
                  yourLoan: 'จำนวนสินเชื่อของคุณ',
                  loanAmount: 5000,
                  loanStatus: 'สินเชื่อเงินสดพร้อมใช้ อนุมัติทันที',
                  condition: 'เงื่อนไข',
                  loanButton: 'รับสินเชื่อ',
                ),
              ],
            ),
            SizedBox(height: 16),
            Column(
              children: [
                Installment(
                  key: const Key('installment1'),
                  title: 'ค่างวด',
                  total: 'ยอดที่ต้องชำระ',
                  amount: 1700.65,
                  deadline: 'วันครบกำหนดชำระ',
                  dateTime: 'วันครบกำหนด',
                  contract: 'เลขที่สัญญา',
                  conTractNumber: 'AMML32809',
                  payFirst: 'ชำระเงินครบกำหนด',
                  point: 1000,
                  buttonText: 'จ่ายค่างวด',
                  controller: controller,
                ),
              ],
            ),
            SizedBox(height: 24),
            Service(
              title: 'เมนูบริการ',
              registerLoan: 'สมัครสินเชื่อ',
              registerInstallment: '5,000 \nพร้อมใช้',
              branch: 'สาขา',
            ),
          ],
        ),
      ),
      bottomNavigationBar: ButtonMenu(currentIndex: 0),
    );
  }
}
