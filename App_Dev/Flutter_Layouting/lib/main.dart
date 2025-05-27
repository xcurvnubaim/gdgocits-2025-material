import 'package:flutter/material.dart';

class ProfileCardPage extends StatelessWidget {
  final String profileImageUrl =
      'https://avatars.githubusercontent.com/u/583231?v=4';

  Widget buildAboutCard(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GDGoC Workshop')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Image
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(profileImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Name and Title
              Text(
                'Taylor Swift',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Singer · Songwriter · Cat Enthusiast',
                style: TextStyle(color: Colors.grey[700]),
              ),
              SizedBox(height: 20),

              // Email
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.deepPurple),
                  SizedBox(width: 8),
                  Text('taylor@swiftmail.com'),
                ],
              ),
              SizedBox(height: 10),

              // Location
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_pin, color: Colors.redAccent),
                  SizedBox(width: 8),
                  Text('Nashville, TN'),
                ],
              ),
              SizedBox(height: 20),

              // About Sections (Scrollable Content)
              buildAboutCard(
                'Taylor Swift is a 12-time Grammy award-winning artist who loves songwriting, storytelling, and cats. Known for her evolution from country roots to pop stardom, Taylor is one of the best-selling musicians of all time.',
              ),
              buildAboutCard(
                'She has made a name for herself not only in music but also in activism and philanthropy, supporting education, disaster relief, and artists\' rights.',
              ),
              buildAboutCard(
                'Taylor\'s ability to reinvent her music and image while maintaining artistic integrity has earned her a loyal global fanbase.',
              ),
              buildAboutCard(
                'When she\'s not performing, Taylor enjoys baking, reading books, and spending time with her three cats: Meredith, Olivia, and Benjamin.',
              ),
              buildAboutCard(
                'Fun fact: Taylor often leaves secret messages in her albums for fans to decode — a tradition known as "Easter eggs."',
              ),
              buildAboutCard(
                'She also directed many of her own music videos, demonstrating her multi-talented creative vision in the industry.',
              ),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
