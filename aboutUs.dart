import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pspcl/home_screen.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(17, 94, 163, 1)),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => HomeScreen()),
                  (Route<dynamic> route) => false,
            );
          },
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/layout.svg',
              color: const Color.fromRGBO(17, 94, 163, 1),
              width: 30,
              height: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        // padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 130,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bottom.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Punjab State Electricity Board (PSEB)',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'PSEB was a statutory body formed on 1-2-1959 under the Electricity Supply Act 1948. '
                        'Subsequently, with the re-organization of the erstwhile State of Punjab under the Punjab '
                        'Re-organization Act 1966, this form came into existence w.e.f. 1st May, 1967.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Vide Notification No 1/9/08-EB(PR)196, dated-16.04.2010,',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Govt. of Punjab unbundled Punjab State Electricity Board into two companies\n '
                        '- Punjab State Power Corporation Ltd. (POWERCOM)\n'
                        '- Punjab State Transmission Corporation Ltd. (TRANSCO)',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),

                // Add the new text and image above the Milestone Achievements
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Organisational setup of Punjab State Power Corporation Ltd. (PSPCL).',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Image.asset(
                    'assets/images/screenshot.png', // Replace with your image path
                   // fit: BoxFit.cover,
                    height: 200, // Adjust as necessary
                  ),
                ),
               // const SizedBox(height: 10),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Milestone Achievements:',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                _buildMilestoneItem('1. All the power Stations operated at their best ever plant load factor since their installation.'),
                _buildMilestoneItem('2. Net Power generated during 2008-09 is 37222 Million units, which is more than 2006-07 by 2238 Million Units resulting of 6.40% increase in two years.'),
                _buildMilestoneItem('3. The 1980 MW (3×660) Talwandi Sabo Power Project awarded to M/s Sterlite Energy Ltd. Mumbai on 4.7.08 and PPA signed on 1.9.08.'),
                _buildMilestoneItem('4. Power purchase agreement with M/S GVK for installing 2×270 MW thermal power station at Goindwal Sahib signed on 26th May, 2009.The foundation stone has been laid and the company has started the construction.'),
                _buildMilestoneItem('5. Second stage of Lehra Mohabbat Thermal Power Station for 2×250 MW has been commissioned. Its Unit-III achieved CoD on 16.10.08 and Unit-IV synchronized on 2.8.08 on coal.'),
                _buildMilestoneItem('6. 4.76 lakh new connections including 61849 No. tubewell connections were released during 2007-09.'),
                _buildMilestoneItem('7. 24 Hrs. Urban pattern supply made available to 12428 villages and 6158 Deras/ Dhanies with 5 or more houses.'),
                _buildMilestoneItem('8. To help SC & BPL consumers, free monthly consumption up to 200 units allowed for connected load of 1000 watts w.e.f. 12-10-06 instead of earlier 500 watts.'),
                _buildMilestoneItem('9. Strict measures have been taken to reduce power theft. Disciplinary action taken against the erring employees and 5 numbers Anti Power Theft Police Stations have been set up.'),
                _buildMilestoneItem('10. New technologies like electronic meters, remote control of transformers, remote meter reading and HVDS system for AP/ Industries introduced.'),
                _buildMilestoneItem('11. 20.29 lakh meters out of 55.98 lakh General/ Industrial Consumers shifted out of their premises as on 31.3.09 to curb theft of energy.'),
                _buildMilestoneItem('12. All these measures have helped in reducing losses by 4% from 23.92% (2006-07) to 19.91% (2008-09) / which resulted in substantial increase in revenue.'),
                _buildMilestoneItem('13. During 2007-09, 62 numbers New Grid substations erected and capacity at 132 number Grid substations augmented besides addition of 1070 circuit Kms. Transmission line and 149 MVAR shunt capacitors to State Grid.'),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Quick Links',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                _buildLink('National Portal'),
                _buildLink('Government of Punjab'),
                _buildLink('SLDC'),
                _buildLink('CERC'),
                _buildLink('PSERC'),
                _buildLink('Open Access'),
                _buildLink('Important Links'),
                _buildLink('Dispute Cases'),
                _buildLink('Digilocker'),
                _buildLink('Vigilance Bureau'),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Visitor\'s Count: 374,643',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    '© 2024 Punjab State Power Corporation Limited, PSEB Head Office, The MALL, Patiala',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Last Updated: 30-07-2024',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 22),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMilestoneItem(String milestone) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        milestone,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildLink(String linkName) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        linkName,
        style: const TextStyle(fontSize: 16, color: Colors.blue, decoration: TextDecoration.underline),
      ),
    );
  }
}

