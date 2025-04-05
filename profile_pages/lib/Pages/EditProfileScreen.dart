import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: [
            // Profile Picture
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius:80,
                  backgroundColor: Colors.grey[300],
                  // backgroundImage: NetworkImage(
                  //   'https://via.placeholder.com/150', // Placeholder image
                  // ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF1565C0),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 18,
                      ),
                      onPressed: () {
                        // Handle profile picture change
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 48),

            // First Name and Last Name Row
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "First name" ,
                      labelStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    controller: TextEditingController(text: "Kholid"),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Last name",
                      labelStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    controller: TextEditingController(text: "Ghonem"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Email Field
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              controller: TextEditingController(text: "Kholid.ghonem@gmail.com"),
            ),
            SizedBox(height: 16),

            // Phone Number Field
            Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: DropdownButtonFormField<String>(
                      value: '+20',
                      items: ['+20', '+1', '+44']
                          .map((code) => DropdownMenuItem(
                                child: Text(code),
                                value: code,
                              ))
                          .toList(),
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                      initialValue: '1118716970',
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
            SizedBox(height: 30),

            // Cancel and Save Buttons
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      // Handle cancel action
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.red, width: 2),
                      foregroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: Text(
                      "Cancel",
                      style: TextStyle(fontSize: 16, color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle save action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1565C0),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}