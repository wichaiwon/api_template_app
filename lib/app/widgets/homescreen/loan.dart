import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Loan extends StatelessWidget {
  final String title;
  final String yourLoan;
  final double loanAmount;
  final String loanStatus;
  final String condition;
  final String loanButton;

  const Loan({
    Key? key,
    required this.title,
    required this.yourLoan,
    required this.loanAmount,
    required this.loanStatus,
    required this.condition,
    required this.loanButton,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    condition,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.chevron_right, size: 24),
                ],
              ),
            ],
          ),
          SizedBox(height: 4),
          Column(children: [Text('test'), Text('test')]),
        ],
      ),
    );
  }
}
