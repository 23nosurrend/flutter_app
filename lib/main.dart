import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:userCard()
  ));
}

class userCard extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title:Text("User Card"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image3.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.blue,

            ),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
             Text(
              "Keynes Bizimana",
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 2.0,
                fontWeight:FontWeight.bold
              ),
            ),
             SizedBox(height: 30.0),
             Text(
              "Current Developer Level",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "100",
              style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color:Colors.grey
                ),
                SizedBox(width:10.0),
                Text(
                  "keynesbizimana@gmail.com",
                  style: TextStyle(color:Colors.grey,fontSize: 18,letterSpacing: 1.8),
                ),
                
                
              ],
            )
          ],
        ),
        
        
        ),
        
      
    );
  }
}

