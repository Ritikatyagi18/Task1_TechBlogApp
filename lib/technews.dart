import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TechNews extends StatelessWidget {
  Future<void> _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  static String id = 'technews';

  final List<String> headings = <String>[
    'Digital technology on the cutting edge',
    'Understanding 5g the backbone of the industrial internet',
    'Podcast: How games teach AI to learn for itself',
    'Data Scientists Without Data Engineering Skills Will Face the Harsh Truth',
    'Microsoft Acquires Software Service Ally.io For An Undisclosed Amount',
    'Google To Invest 1b In Africa To Support Digital Transformation Across The Continent',
    'Tim Cook Worried About Apple Devices Used for ‘Endless Scrolling',
  ];
  final List<String> contents = <String>[
    'Digital technologies such as artificial intelligence, big data and machine learning are increasingly important to the manufacturing industry. ',
    'A data-driven "fourth industrial revolution" has long been predicted. Now, the backbone for that platform is finally becoming a reality. ',
    'Like humans and many animals, AI often learns new skills through play. But unlike the natural world, AI can process years of training in a single day.',
    'Although the role of the data scientist is still evolving, data remains at its core.',
    'Today, tech giant Microsoft announced its acquisition of software service company Ally.io at an undisclosed amount.',
    'Google, has announced its plans to invest 1 billion for Digital transformation in Africa.',
    'In an interview conducted with Bustle has expressed deep concerns about the “endless-mindless scrolling” culture that social media has inspired users to practice daily.'
  ];
  final List<String> url = <String>[
    'https://www.home.sandvik/en/stories/articles/2020/11/digital-technology-on-the-cutting-edge/',
    'https://www.home.sandvik/en/stories/articles/2019/10/understanding-5g-the-backbone-of-the-industrial-internet/',
    'https://www.technologyreview.com/2021/09/29/1036329/podcast-how-games-teach-ai-to-learn-for-itself/',
    'https://www.kdnuggets.com/2021/09/data-scientists-data-engineering-skills.html',
    'https://techbooky.com/microsoft-acquires-software-service-ally-io-for-an-undisclosed-amount/?utm_source=rss&utm_medium=rss&utm_campaign=microsoft-acquires-software-service-ally-io-for-an-undisclosed-amount',
    'https://techbooky.com/google-to-invest-1b-in-africa-to-support-digital-transformation/?utm_source=rss&utm_medium=rss&utm_campaign=google-to-invest-1b-in-africa-to-support-digital-transformation',
    'https://techbooky.com/tim-cook-worried-about-apple-devices-used-for-endless-scrolling/?utm_source=rss&utm_medium=rss&utm_campaign=tim-cook-worried-about-apple-devices-used-for-endless-scrolling',

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
                  'Tech News',
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
