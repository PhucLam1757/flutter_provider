import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, "search page");
        },
        child: Container(
          margin: EdgeInsets.only(top: 20, bottom: 20, right: 20),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Color(0xFFB5BFD0).withOpacity(0.32),
            ),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "search page");
            },
            child: Row(children: [
              Icon(Icons.search),
              SizedBox(
                width: 2,
              ),
              Text(
                "Tìm kiếm sản phẩm.....        ",
                style: TextStyle(color: Colors.black45),
              )
            ]),
          ),
        ));
  }
}
