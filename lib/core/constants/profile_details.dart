import 'package:mero_dokan/features/profile/data/profile.dart';
import 'package:mero_dokan/features/profile/presentation/profile_card.dart';

class ProfileDetails {
  static Profile profile = Profile(
    name: "Gaurav Giri",
    address: 'Birendranagar, Surkhet',
    email: 'gaurovgiri@gmail.com',
    phone: '9867654321',
    avatar: "assets/images/profile/profile.jpg",
  );
}

List<ProfileCard> profileCards = [
  const ProfileCard(titleText: "My orders", subText: "Already have 12 orders"),
  const ProfileCard(
    titleText: "Shipping addresses",
    subText: "3 addresses",
  ),
  const ProfileCard(
    titleText: "Payment methods",
    subText: "Visa **34",
  ),
  const ProfileCard(
    titleText: "Promocodes",
    subText: "You have special promocodes",
  ),
  const ProfileCard(
    titleText: "My reviews",
    subText: "Reviews for 4 items",
  ),
  const ProfileCard(
    titleText: "Settings",
    subText: "Notifications, password",
  )
];
