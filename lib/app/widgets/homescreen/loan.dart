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
    super.key,
    required this.title,
    required this.yourLoan,
    required this.loanAmount,
    required this.loanStatus,
    required this.condition,
    required this.loanButton,
  });
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
                    style: TextStyle(fontSize: 14, color: Color(0xFF999999)),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.chevron_right, size: 24, color: Color(0xFF999999)),
                ],
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    yourLoan,
                    style: TextStyle(color: Color(0xFF999999), fontSize: 14),
                  ),
                  Text(
                    NumberFormat.currency(
                      locale: 'th',
                      symbol: '฿',
                      decimalDigits: 0,
                    ).format(loanAmount),
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(121, 42, 255, 0.75),
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 14,
                        color: Color.fromRGBO(121, 42, 255, 0.75),
                      ),
                      SizedBox(width: 4),
                      Text(
                        loanStatus,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(121, 42, 255, 0.75),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: Size(109, 36),
                  backgroundColor: Color.fromRGBO(121, 42, 255, 0.75),
                  shadowColor: Color.fromRGBO(121, 42, 255, 0.45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  loanButton,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
