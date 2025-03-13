import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text('meowxjxx', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        actions: [
          Icon(Icons.alternate_email, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.add_box_outlined, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.menu, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/profile_image.jpg'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('roni she/her', style: TextStyle(color: Colors.white70, fontStyle: FontStyle.italic)),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            StatColumn('0', 'posts'),
                            StatColumn('337', 'followers'),
                            StatColumn('76', 'following'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Editor', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      Text('UX/UI Designer || Video Editor 🎥', style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(child: ProfileButton(text: 'Edit profile')),
                    SizedBox(width: 10),
                    Expanded(child: ProfileButton(text: 'Share profile')),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      StoryBubble(label: 'New', isNew: true),
                      SizedBox(width: 10),
                      StoryBubble(label: 'huh'),
                      SizedBox(width: 10),
                      StoryBubble(label: '+vibe'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Divider(color: Colors.grey[800]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.grid_on, color: Colors.white),
              Icon(Icons.video_library_outlined, color: Colors.grey),
              Icon(Icons.person_outline, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}

class StatColumn extends StatelessWidget {
  final String count;
  final String label;

  StatColumn(this.count, this.label);

@override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Text(count, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
          Text(label, style: TextStyle(color: Colors.white70, fontSize: 12)),
        ],
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  final String text;

  ProfileButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}

class StoryBubble extends StatelessWidget {
  final String label;
  final bool isNew;

  StoryBubble({required this.label, this.isNew = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey[600]!, width: 2),
            color: Colors.black,
          ),
          child: isNew
              ? Center(child: Icon(Icons.add, color: Colors.white))
              : null,
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }
}