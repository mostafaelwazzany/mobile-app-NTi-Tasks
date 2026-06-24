import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notification1Enabled = true;
  bool notification2Enabled = true;
  bool notification3Enabled = true;
  Color backgroundColorSet =  Color(0xFFF7F6F2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorSet,
      appBar: AppBar(
        backgroundColor: backgroundColorSet,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black12),
            ),
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.black87),
              onPressed: () {},
            ),
          ),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: const Color(0xFF335C49),
              child: const Text('RB', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFF2C4D3E),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=200',
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 4,
                        child: Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFF2C4D3E),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    // mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      const Text(
                        'Rebecca Barbara',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Serif',
                        ),
                      ),

                      const SizedBox(height: 4),

                      Text(
                        'rebecca@smarthome.io',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 14,
                        ),
                      ),
                    ],
                    
                  ),
                  
                ],
                
              ),
              
            ),
            
            settingListView(),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFF7F6F2),
        selectedItemColor: const Color(0xFF2C4D3E),
        unselectedItemColor: Colors.black38,
        currentIndex: 3,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }

  ///////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////
  Widget _buildSectionTitle(String title) {
    return Padding(padding: const EdgeInsets.only(left: 4.0, bottom: 8.0));
  }

  Widget settingListView() {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _buildSectionTitle('ACCOUNT'),
        _buildSectionContainer([
          _buildListTile(
            icon: Icons.person_outline,
            title: 'Edit Profile',
            subtitle: 'Rebecca Barbara',
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.black26,
            ),
          ),
          _buildDivider(),
          _buildListTile(
            icon: Icons.visibility_outlined,
            title: 'Privacy',
            subtitle: 'Manage your data',
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.black26,
            ),
          ),
          _buildDivider(),
          _buildListTile(
            icon: Icons.shield_outlined,
            title: 'Security',
            subtitle: 'Password · 2FA enabled',
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.black26,
            ),
          ),
        ]),
        const SizedBox(height: 24),

        _buildSectionTitle('PREFERENCES'),
        _buildSectionContainer([
          _buildListTile(
            icon: Icons.notifications_none_outlined,
            title: 'Notifications',
            subtitle: 'Alerts & reminders',
            trailing: Switch(
              value: notification1Enabled,
              onChanged: (val) {
                setState(() {
                  notification1Enabled = val;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: const Color(0xFF2C4D3E),
            ),
          ),
          _buildDivider(),
          _buildListTile(
            icon: Icons.dark_mode_outlined,
            title: 'Dark Mode',
            subtitle: 'Switch appearance',
            trailing: Switch(
              value: notification2Enabled,
              onChanged: (val) {
                setState(() {
                  notification2Enabled = val;
                  backgroundColorSet = val ? const Color.fromARGB(255, 37, 39, 38) : const Color(0xFFF7F6F2);
                });
              },
              activeTrackColor: const Color(0xFF2C4D3E),
            ),
          ),
          _buildDivider(),
          _buildListTile(
            icon: Icons.volume_up_outlined,
            title: 'Sound Effects',
            subtitle: 'In-app sounds',
            trailing: Switch(
              value: notification3Enabled,
              onChanged: (val) {
                setState(() {
                  notification3Enabled = val;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: const Color(0xFF2C4D3E),
            ),
          ),
        ]),
      ],
    );
  }

  Widget _buildSectionContainer(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(children: children),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required Widget trailing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFF2F1EC),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: const Color(0xFF2C4D3E)),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.black38, fontSize: 13),
                ),
              ],
            ),
          ),
          trailing,
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      height: 1,
      thickness: 1,
      color: Color(0xFFF2F1EC),
      indent: 16,
      endIndent: 16,
    );
  }
}
