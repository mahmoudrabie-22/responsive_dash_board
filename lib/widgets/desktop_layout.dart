import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f9fa),
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 32),
          Column(children: [Expanded(flex: 2, child: AllExpenses())]),
        ],
      ),
    );
  }
}
