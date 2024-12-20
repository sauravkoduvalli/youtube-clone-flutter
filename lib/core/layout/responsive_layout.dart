import 'package:flutter/material.dart';

import 'mobile_layout.dart';
import 'tab_layout.dart';
import 'web_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraits) {
      if (constraits.maxWidth < 600) {
        return const MobileLayout();
      } else if (constraits.maxWidth < 1200) {
        return const TabLayout();
      } else {
        return const WebLayout();
      }
    });
  }
}
