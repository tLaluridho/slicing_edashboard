
import 'package:flutter/material.dart';
import 'package:slicing_ui/core.dart';
import '../view/em_wallet_view.dart';

class EmWalletController extends State<EmWalletView> {
    static late EmWalletController instance;
    late EmWalletView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    