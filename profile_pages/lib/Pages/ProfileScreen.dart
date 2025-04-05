import 'package:flutter/material.dart';
import 'package:profile_pages/Pages/AboutUs.dart';
import 'package:profile_pages/Pages/ContactUsApp.dart';
import 'package:profile_pages/Pages/EditProfileScreen.dart';
import 'package:profile_pages/Pages/TermsAndConditionsPage.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(radius: 50),
          SizedBox(height: 10),
          Text("Khalid Kamal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text("Khalid_Kamal@gmail.com", style: TextStyle(color: Colors.grey)),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                ProfileOption(icon: Icons.edit, title: "Edit Profile", page: EditProfilePage()),
                ProfileOption(icon: Icons.phone, title: "Contact us", page: ContactUsPage()),
                ProfileOption(icon: Icons.info, title: "About us", page: AboutUsPage()),
                ProfileOption(icon: Icons.description, title: "Terms and conditions", page: TermsAndConditionsPage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget page;

  ProfileOption({required this.icon, required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      ),
    );
  }
}
