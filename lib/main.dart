import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
      title: 'Abhishek Thakur',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  final List<String> images = [
    "https://www.yourselfquotes.com/wp-content/uploads/2018/02/Tuesday-Thoughts-Quotes-Images.jpg",
    "https://66.media.tumblr.com/66eb5404e610e9b651f69e9a8b1016c1/tumblr_pflkknHXGp1x0hhcdo1_400.jpg",
    "https://resize.indiatvnews.com/en/resize/newbucket/715_-/2019/09/inspirational-quotes-feature-1568270547.jpg",
    "https://pastorrick.com/wp-content/uploads/2019/01/01-06-19-Transformed-Your-Thoughts-Control-Your-Life-1280x720.jpg",
    "https://lh3.googleusercontent.com/f4vtkg1XENQWTRDlfeyib1m9On0cZ0aCHC1LYNwiwM8gnrA-4qajLlHl9D1DHdrWdJx9ojpaomXyUo6jHdOwDy8QFPjmUHg1Nc4gl5180X1aQqUY9ZC0KPITbeEBZRlDUFOfkEfiIw=w931-h697-no",
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Abhishek Thakur",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        // actions: <Widget>[
        //   Row(
        //     children: <Widget>[
        //       Padding(
        //         padding: EdgeInsets.only(left: 700),
        //         child: FlatButton(
        //           child: Text("Home",
        //               style: TextStyle(color: Colors.white, fontSize: 15)),
        //           onPressed: () {},
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.only(left: 0),
        //         child: FlatButton(
        //           child: Text("About",
        //               style: TextStyle(color: Colors.white, fontSize: 15)),
        //           onPressed: () {},
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.only(left: 0),
        //         child: FlatButton(
        //           child: Text("Contact",
        //               style: TextStyle(color: Colors.white, fontSize: 15)),
        //           onPressed: () {},
        //         ),
        //       ),
        //     ],
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildHeader(),
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(color: Colors.grey.shade200),
                      child: Text(
                          "Student of Computer Science Engineering.Very enthusiastic to Work on ML & AI.\nCurrently Working & Learning Software Development,Web Development,APPS(IOS & ANDROID) "),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 300,
                      width: 650,
                      padding: EdgeInsets.all(16.0),
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              image: NetworkImage(
                                images[index],
                              ),
                              fit: BoxFit.fill,
                            ),
                          );
                        },
                        itemWidth: 400,
                        //viewportFraction: 0.8,
                        //scale: 0.9,
                        itemCount: 5,
                        //pagination: SwiperPagination(),
                        layout: SwiperLayout.STACK,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                      //Text("Glance of life",style:TextStyle(color: Colors.grey),textAlign: TextAlign.center), 
                  ],
                ),
              ],
            ),
            _buildTitle("Skills"),
            SizedBox(height: 10.0),
            _buildSkillRow("Flutter", 0.75),
            SizedBox(height: 5.0),
            _buildSkillRow("Python", 0.7),
            SizedBox(height: 5.0),
            _buildSkillRow("React JS", 0.6),
            SizedBox(height: 5.0),
            _buildSkillRow("Core Java", 0.4),
            SizedBox(height: 5.0),
            _buildSkillRow("C", 0.3),
            SizedBox(height: 5.0),
            _buildSkillRow("C++", 0.3),
            SizedBox(height: 5.0),
            _buildSkillRow("MySQL", 0.5),
            SizedBox(height: 5.0),
            _buildSkillRow("JavaScript", 0.6),
            SizedBox(height: 30.0),
            _buildTitle("Experience"),
            _buildExperienceRow(
                company: "Worked in Startup",
                position: "Software Developer",
                duration: "2018 - 2019"),
            SizedBox(height: 20.0),
            _buildTitle("Education"),
            SizedBox(height: 5.0),
            _buildEducationRow(
                college: "Sambhram Institute Of Technology, Bangalore",
                course: "Computer Science & Engineering",
                duration: "2016 - 2020",
                score: "CGPA - 7.51(till 6th Sem)"),
            _buildEducationRow(
                college: "R J R R S D College, Basopatti",
                course: "Secondary High School",
                duration: "2014 - 2016",
                score: "Percentage - 60%"),
            _buildEducationRow(
                college: "High School Lauthwa", 
                course: "High School Education", 
                duration: "2012 - 2014", 
                score: "Percentage - 61% "),
            SizedBox(height: 20.0),
            _buildTitle("Contact"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.mail,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "thakur_abhishek@aol.com",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.phone,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "+91-9591695993",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            _buildSocialsRow(),
            SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 8),
        width: screenSize.width,
        height: 50,
        color: Colors.black,
        child: Text("Copyright © 2019 \t Abhishek Thakur ",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            )),
      ),
    );
  }

  Row _buildSocialsRow() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.facebook),
          onPressed: () {
            _launchURL("https://facebook.com/lohanidamodar");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.github),
          onPressed: () {
            _launchURL("https://github.com/kumarcops");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.red,
          icon: Icon(FontAwesomeIcons.linkedin),
          onPressed: () {
            _launchURL("https://www.linkedin.com/in/abhishekthakur0/");
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ListTile _buildExperienceRow(
      {String company, String position, String duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(" $position ($duration)"),
    );
  }
  ListTile _buildEducationRow(
      {String college, String course, String duration, String score}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        college,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(" $course ($duration)\n $score"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.left,
            )),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        Container(
            width: 80.0,
            height: 80.0,
            child: CircleAvatar(
                radius: 46,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(
"https://firebasestorage.googleapis.com/v0/b/abhishek-thakur.appspot.com/o/AbhishekThakurImg.jpeg?alt=media&token=4be62dc8-3d5c-4c56-822a-86f76344353f"                  ),
                ))),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Abhishek Thakur",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text("Full Stack Developer"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.map,
                  size: 12.0,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Bengaluru, India",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
