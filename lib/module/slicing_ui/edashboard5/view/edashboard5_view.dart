import 'package:flutter/material.dart';
import 'package:slicing_ui/core.dart';
import '../controller/edashboard5_controller.dart';

class Edashboard5View extends StatefulWidget {
  const Edashboard5View({Key? key}) : super(key: key);

  Widget build(context, Edashboard5Controller controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Feed",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey[700]!,
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: const InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          hintText: "Search",
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.mic,
                        size: 24.0,
                      ),
                    ),
                  ],
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
                  children: List.generate(controller.users.length, (index) {
                    var item = controller.users[index];
                    return Row(
                      children: [
                        if (index == 0) ...[
                          Container(
                            padding: const EdgeInsets.all(12.0),
                            margin: const EdgeInsets.all(4.0),
                            height: 120.0,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[900],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 12.0,
                                ),
                                Text(
                                  "Add Storys",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          margin: const EdgeInsets.all(4.0),
                          height: 120.0,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[900],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "${item["photo"]}",
                                ),
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Text(
                                item["name"],
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    var item = {};
                    return Container(
                      margin: const EdgeInsets.all(10.0),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  "Lalu Ridho",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                radius: 10.0,
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 13.0,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "2 min ago",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(
                                Icons.more_horiz,
                                size: 24.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "89.4K likes",
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "43 comments",
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                radius: 13.0,
                                backgroundColor: Colors.grey,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.black,
                                  size: 13,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              CircleAvatar(
                                radius: 13.0,
                                backgroundColor: Colors.grey,
                                child: Icon(
                                  Icons.comment,
                                  color: Colors.black,
                                  size: 13,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              CircleAvatar(
                                radius: 13.0,
                                backgroundColor: Colors.grey,
                                child: Icon(
                                  Icons.mobile_screen_share_outlined,
                                  color: Colors.black,
                                  size: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Edashboard5View> createState() => Edashboard5Controller();
}
