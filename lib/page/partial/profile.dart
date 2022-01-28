import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.infinity,
        height: 380,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.network(
                "https://images.unsplash.com/photo-1618472609777-b038f1f04b8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1664&q=80",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 160,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      foregroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/88776159?v=4",
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Andrea Cataldo",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Developer",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "NFT collector since 1995.",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}