import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Information"),
      ),
      body: Container(
        color: Colors.black, // Set the background color to black
        padding: EdgeInsets.all(90), // Add padding for spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Add your personal information here as Text widgets in a Column
            _buildInfoText("Name: Marisol C. De Leon."),
            _buildInfoText("Age: 21 years old"),
            _buildInfoText("Height: 5'0"),
            _buildInfoText("Address: 198 Banaoang Calasiao Pangasinan"),
            _buildInfoText("Date of Birth: November 29, 2001"),
            _buildInfoText("Place of Birth: Calasiao"),
            _buildInfoText("Sex: Female"),
            _buildInfoText("Citizenship: Filipino"),
            _buildInfoText("Civil Status: Single"),
            _buildInfoText("Religion: secret, di pa sure"),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoText(String text) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromRGBO(
              185, 119, 148, 0.639), // Set the text color to yellow
          fontSize: 16, // Set the font size
          fontWeight: FontWeight.bold, // Set the font weight to bold
          fontStyle: FontStyle.italic, // Set the font style to italic
        ),
      ),
    );
  }
}
