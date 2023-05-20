import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 768 &&
      MediaQuery.of(context).size.width < 1440;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1440;
  static Size screenSize(BuildContext context) => MediaQuery.of(context).size;
}
