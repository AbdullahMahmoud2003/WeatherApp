import 'package:flutter/material.dart';
import 'package:weather_app/Pages/infoBody.dart';

class searchBody extends StatefulWidget {
  searchBody({super.key});

  static String id = "searchBody";

  @override
  State<searchBody> createState() => _searchBodyState();
}

class _searchBodyState extends State<searchBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Implement your back button logic here
            Navigator.pop(context);
          },
        ),
        title: Text("Search"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: TextFormField(
                validator: (data) {
                  if (data!.isEmpty)
                    return "field is required";
                  else
                    return null;
                },
                onFieldSubmitted: (cityName) {},
                decoration: InputDecoration(
                  labelText: "Search",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      setState(() {});
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, infoBody.id);
                      } else {}
                    },
                  ),
                  hintText: "Enter the name of the city",
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
