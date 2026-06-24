import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  // final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      key: scaffoldKey,
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF5F5F0),
      body: SafeArea(
        
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                    ),
                  ),
                  const Text(
                    "My Home",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: Color(0xFF4A665C),
                    child: Text("RB", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                "Wednesday, June 20",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const SizedBox(height: 8),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(text: "Good evening, "),
                    TextSpan(
                      text: "Rebecca",
                      style: TextStyle(color: Color(0xFF4A665C)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "You have 3 rooms active and 12 devices running right now.",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),



              const SizedBox(height: 15),



              // Form(
              //   key: formKey,
              //   child: Column(
              //     children: [
              //       SizedBox(
              //         width: double.infinity,
              //         child: TextFormField(
              //           autovalidateMode: AutovalidateMode.onUserInteraction,
              //           decoration: InputDecoration(
              //             labelText: 'Search',
              //             prefixIcon: Icon(Icons.search),
              //             border: OutlineInputBorder(),
              //           ),
              //           keyboardType: TextInputType.text,
              //           validator: (value) {
              //             if (value == null || value.isEmpty) return 'Required';
              //             return null;
              //           },
              //         ),
              //       ),
              //       const SizedBox(height: 12),
              //       SizedBox(
              //         width: double.infinity,
              //         child: TextFormField(
              //           autovalidateMode: AutovalidateMode.onUserInteraction,
              //           decoration: InputDecoration(
              //             labelText: 'Email',
              //             prefixIcon: Icon(Icons.email),
              //             border: OutlineInputBorder(),
              //           ),
              //           keyboardType: TextInputType.emailAddress,
              //           validator: (value) {
              //             if (value == null || value.isEmpty) return 'Required';
              //             if (!value.contains('@')) return 'Invalid email';
              //             return null;
              //           },
              //         ),
              //       ),


              //     ],
              //   ),
              // ),



              const SizedBox(height: 24),
              SizedBox(
                height: 92,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) => Container(
                    width: 96,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    alignment: Alignment.center,
                    child: Text("Card $index", textAlign: TextAlign.center),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(width: 12),
                ),
                // Row(
                //   children: [

                //     _buildStatusCard(
                //       Icons.thermostat_outlined,
                //       "22°C",
                //       "Inside",
                //     ),
                //     _buildStatusCard(
                //       Icons.wb_sunny_outlined,
                //       "18°C",
                //       "Outside",
                //     ),
                //     _buildStatusCard(
                //       Icons.water_drop_outlined,
                //       "58%",
                //       "Humidity",
                //     ),
                //     _buildStatusCard(Icons.air_outlined, "12", "Air Quality"),
                //     _buildStatusCard(Icons.lightbulb_outline, "8", "Lights"),
                //   ],
                // ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const Text(
                    "Rooms",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              _buildRoomCard(
                "Living Room",
                "4 devices",
                "22°C",
                "assets/images/living_room.jpg",
              ),
              const SizedBox(height: 10),
              _buildRoomCard(
                "Bedroom",
                "3 devices",
                "20°C",
                "assets/images/bedroom.jpg",
              ),
              const SizedBox(height: 10),
              _buildRoomCard(
                "Kitchen",
                "5 devices",
                "24°C",
                "assets/images/kitchen.jpg",
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const Text(
                    "Devices",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2D4F43),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.add, size: 18, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF2D4F43),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: ""),
        ],
      ),
    );
  }



  Widget _buildStatusCard(IconData icon, String value, String label) {
    return Container(
      width: 96,
      height: 92,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 18, color: const Color(0xFF4A665C)),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 11, color: Colors.grey)),
        ],
      ),
    );
  }



  Widget _buildRoomCard(String title, String subtitle, String temp, String path) {
    return Container(
      height: 82,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              path,
              width: 54,
              height: 54,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "$subtitle · $temp",
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
    );
  }




}
