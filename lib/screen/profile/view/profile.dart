import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  List profile = ["assets/images/krishna.jpg"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.account_box_outlined,
                size: 30,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(
                height: 18,
              ),
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/krishna.jpg"),
                ),
              ),
              Text(
                'krishna',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'GOD',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blueGrey.shade500,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Source Sans Pro'),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.security_update_good_sharp,
                        color: Colors.red.shade100,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "78610*****",
                      style: TextStyle(fontSize: 18),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 120,
                      ),
                    ),
                    Icon(
                      Icons.edit,
                      color: Color(0xff8F8F8F),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade200,
                thickness: 10,
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.account_box_outlined,
                        color: Colors.deepPurpleAccent.shade100,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Manage Account",
                      style: TextStyle(fontSize: 18),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 120,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.add,
                        color: Colors.blue.shade200,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Add personal account",
                      style: TextStyle(fontSize: 18),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 120,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color(0xff8F8F8F),
                thickness: 0.3,
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.lightBlueAccent.shade100,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "More",
                      style: TextStyle(fontSize: 18),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 120,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff8F8F8F),
                    )
                  ],
                ),
              ),
              Divider(
                color: Color(0xff8F8F8F),
                thickness: 0.3,
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.save,
                        color: Colors.lightBlueAccent.shade100,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Save",
                      style: TextStyle(fontSize: 18),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 120,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 30),
                      child: Text(
                        "Sign out",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
