import 'package:flutter/material.dart';
import 'package:smart_school/widgets/custom_menu.dart';

import '../config/theme.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[50],
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30.0,
            ),
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}

Widget header() {
  return Padding(
    padding: EdgeInsets.all(defaultMargin),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: kWhiteColor,
                    child: const CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage(
                        'assets/images/avatar.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hallo,",
                      style: greyTextStyle.copyWith(
                        fontSize: fontSizeMedium,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Idlal Maulana Wahid",
                          style: blackTextStyle.copyWith(
                            fontSize: fontSizeMedium,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon/hallo.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(12),
              child: Icon(
                Icons.notifications,
                color: kWhiteColor,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Selamat Datang di SMA Kota Baru",
          style: blackTextStyle.copyWith(
            fontSize: fontSizeBig,
            fontWeight: bold,
          ),
        ),
      ],
    ),
  );
}

Widget body() {
  return Expanded(
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45),
        ),
      ),
      child: ListView(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                height: 165,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/banner-profile.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 90,
                  height: 33,
                  margin: const EdgeInsets.only(
                    top: 100,
                    right: 170,
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orange[600]!,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Cek Profil',
                      style: whiteTextStyle.copyWith(
                        fontSize: fontSizeStandard,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomMenu(
                  icon: Icon(
                    Icons.supervisor_account,
                    color: Colors.yellow[600]!,
                    size: 30.0,
                  ),
                  title: 'Siswa',
                  color: Colors.yellow[100]!,
                  onPressed: () {},
                ),
                CustomMenu(
                  icon: Icon(
                    Icons.pending_actions_sharp,
                    color: Colors.blue[600]!,
                    size: 30.0,
                  ),
                  title: 'Presensi',
                  color: Colors.blue[100]!,
                  onPressed: () {},
                ),
                CustomMenu(
                  icon: Icon(
                    Icons.edit_note_rounded,
                    color: Colors.red[600]!,
                    size: 30.0,
                  ),
                  title: 'Tugas',
                  color: Colors.red[100]!,
                  onPressed: () {},
                ),
                CustomMenu(
                  icon: Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.green[600]!,
                    size: 30.0,
                  ),
                  title: 'Jadwal Pelajaran',
                  color: Colors.green[100]!,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomMenu(
                  icon: Icon(
                    Icons.edit_document,
                    color: Colors.orange[600]!,
                    size: 30.0,
                  ),
                  title: 'CBT',
                  color: Colors.orange[100]!,
                  onPressed: () {},
                ),
                CustomMenu(
                  icon: Icon(
                    Icons.menu_book_rounded,
                    color: Colors.purple[600]!,
                    size: 30.0,
                  ),
                  title: 'E-Book',
                  color: Colors.purple[100]!,
                  onPressed: () {},
                ),
                CustomMenu(
                  icon: Icon(
                    Icons.book,
                    color: Colors.teal[600]!,
                    size: 30.0,
                  ),
                  title: 'Materi Pelajaran',
                  color: Colors.teal[100]!,
                  onPressed: () {},
                ),
                CustomMenu(
                  icon: Icon(
                    Icons.apps_outlined,
                    color: Colors.amber[600]!,
                    size: 30.0,
                  ),
                  title: 'Semua Menu',
                  color: Colors.amber[100]!,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                sliderBanner('assets/images/banner-1.png'),
                sliderBanner('assets/images/banner-4.png'),
                sliderBanner('assets/images/banner-2.png'),
                sliderBanner('assets/images/banner-3.png'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    ),
  );
}

sliderBanner(String image) {
  return Container(
    margin: const EdgeInsets.all(15),
    width: 360,
    height: 200,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.blue[100]!,
          offset: const Offset(
            2.0,
            2.0,
          ),
          blurRadius: 2.0,
          spreadRadius: 1.0,
        ),
        BoxShadow(
          color: Colors.blue[600]!,
          offset: const Offset(0.0, 0.0),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ), //BoxShadow
      ],
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(
          image,
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}
