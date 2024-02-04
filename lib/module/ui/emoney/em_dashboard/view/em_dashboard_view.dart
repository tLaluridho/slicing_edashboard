import 'package:flutter/material.dart';
import 'package:slicing_ui/core.dart';
import '../controller/em_dashboard_controller.dart';

class EmDashboardView extends StatefulWidget {
  const EmDashboardView({Key? key}) : super(key: key);

  Widget build(context, EmDashboardController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: const EdgeInsets.only(right: 10),
          minLeadingWidth: 0.0,
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.ibb.co/PGv8ZzG/me.jpg",
            ),
          ),
          title: Text(
            "Welcome Back",
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
          subtitle: const Text(
            "L. RIDHO TAUFIKURAHMAN ",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: const Badge(
            label: Text(
              "4",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: Icon(Icons.notifications),
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Total Balance",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Row(
                children: [
                  Text(
                    "\$",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    "23,252,406",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.flag,
                      size: 24.0,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Rp - Indonesia Rp",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_sharp,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  const Text(
                    "Some things yaou can do here 🔥",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Container(
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
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0 / 0.9,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemCount: controller.menus.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.menus[index];
                  bool selected = controller.selectedIndex == index;
                  return InkWell(
                    onTap: () => controller.updateIndex(index),
                    child: Container(
                      decoration: BoxDecoration(
                        color: selected ? Colors.blue : Colors.grey[300],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              item["icon"],
                              width: 40.0,
                              height: 40.0,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              item["title"],
                              style: TextStyle(
                                fontSize: 20.0,
                                color:
                                    selected ? Colors.white : Colors.grey[700],
                              ),
                            ),
                            Expanded(
                              child: Text(
                                item["description"],
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: selected
                                      ? Colors.white
                                      : Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Row(
                children: [
                  Text(
                    "Quick Send",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Icon(
                    Icons.wallet,
                    size: 24.0,
                    color: Colors.blue,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      right: 12.0,
                    ),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Add",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: ScrollController(),
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      child: Row(
                        children:
                            List.generate(controller.contacts.length, (index) {
                          var item = controller.contacts[index];
                          return Container(
                            margin: const EdgeInsets.only(
                              right: 12.0,
                            ),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(item["photo"]),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  item["name"],
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EmDashboardView> createState() => EmDashboardController();
}
