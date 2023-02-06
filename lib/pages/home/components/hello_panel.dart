import 'package:flutter/material.dart';
import '../../../widgets/custom_text.dart';
import 'package:firebase_auth/firebase_auth.dart';

final user = FirebaseAuth.instance.currentUser!;
final reg = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+")
    .firstMatch(user.email!);
final name = reg!.group(0);

class HelloPanel extends StatelessWidget {
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  const HelloPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomText(
          text: 'Hello ' + name!,
          size: 24,
          fontWeight: FontWeight.w600,
        ),
        InkWell(
          child: CustomText(
            text: 'Well come back!',
            textColor: Colors.grey,
          ),
          onTap: signUserOut,
        )
      ],
    );
  }
}
