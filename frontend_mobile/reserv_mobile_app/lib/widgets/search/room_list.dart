import 'package:flutter/material.dart';

class RoomList extends StatelessWidget {
  final Map<String, dynamic> data;

  const RoomList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Check if data is empty or null
    if (data.isEmpty) {
      return const Scaffold(
        body: Center(
          child: Text('No rooms available!'),
        ),
      );
    }
    
    final List<dynamic> roomList = data['roomList'];

    return Scaffold(
      body: ListView.builder(
        itemCount: roomList.length,
        itemBuilder: (context, index) {
          final room = roomList[index];

          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('${room['BuildingID']} ' ' ${room['RoomNumber']}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [                 
                  Text('Room Type: ${room['RoomType']}'),
                  Text('Capacity: '),
                ],
              ),
              onTap: () {
                // Handle the tap on a room, you can navigate to a detailed page or perform other actions
                print('Tapped on Room ID: ${room['RoomID']}');
              },
            ),
          );
        },
      )
    );
  }
}