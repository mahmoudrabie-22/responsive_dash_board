import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20),
        Expanded(child: SizedBox()),
        Container(
          padding: EdgeInsets.all(12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Color(0xfff1f1f1)),
            ),
          ),
          child: Row(
            children: [
              Text('Monthly', style: AppStyles.styleMedium16),
              SizedBox(width: 18),
              Transform.rotate(
                angle: -1.57,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xff064061),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
