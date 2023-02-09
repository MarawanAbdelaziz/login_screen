// ignore_for_file: prefer_const_constructors, avoid_print, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';

class LogenScreen extends StatelessWidget {
  var EmailController = TextEditingController();
  var PassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Marawan App'),
        actions: [
          IconButton(
              onPressed: () {
                print('On fire');
              },
              icon: Icon(Icons.facebook_rounded))
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: 80.0,
                ),

                TextFormField(
                  controller: EmailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.00),
                      bottomLeft: Radius.circular(20),
                    )),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),

                SizedBox(
                  height: 40.0,
                ),
                //

                TextFormField(
                  controller: PassController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        print('Eye');
                      },
                      icon: Icon(Icons.remove_red_eye),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.00),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 40.0,
                ),

                Container(
                  width: double.infinity,
                  color: Colors.blueAccent,
                  child: MaterialButton(
                    onPressed: () {
                      print(EmailController.text);
                      print(PassController.text);
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 40.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t Have an Accont ?'),
                    TextButton(
                      onPressed: () {},
                      child: Text('Register Now'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
