import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '                 ALVAS',
            style: GoogleFonts.poppins(fontSize: 21),
          ),
        ),
        drawer: customDrawer(context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 5,
                bottom: 10,
              ),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/profile'),
                child: Card(
                  color: AppColors.white,
                  elevation: 5,
                  surfaceTintColor: AppColors.transperent,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/download.jpg'),
                      radius: 30,
                    ),
                    title: Text(
                      'KARTHIK.S',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: GoogleFonts.varelaRound(
                        color: AppColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '4AL22EC032',
                      style: GoogleFonts.varelaRound(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 30,
                      color: AppColors.orange,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Events',
                style: GoogleFonts.varelaRound(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Divider(color: AppColors.lightGrey),
                      ListTile(
                        title: Text(
                          'Event name',
                          style: GoogleFonts.workSans(color: AppColors.black),
                        ),
                        // subtitle: Text(
                        //   'Hello World',
                        //   style: GoogleFonts.workSans(
                        //     color: AppColors.lightGrey,
                        //   ),
                        // ),
                        leading: Icon(
                          Icons.notifications_on_rounded,
                          color: AppColors.orange,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppColors.orange,
                        ),
                      ),
                    ],
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: AppColors.orange),
            child: Center(child: Image.asset('assets/alvas_logo.png')),
          ),
          ListTile(
            leading: const Icon(Icons.school, color: AppColors.black),
            title: Text(
              'Acadamics',
              style: GoogleFonts.workSans(color: AppColors.black),
            ),
            trailing: Icon(Icons.play_arrow_rounded, color: AppColors.orange),
            onTap: () => Navigator.pushNamed(context, "/academics"),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.pedal_bike_outlined,
              color: AppColors.black,
            ),
            title: Text(
              'Clubs',
              style: GoogleFonts.workSans(color: AppColors.black),
            ),
            trailing: Icon(Icons.play_arrow_rounded, color: AppColors.orange),
            onTap: () => Navigator.pushNamed(context, '/clubs'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.menu_book_rounded,
              color: AppColors.black,
            ),
            title: Text(
              'Library',
              style: GoogleFonts.workSans(color: AppColors.black),
            ),
            trailing: Icon(Icons.play_arrow_rounded, color: AppColors.orange),
            onTap: () => Navigator.pushNamed(context, '/library'),
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.business_outlined, color: AppColors.black),
            title: Text(
              'Hostel',
              style: GoogleFonts.workSans(color: AppColors.black),
            ),
            trailing: Icon(Icons.play_arrow_rounded, color: AppColors.orange),
            onTap: () => Navigator.pushNamed(context, "/hostel"),
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: AppColors.black),
            title: Text(
              'Sign Out',
              style: GoogleFonts.workSans(color: AppColors.black),
            ),
            trailing: Icon(Icons.play_arrow_rounded, color: AppColors.orange),
            onTap: () => Navigator.pushNamed(context, "/login"),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
