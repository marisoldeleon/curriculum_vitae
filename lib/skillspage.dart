import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skills"),
      ),
      body: Container(
        color: Colors.black, // Set the background color to black
        padding: EdgeInsets.all(20), // Add padding for spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Add your skills information here as Text widgets in a Column
            _buildSkillText("Interpersonal Skills"),
            _buildSkillText("Active Listening"),
            _buildSkillText("Time Management"),
            _buildSkillText("dancing"),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillText(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(
          Icons
              .circle, // Use the star icon for skills (you can change this to a different icon)
          color: const Color.fromARGB(255, 22, 161, 69),
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Color.fromRGBO(
                185, 119, 148, 0.639), // Set the text color to yellow
            fontSize: 16, // Set the font size
            fontWeight: FontWeight.bold, // Set the font weight to bold
            fontStyle: FontStyle.italic, // Set the font style to italic
          ),
        ),
      ),
    );
  }
}
