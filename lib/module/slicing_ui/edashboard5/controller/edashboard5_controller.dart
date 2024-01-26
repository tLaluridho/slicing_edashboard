import 'package:flutter/material.dart';
import 'package:slicing_ui/core.dart';
import '../view/edashboard5_view.dart';

class Edashboard5Controller extends State<Edashboard5View> {
  static late Edashboard5Controller instance;
  late Edashboard5View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> users = [
    {
      "id": 1,
      "email": "george.bluth@reqres.in",
      "name": "George Bluth",
      "avatar": "https://reqres.in/img/faces/1-image.jpg"
    },
    {
      "id": 2,
      "email": "janet.weaver@reqres.in",
      "name": "Janet Weaver",
      "photo": "https://reqres.in/img/faces/2-image.jpg"
    },
    {
      "id": 3,
      "email": "emma.wong@reqres.in",
      "name": "Emma Wong",
      "photo": "https://reqres.in/img/faces/3-image.jpg"
    },
    {
      "id": 4,
      "email": "eve.holt@reqres.in",
      "name": "Eve Holt",
      "photo": "https://reqres.in/img/faces/4-image.jpg"
    },
    {
      "id": 5,
      "email": "charles.morris@reqres.in",
      "name": "Charles Morris",
      "photo": "https://reqres.in/img/faces/5-image.jpg"
    },
    {
      "id": 6,
      "email": "tracey.ramos@reqres.in",
      "name": "Tracey Ramos",
      "photo": "https://reqres.in/img/faces/6-image.jpg"
    }
  ];
}
