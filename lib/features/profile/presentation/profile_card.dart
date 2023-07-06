import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String subText;

  final String titleText;

  const ProfileCard(
      {required this.titleText, required this.subText, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          title: Text(
            titleText,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subText,
            style: const TextStyle(
                fontWeight: FontWeight.w200, color: Colors.grey),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
