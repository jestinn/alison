import 'package:flutter/material.dart';

import 'app_ui/navigation_bar.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> a = {
    '/bottomNavBar': (context) => const BottomNavBar(),
  };
}
