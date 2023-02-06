import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '/pages/home/home_page.dart';

class HomePage1 extends StatelessWidget {
  HomePage1({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return HomePage();
    // return Scaffold(
    //   backgroundColor: Colors.grey[300],
    //   appBar: AppBar(
    //     backgroundColor: Colors.grey[900],
    //     actions: [
    //       IconButton(
    //         onPressed: signUserOut,
    //         icon: Icon(Icons.logout),
    //       )
    //     ],
    //   ),
    //   body: Center(
    //       child: Text(
    //     "LOGGED IN AS: " + user.email!,
    //     style: TextStyle(fontSize: 20),
    //   )),
    // );
  }
}
