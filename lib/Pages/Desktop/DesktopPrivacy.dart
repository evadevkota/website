import 'package:explore/Pages/Desktop/DesktopDownloads.dart';
import 'package:explore/Pages/Desktop/DesktopFooter.dart';
import 'package:explore/Pages/Desktop/Desktopdrawer.dart';

import 'package:flutter/material.dart';

class DesktopPrivacy extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          key: scaffoldKey,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBar(
              leading: IconButton(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  icon: Image.asset('icons/drawer.png'),
                  onPressed: () {
                    scaffoldKey.currentState.openDrawer();
                  }),
              flexibleSpace: Container(
                width: 200,
                height: 100,
                padding: const EdgeInsets.fromLTRB(0, 05, 0, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(
                      "fileLOGO.jpg",
                    ),
                  ),
                ),
              ),
              backgroundColor: Colors.white,
              actions: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 13, 30, 0),
                    child: FlatButton(
                      height: 100,
                      minWidth: 100,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(60)),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DesktopDownloads()));
                      },
                      child: Text("DesktopDownloads",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    )),
              ],
            ),
          ),
          extendBodyBehindAppBar: true,
          drawer: MainDrawer(),
          body: SingleChildScrollView(
            child: Container(
              margin: new EdgeInsets.symmetric(horizontal: 20.0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 120, 150, 0),
                    child: Text(
                      "Privacy Policy for Prince Lab",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          height: 1.3,
                          fontStyle: FontStyle.normal,
                          fontFamily: "SanFranciscos"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 100, 5),
                      child: Text(
                        "Prince Lab takes Data Privacy seriously. Therefore, Prince Lab has developed this privacy notice because we want you to feel self-assured and secured about the privacy and security of your personal information. Please make sure you read it meticulously, so that you are aware of how and why we are using such information and what your rights are under the data protection legislation.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 50, 1090, 5),
                    child: Text(
                      'Applicability of Privacy Notice',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          height: 1.3,
                          fontStyle: FontStyle.normal,
                          fontFamily: "SanFranciscos"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: Text(
                        "This privacy notice has been drafted in accordance with the provisions of the General Data Protection Regulation – Regulation (EU) 2016/679 (the “GDPR”) and applies in all instances when Prince Lab acts as a controller of personal data relating users of Our website. ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 20),
                      child: Text(
                        "For the purposes of this privacy notice, the terms “Us”, “We” and “Our” refer to Prince Lab. The terms “you” and “your” refer to the data subject, being the person in relation to whom We have all personally identifiable information.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 50, 1280, 5),
                    child: Text(
                      'Alterations',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          height: 1.3,
                          fontStyle: FontStyle.normal,
                          fontFamily: "SanFranciscos"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: Text(
                        "We can make changes to this privacy notice from time to time. The changes we make on this page will be identified first. We will send a notice to you, in circumstances where a change will materially change the way in which We collect or use your personal information or data via emails or texts and you shall have a right to object to any such update and/or amendment or withdraw your consent.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 50, 1250, 5),
                    child: Text(
                      'Personal Data',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          height: 1.3,
                          fontStyle: FontStyle.normal,
                          fontFamily: "SanFranciscos"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: Text(
                        "The terms “personal data” or “personal information” mean any information about an individual for which that person can be identified. It does not include data where the identity has been removed (anonymous data).",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 20),
                      child: Text(
                        "We may collect and process personal data that you voluntarily give Us when you use Our website. For example, you may use this Website to contact Us with questions and comments. When you fill out the contact Us form on Our website, you provide Us with personal information such as your name and email address or phone number. ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 20),
                      child: Text(
                        "In addition to the information you provide when you use Our website, We may use technology to collect aggregated data such as statistical data. Aggregated data may be derived from your personal data but is not considered personal data in law as this data does not directly or indirectly reveal your identity. For example, We may aggregate your usage of Our website to calculate the percentage of users accessing a specific website feature. However, if We combine or connect aggregated data with your personal data so that it can directly or indirectly identify you, We treat the combined data as personal data which will be used in accordance with this notice. ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 50, 1180, 5),
                    child: Text(
                      'How we use your data',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          height: 1.3,
                          fontStyle: FontStyle.normal,
                          fontFamily: "SanFranciscos"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: Text(
                        "When you fill the contact Us form on this website, We use the personal information submitted in the form only to respond to your message or act on your request. This personal information will not be kept longer than necessary and will be deleted once the feedback requirement is met.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 20),
                      child: Text(
                        "The provision of your personal data is not a statutory or contractual requirement. You are not obliged to provide Us any personal data and it is your choice whether to provide Us.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 20),
                      child: Text(
                        "Only minimal personal data is collected when you fill the contact Us form on this website, namely your name and email address. Without provision of such personal data, We will not be in a position to respond to your message or act on your request.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 20),
                      child: Text(
                        "You may withdraw your consent to the processing of your personal data at any time. Such withdrawal does not affect the legality of any processing based on your consent prior withdrawal. ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 50, 1230, 5),
                    child: Text(
                      'Third party links',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          height: 1.3,
                          fontStyle: FontStyle.normal,
                          fontFamily: "SanFranciscos"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: Text(
                        "This website may include links to third-party websites, plug-ins and applications. It is important to note that clicking on those links or enabling those connections may allow third parties to collect or share data about you. We do not control these third-party websites and are not responsible for their privacy policies.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 50, 1230, 5),
                    child: Text(
                      'Use of Cookies',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          height: 1.3,
                          fontStyle: FontStyle.normal,
                          fontFamily: "SanFranciscos"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 220, 20),
                      child: Text(
                        "Prince lab uses cookies to give you the best online experience. By using our website you agree to our use of cookies in accordance with our cookie policy.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 50, 1190, 5),
                    child: Text(
                      'Information Sharing',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          height: 1.3,
                          fontStyle: FontStyle.normal,
                          fontFamily: "SanFranciscos"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: Text(
                        "As a general rule, any information gathered through the use of Our website is used solely by Us and, save as otherwise permitted herein and/or required by law, will not be transferred to third parties. ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 760, 20),
                      child: Text(
                        "We may, however, have to share your personal data with the parties set out below: ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 920, 20),
                      child: Text(
                        "1. selected individuals within Our company;  ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 885, 20),
                      child: Text(
                        "2. Our intra-group companies and affiliates; and   ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 816, 20),
                      child: Text(
                        "3. Our agents and third parties that provide services to Us. ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 20),
                      child: Text(
                        "We require all third parties to respect the security of your personal data and to treat it in accordance with the law. We do not allow Our third-party service providers to use your personal data for their own purposes and only permit them to process your personal data for specified purposes and in accordance with Our instructions. ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 50, 1200, 5),
                    child: Text(
                      'Location Tracking ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          height: 1.3,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          fontFamily: "SanFranciscos"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: Text(
                        "In February of 2015, the Federal Trade Commission (FTC) expanded their guidelines for mobile app developers who create apps that collect user data, specifically user location data. This expansion builds upon the original guidance published by the FTC in February of 2013 in their report 'Mobile Privacy Disclosures: Building Trust through Transparency'. ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 20),
                      child: Text(
                        "A recently settled lawsuit initiated by the FTC shows that these guidelines should not be disregarded by app developers without the risk of being charged with deceptive practices. ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 20),
                      child: Text(
                        "However, the main reasons why WE track users are to gain insights about how they use our site, to provide a personalized online experience, and to monetize the user by showing them targeted adverts.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 50, 1270, 5),
                    child: Text(
                      'Your Rights ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          height: 1.3,
                          fontStyle: FontStyle.normal,
                          fontFamily: "SanFranciscos"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 550, 20),
                      child: Text(
                        "For as long as We retain your personal data, you have certain rights in relation to your personal data including: ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                      child: Text(
                        "1. Right of access – you have the right to access the personal data We hold about you and to receive a copy of such personal data\n\n2. Right to complain – you have the right to lodge a complaint regarding the processing of your personal data with the supervisory authority for data protection matters.\n\n3. Right to Erasure – In certain circumstances you may request that We delete the personal data that We hold about you.\n\n4. Right to Object – you have a right to object and request that We cease the processing of your personal data where We rely on Our, or a third party’s legitimate interest for processing your personal data.\n\n5. Right to Rectification – you have the right to update or correct any inaccurate personal data which We hold about you. \n\n6. Right to Restriction – you have the right to request that We stop using your personal data in certain circumstances, including if you believe that We are unlawfully processing your personal data or the personal data that We hold about you is inaccurate.\n\n7. Right to withdraw your consent – where Our processing is based on your consent, you have the right to withdraw your consent. Withdrawal of your consent shall not affect the lawfulness of the processing based on your consent prior to the withdrawal of your consent\n\n8. Right to be informed of the source – where the personal data We hold about you was not provided to Us directly by you, you may also have the right to be informed of the source from which your personal data originates.\nPlease note that in terms of the applicable laws, your rights in relation to your personal data are not absolute.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(50, 20, 750, 0),
                      child: Text(
                        "You may exercise the rights indicated in this section by contacting Us directly.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                      child: Text(
                        "Given that the legal basis for Our processing of your personal information is consent, you have the right to withdraw that consent at any time by sending an e-mail to labprince18@gmail.com. Withdrawal will not affect the lawfulness of processing before the withdrawal.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                      child: Text(
                        "If you consider that Our processing of your personal information infringes data protection laws, you have a legal right to lodge a complaint with a supervisory authority responsible for data protection.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(50, 20, 200, 0),
                      child: Text(
                        "If you have any queries,you can drop us an email at contactus@princelab.org .",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(200, 20, 200, 20),
                      child: Text(
                        "Thank you!!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  FooterPanel()
                ],
              ),
            ),
          ),
        ));
  }
}
