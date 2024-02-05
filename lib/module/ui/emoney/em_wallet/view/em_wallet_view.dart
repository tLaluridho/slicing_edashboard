import 'package:flutter/material.dart';
import 'package:slicing_ui/core.dart';
import '../controller/em_wallet_controller.dart';

class EmWalletView extends StatefulWidget {
  const EmWalletView({Key? key}) : super(key: key);

  Widget build(context, EmWalletController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.add,
              size: 24.0,
              color: Colors.blue,
            ),
            SizedBox(
              width: 12.0,
            ),
            Text(
              "Add Wallet",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "All",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 70,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Savings",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Inverstment",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Container(
                          width: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Expenditure",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: List.generate(
                    controller.expenses.length,
                    (index) {
                      var item = controller.expenses[index];
                      return Container(
                        padding: const EdgeInsets.all(12.0),
                        height: 120.0,
                        width: 130,
                        margin: const EdgeInsets.only(
                          right: 12.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              item["icon"],
                              size: 24.0,
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              item["title"],
                              style: const TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              item["ammount"].toString(),
                              style: const TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  const Text(
                    "Lates Activity",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Icon(
                    Icons.perm_contact_calendar_outlined,
                    size: 24.0,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        color: Colors.grey[300],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "See All",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
                title: Text("John doe"),
                subtitle: Text("john.doe@gmail.com"),
                trailing: Text(
                  "text",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EmWalletView> createState() => EmWalletController();
}
