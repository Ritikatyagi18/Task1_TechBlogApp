import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Scholarships extends StatelessWidget {
  Future<void> _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  static String id = 'scholarships';

  final List<String> headings = <String>[
    'Donald Davies Computer Science scholarships',
    'AWC Scholarship Fund for Women in Computing',
    'Microsoft Dissertation Grant Program',
    'IBM SWE Scholarships',
    'Merit Cum Means Scholarship For Professional And Technical Courses ',
    'Sitaram Jindal Foundation Scholarship 2021 ',
    'Aga Khan Foundation Scholarship 2021-22',
  ];
  final List<String> contents = <String>[
    'We offer a number of Computer Science scholarships, named after eminent computer scientist Donald Davies.',
    'More information about eligibility criteria and required materials is available after completing the Pre-Qualifying Questions.',
    'A research grant for PhD students at universities in the United States and Canada.',
    'SWE Scholarships support those who identify as a female/woman. ',
    'Administered by the Ministry of Minority Affairs, Government of India.',
    'This Scholarship is offered by Sitaram Jindal Foundation.',
    'Interested applicants can apply by going through the detailed information given in our article.',
  ];
  final List<String> url = <String>[
    'https://www.royalholloway.ac.uk/studying-here/fees-and-funding/undergraduate/scholarships-and-bursaries/scholarships/computer-science-scholarships/',
    'https://www.aaacf.org/Grants-Scholarships/Scholarships-Resources-How-to-Apply/Available-Scholarships#78437-aaacf-scholarships-that-use-the-online-scholarship-application',
    'https://www.microsoft.com/en-us/research/academic-program/dissertation-grant/'
    'https://societyofwomenengineers.swe.org/scholarships/#activePanels_',
    'https://www.vidhyaa.in/scholarship/merit-cum-means-scholarship-for-professional-and-technical-courses-cs',
    'https://www.vidhyaa.in/scholarship/sitaram-jindal-foundation-scholarship-scheme',
    'https://www.vidhyaa.in/scholarship/aga-khan-foundation-scholarship',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(

            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Scholarships',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico",
                    shadows: <Shadow>[

                      Shadow(
                        offset: Offset(6.0, 6.0),
                        blurRadius: 2.0,
                        color: Color.fromARGB(120, 125, 80, 80),
                      ),
                    ],

                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: headings.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(

                        title: Text(
                          headings[index],
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          contents[index],
                          style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.normal,),
                        ),
                        onTap: () {
                          _launchURL(url[index]);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => Divider(
                    height: 20,
                    thickness: 5,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.blueGrey,
                  ),
                ),
              ),


            ],
          ),
        ));
  }
}


