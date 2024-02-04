
import 'package:flutter/material.dart';
import 'package:slicing_ui/core.dart';
import '../view/em_statistic_view.dart';

class EmStatisticController extends State<EmStatisticView> {
    static late EmStatisticController instance;
    late EmStatisticView view;

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
        
    