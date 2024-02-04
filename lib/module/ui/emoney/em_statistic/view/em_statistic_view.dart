
import 'package:flutter/material.dart';
import 'package:slicing_ui/core.dart';
import '../controller/em_statistic_controller.dart';

class EmStatisticView extends StatefulWidget {
  const EmStatisticView({Key? key}) : super(key: key);

  Widget build(context, EmStatisticController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("EmStatistic"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
      ),
    );
  }

  @override
  State<EmStatisticView> createState() => EmStatisticController();
}
    