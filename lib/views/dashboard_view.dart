import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutWidget(
      mobileLayout: (context) => SizedBox(),
      tabletLayout: (context) => SizedBox(),
      desktopLayout: (context) => DesktopLayout(),
    );
  }
}
