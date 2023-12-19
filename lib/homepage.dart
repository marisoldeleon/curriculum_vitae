import 'package:flutter/material.dart';
import 'educationalBackground.dart';
import 'second.dart';
import 'skillspage.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Curriculum Vitae",
    home: Firstpage(),
  ));
}

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 5, 5),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Curriculum Vitae',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 33, 33, 34),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'image/Picsart.jpg',
                ),
                radius: 60.0,
              ),
            ),
            Divider(
                height: 50, color: const Color.fromARGB(255, 255, 255, 255)),
            Text(
              "Name:",
              style: TextStyle(
                color: Color.fromRGBO(185, 119, 148, 0.639),
              ),
            ),
            Text(
              "Marisol C. De Leon",
              style: TextStyle(
                  color: Color.fromARGB(255, 52, 148, 92),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Divider(
                height: 50, color: const Color.fromARGB(255, 255, 255, 255)),
            Text(
              "Position:",
              style: TextStyle(
                color: Color.fromRGBO(185, 119, 148, 0.639),
              ),
            ),
            Text(
              "IT Technician",
              style: TextStyle(
                  color: const Color.fromARGB(255, 52, 148, 92),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Divider(
                height: 50, color: const Color.fromARGB(255, 255, 255, 255)),
            Text("CONTACTS:",
                style: TextStyle(
                    color: Color.fromARGB(255, 52, 148, 92),
                    fontSize: 30,
                    fontWeight: FontWeight.w700)),
            Row(
              children: [
                Icon(Icons.mail, color: Color.fromARGB(255, 22, 161, 69)),
                SizedBox(width: 8.0),
                Text(
                  "marisolcanta29@gmail.com",
                  style: TextStyle(color: Color.fromRGBO(185, 119, 148, 0.639)),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.call, color: const Color.fromARGB(255, 22, 161, 69)),
                SizedBox(width: 8.0),
                Text(
                  "09518776137",
                  style: TextStyle(
                      color: const Color.fromRGBO(185, 119, 148, 0.639)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SkillsScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.info,
                      color: const Color.fromARGB(255, 22, 161, 69)),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PersonalInfoScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.school,
                      color: const Color.fromARGB(255, 22, 161, 69)),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => educationalBackgroundScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.settings,
                      color: const Color.fromARGB(255, 22, 161, 69)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
