import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidablePage extends StatefulWidget {
  const SlidablePage({super.key});

  @override
  State<SlidablePage> createState() => _SlidablePageState();
}

class _SlidablePageState extends State<SlidablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slidable Page"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {},
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                icon: Icons.phone,
                //label: 'Call',
              ),
              SlidableAction(
                onPressed: (context) {},
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                icon: Icons.chat,
                //label: 'Message',
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {},
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: "delete", 
              )
            ],
          ),
          child: Container(
            color: Colors.grey,
            child: const ListTile(
              title: Text("Delbert Drums"),
              subtitle: Text("674208573"),
              leading: Icon(
                Icons.person,
                size: 40,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
