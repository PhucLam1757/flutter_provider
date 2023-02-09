import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_text.dart';
import 'package:firebase_auth/firebase_auth.dart';

final user = FirebaseAuth.instance.currentUser!;
final reg = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+")
    .firstMatch(user.email!);
final name = reg!.group(0);

class Draw extends StatelessWidget {
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  const Draw({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              "Xin chào!\n" + name!,
              style: TextStyle(fontSize: 25),
            ),
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          Text(
            "Đăng Xuất",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          IconButton(onPressed: signUserOut, icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
