import 'package:explore/Pages/Desktop/DesktopDownloads.dart';
import 'package:explore/Pages/Desktop/DesktopFooter.dart';
import 'package:explore/Pages/Desktop/Desktopdrawer.dart';

import 'package:flutter/material.dart';

class DesktopTerms extends StatelessWidget {
  @override
  @override
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
                        child: Text("Download",
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
                alignment: Alignment.center,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 150, 150, 0),
                    child: Text(
                      "Terms and Condition for Prince Lab",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "SanFranciscos"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 250, 0),
                      child: Text(
                        "Please read these Terms carefully. Access to, and use of Prince Lab products (“Products”), Prince Lab services (“Services”), and the Prince Lab website https://princelab.org/ (“Website”), including any of its content, is conditional on your agreement to these Terms. You must read, agree with, and accept all of the terms and conditions contained in these Terms. By creating an account, or by using or visiting our Website, you are bound to these Terms and you indicate your continued acceptance of these Terms.",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "SanFranciscos",
                          height: 1.3,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 1300, 0),
                      child: Text(
                        " Your Account",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "SanFranciscos",
                            height: 1.3,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "To access certain services offered by the platform, we may require that you create an account with us or provide personal information to complete the creation of an account. We may at any time in our sole and absolute discretion, invalidate the username and/or password without giving any reason or prior notice and shall not be liable or responsible for any losses suffered by, caused by, arising out of, in connection with or by reason of such request or invalidation.",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "SanFranciscos",
                          fontSize: 16,
                          height: 1.3,
                          fontStyle: FontStyle.normal,
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "You are responsible for maintaining the confidentiality of your user identification, password, account details and related private information. You agree to accept this responsibility and ensure your account and its related details are maintained securely at all times and all necessary steps are taken to prevent misuse of your account. You should inform us immediately if you have any reason to believe that your password has become known to anyone else, or if the password is being, or is likely to be, used in an unauthorized manner. You agree and acknowledge that any use of the Site and related services offered and/or any access to private information, data or communications using your account and password shall be deemed to be either performed by you or authorized by you as the case may be. You agree to be bound by any access of the Site and/or use of any services offered by the Site (whether such access or use are authorized by you or not). You agree that we shall be entitled (but not obliged) to act upon, rely on or hold you solely responsible and liable in respect thereof as if the same were carried out or transmitted by you. You further agree and acknowledge that you shall be bound by and agree to fully indemnify us against any and all losses arising from the use of or access to the Site through your account.",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "SanFranciscos",
                          height: 1.3,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "Please ensure that the details you provide us with are correct and complete at all times. You are obligated to update details about your account in real time by accessing your account online. For pieces of information you are not able to update by accessing Your Account on the Site, you must inform us via our customer service communication channels to assist you with thesechanges. We reserve the right to refuse access to the Site, terminate accounts, remove or edit content at any time without prior notice to you. We may at any time in our sole and absolute discretion, request that you update your Personal Data or forthwith invalidate the account or related details without giving any reason or prior notice and shall not be liable or responsible for any losses suffered by or caused by you or arising out of or in connection with or by reason of such request or invalidation. You hereby agree to change your password from time to time and to keep your account secure and also shall be responsible for the confidentiality of your account and liable for any disclosure or use (whether such use is authorised or not) of the username and/or password.",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "SanFranciscos",
                          height: 1.3,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(90, 30, 1290, 0),
                      child: Text(
                        " Privacy Policy",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "SanFranciscos",
                            height: 1.3,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "Please review our Privacy Agreement, which also governs your visit to the Site. The personal information / data provided to us by you or your use of the Site will be treated as strictly confidential, in accordance with the Privacy Agreement and applicable laws and regulations. If you object to your information being transferred or used in the manner specified in the Privacy Agreement, please do not use the Site.",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "SanFranciscos",
                          height: 1.3,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(102, 30, 1250, 0),
                      child: Text(
                        "Fees and Payments",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "SanFranciscos",
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "By purchasing Products and/or Services, you agree to pay Prince Lab annual subscription fees indicated for such Product or Service. Payments will be due as of the first day you sign up for a Product and/or Services, and will cover an annual period, as indicated when signing up.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "SanFranciscos",
                          height: 1.3,
                          fontStyle: FontStyle.normal,
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "Configurations and prices of the Website, Products, and/or Services are subject to change at any time, and Prince Lab shall at all times be entitled to modify configurations, fees, prices and quotations, provided that no price changes shall be made applicable to you during a subscription term, and shall only take effect after Prince Lab and you have agreed upon an extension, upgrade or renewal of the subscription term. You agree to any such changes if you do not object in writing to Prince Lab within seven (7) business days of receiving a notice of Prince Lab, or an invoice, incorporating or announcing the fee and/or price changes. All prices are exclusive of, and you shall pay all taxes, duties, levies or fees, or other similar charges imposed on Prince Labor yourself by any taxing authority (other than taxes imposed on Prince Lab’s income), related to your order, unless you have provided Prince Lab with an appropriate resale or exemption certificate for the delivery location, which is the location where the Products and/or Services are used or performed. In case of changes in law such that a tax is levied that is or becomes irrecoverable with a consequent increase to the costs to Prince Lab of delivering the Products and/or Services, whereby and to such an extent Prince Lab is entitled to increase its prices accordingly and retroactively.",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "SanFranciscos",
                          height: 1.3,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(50, 30, 1000, 0),
                      child: Text(
                        " CONTINUED AVAILABILITY OF THE SITE",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos",
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "We will do our utmost to ensure that access to the Site is consistently available and is uninterrupted and error-free. However, due to the nature of the Internet and the nature of the Site, this cannot be guaranteed. Additionally, your access to the Site may also be occasionally suspended or restricted to allow for repairs, maintenance, or the introduction of new facilities or services at any time without prior notice. We will attempt to limit the frequency and duration of any such suspension or restriction.",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(70, 30, 1000, 0),
                      child: Text(
                        " Use of Third Party Content and Materials",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos",
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "Prince Lab has not reviewed, and cannot review, all of the material, including computer software, posted to the Website, and cannot therefore be responsible for that material’s content, use or effects. By operating the Website, Prince Lab does not represent or imply that it endorses the material there posted, or that it believes such material to be accurate, useful or non-harmful. The Website may contain content that is offensive, indecent, or otherwise objectionable, as well as content containing technical inaccuracies, typographical mistakes, and other errors. The Website may also contain material that violates the privacy or publicity rights, or infringes the intellectual property and other proprietary rights, of third parties, or the downloading, copying or use of which is subject to additional terms and conditions, stated or unstated. Prince labdisclaims any responsibility for any harm and/or damages resulting from the use or downloading of postings of other parties on the website.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            height: 1.3,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 1200, 0),
                      child: Text(
                        " Copyright Infringement",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            height: 1.3,
                            fontFamily: "SanFranciscos",
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "As Prince Lab requires others to respect its intellectual property rights, it respects the intellectual property rights of others. If you believe that material located on or linked to by the Website violates your copyright, you are encouraged to notify Prince Lab. Prince Lab will, as it is able, respond to all such notices, including as required or appropriate by removing the infringing material or disabling all links to the infringing material. In order to bring infringing material to our attention, you must provide our DMCA Agent with the following information: (a) an electronic or physical signature of the person authorized to act on behalf of the owner of the copyrighted work; (b) an identification of the copyrighted work and the location on the Website of the allegedly infringing work; (c) a written statement that you have a good faith belief that the disputed use is not authorized by the owner, its agent or the law; (d) your name and contact information, including telephone number and email address; and (e) a statement by you that the above information in your notice is accurate and, under penalty of perjury, that you are the copyright owner or authorized to act on the copyright owner’s behalf.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            height: 1.3,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 1300, 0),
                      child: Text(
                        " Trademarks",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos",
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "Prince Lab, the Prince Lab logo, and all other trademarks, service marks, graphics and logos used in connection with the Website, Products, and Services, are trademarks or registered trademarks of Prince Lab or Prince Lab’s licensors. Other trademarks, service marks, graphics and logos used in connection with the Website, Products, and Services, may be the trademarks of other third parties in which case such license is for the exclusive benefit and use of us unless otherwise stated, or may be the property of their respective owners. Your use of the Website grants you no right or license to reproduce or otherwise use any Prince Lab or third party trademarks. Likewise, you grant no right or license to reproduce or otherwise use any of your trademarks, service marks, graphics and/or logos, unless expressly authorized by you.",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 1300, 0),
                      child: Text(
                        " Termination",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 20,
                            fontFamily: "SanFranciscos",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "You may terminate your agreement and close your account with Prince Lab at any time, effective the last day of your subscription term, by sending an email to support@princelab.com. Prince Lab may terminate its relationship with you, or may terminate or suspend the accessibility to the Website, Products, and/or Services at any time, including the use of any software, (i) if you breach these Terms and/or any other agreement with Prince Lab; (ii) if Prince Lab reasonably suspects that you are using the Website, Products, and/or Services to breach the law or infringe third party rights; (iii) if Prince Lab reasonably suspects that you are trying to unfairly exploit or misuse Prince Lab’s policies; (iv) if Prince Lab reasonably suspects that you are using the Website, Products, and/or Services fraudulently, or that Products or Services provided to you are being used by a third party fraudulently; (v) if you fail to pay any amounts due to Prince Lab; (vi) you violate any applicable law or regulation. Upon termination of your Prince Lab account for the above reasons, there will be no refund of fees and you will be denied access to the Website, Products and/or the Services, including all of its data.",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "Prince Lab may terminate any agreement and access to your account, if the Services or any part thereof, are no longer legally available in your jurisdiction, or are no longer commercially viable, at Prince Lab’s sole discretion. In case of termination or closing of your account by you because of a material breach by Prince Lab, without any default by you, or in case of a force majeure onthe side of Prince Lab, Prince Lab will refund pro rata for the remaining period of your subscription any fees or expenses paid by you.If you believe that Prince Lab has failed to perform or the Services are defective, you must notify Prince Lab in writing and allow fourteen (14) days for Prince Lab to cure the defect. If Prince Lab cures the defect within this cure period, Prince Lab will not be in default and cannot be held liable for any damages and/or losses in connection to such default. If Prince Lab has not cured the defect within this cure period, you may terminate the subscription with immediate effect, upon written notice to Prince Lab.",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 1340, 0),
                      child: Text(
                        " Changes",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos",
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "The configurations and specifications of the Website, including without limitation all content there available, the Products, and the Services may be amended and/or updated from time to time, at the sole discretion of Prince Lab. You are bound by any such changes or updates, unless such changes materially diminish the functionality and value of the Website, Products and/or Services.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 1100, 0),
                      child: Text(
                        " Your Representations and Warranties",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "SanFranciscos",
                            fontSize: 20,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "You represent and warrant that your use of the Website, Products, and/or Services will be in accordance with any agreement between you and Prince Lab, the Prince Lab Privacy Policy, these Terms, and with any applicable laws and regulations, including without limitation any local laws or regulations in your country, state, city, or other governmental area, regarding online conduct and acceptable content, and including all applicable laws regarding the transmission of technical data exported from the country in which you reside, and with any other applicable policy or terms and conditions.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 1230, 0),
                      child: Text(
                        " Indemnification",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            height: 1.3,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos",
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "Subject to the limitations set forth herein, the Parties agree to defend, indemnify, and hold each other harmless, including its subsidiaries and affiliates, their respective directors, officers, employees or agents, and other representatives, from and against all claims, losses, damages, liabilities, and costs (including but not limited to reasonable attorneys’ fees and court costs), arising out of, relating to or in connection with (i) a material violation of these Terms, or any agreement between the Parties, or (ii) any allegation that any information or material (including any Content) violates any rights of any third party.",
                        style: TextStyle(
                          height: 1.3,
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "You understand and agree that, by using the Products and/or Services, you are solely responsible for any data, including personally identifiable information, collected or processed via our Products and/or Services. You will defend, indemnify, and hold Prince Lab harmless, without any limitation, for all damages in connection to (alleged) violations of any privacy laws through the use of the Products and/or Services under your account.",
                        style: TextStyle(
                          color: Colors.black,
                          height: 1.3,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 1300, 0),
                      child: Text(
                        " Miscellaneous",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "Each party shall take out adequate insurance in order to cover its risks hereunder, including but not limited to a general- and product liability insurance. Regarding the security, confidentiality and integrity of data, each party is responsible for maintaining appropriate technical and organizational measures for the protection of data processed on their own systems and on third party systems that are in use by the involved party.",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "Prince Lab will not be liable for any delay in performing or failure to perform any of its obligations to you caused by events beyond its reasonable control. Prince Lab will notify you promptly in writing of the reasons for the delay or stoppage (and the likely duration) and will take all reasonable steps to overcome the delay or stoppage.",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "Regarding any queries you can leave us a mail at : contactus@princelab.org",
                        style: TextStyle(
                            height: 1.3,
                            color: Colors.black,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 30, 150, 0),
                      child: Text(
                        "Thank you.",
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.3,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontFamily: "SanFranciscos"),
                      )),
                  FooterPanel()
                ]),
              ),
            )));
  }
}
