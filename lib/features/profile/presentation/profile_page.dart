import 'package:flutter/material.dart';
import 'package:mero_dokan/core/constants/profile_details.dart';
import 'package:mero_dokan/features/profile/presentation/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("My Profile"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                children: [
                  const SizedBox(width: 20),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(ProfileDetails.profile.avatar),
                  ),
                  const SizedBox(width: 20),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ProfileDetails.profile.name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ProfileDetails.profile.email,
                          style: const TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.grey),
                        ),

                        // Edit button
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/edit-profile");
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.grey,
                        shape: const CircleBorder()),
                    child: const Icon(Icons.edit),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ListView.separated(
                itemBuilder: (context, index) {
                  return profileCards[index];
                },
                separatorBuilder: (_, __) => const Divider(),
                itemCount: profileCards.length,
                shrinkWrap: true,
              )
            ]),
          ),
        ));
  }
}
