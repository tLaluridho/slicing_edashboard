import 'package:flutter/material.dart';
import 'package:slicing_ui/core.dart';
import '../controller/em_main_navigation_controller.dart';

class EmMainNavigationView extends StatefulWidget {
  const EmMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, EmMainNavigationController controller) {
    controller.view = this;
    /*
    TODO: Implement this @ controller
    int selectedIndex = 0;
    updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    }
    */
    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const EmDashboardView(),
            const EmWalletView(),
            const EmStatisticView(),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          selectedItemColor: Colors.blue[300],
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_outlined,
              ),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
              ),
              label: "Wallets",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.stacked_bar_chart,
              ),
              label: "Statistic",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<EmMainNavigationView> createState() => EmMainNavigationController();
}
