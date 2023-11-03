import 'package:contact_app/models/contact_model.dart';
import 'package:contact_app/pages/detail_contact_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ContactModel> data = [
    ContactModel(name: "Ruslan", phone: "082262314069", gender: "Male"),
    ContactModel(name: "Hanna", phone: "0822234342444", gender: "Female"),
    ContactModel(name: "Yogi", phone: "082262314567", gender: "Male"),
    ContactModel(name: "Watfa", phone: "082262310000", gender: "Female"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (builder) => DetailContactPage(
                        name: data[index].name,
                        phone: data[index].phone,
                        gender: data[index].gender,
                        datetime: data[index].datetime,
                      ),
                    ),
                  ),
                  child: Card(
                    color: Colors.amberAccent,
                    child: ListTile(
                      title: Text(data[index].name),
                      subtitle: Text(data[index].phone),
                      leading: data[index].gender == "Male"
                          ? const Icon(
                              Icons.man,
                              size: 50,
                            )
                          : const Icon(
                              Icons.woman,
                              size: 50,
                            ),
                      trailing: const Icon(Icons.next_plan),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
