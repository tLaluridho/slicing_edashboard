import 'package:flutter/material.dart';
import 'package:slicing_ui/core.dart';
import '../view/em_main_navigation_view.dart';

class EmMainNavigationController extends State<EmMainNavigationView> {
  static late EmMainNavigationController instance;
  late EmMainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
