import 'package:flutter/material.dart';


class ContactUsPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact us", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Logoipsum',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1565C0),),
              ),
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                initialValue: 'Khalid_ghonem@gmail.com',
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Send a message',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                color: Color(0xFF1565C0),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1565C0),
                //    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Send',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
