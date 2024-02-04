
import 'package:flutter/material.dart';
import 'package:slicing_ui/core.dart';
import '../controller/em_wallet_controller.dart';

class EmWalletView extends StatefulWidget {
  const EmWalletView({Key? key}) : super(key: key);

  Widget build(context, EmWalletController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("EmWallet"),
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
  State<EmWalletView> createState() => EmWalletController();
}
    