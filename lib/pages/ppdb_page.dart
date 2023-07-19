import 'package:flutter/material.dart';
import 'package:smart_school/config/theme.dart';

class PpdbPage extends StatelessWidget {
  const PpdbPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: kBlackColor, //change your color here
        ),
        title: Text('Profil', style: blackTextStyle),
        backgroundColor: kBackgroundColor,
        elevation: 0,
      ),
      body: const Center(
        child: Text('page'),
      ),
    );
  }
}
