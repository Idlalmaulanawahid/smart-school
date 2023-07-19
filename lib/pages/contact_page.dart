import 'package:flutter/material.dart';
import 'package:smart_school/config/theme.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

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
        title: Text('Kontak', style: blackTextStyle),
        backgroundColor: kBackgroundColor,
        elevation: 0,
      ),
      body: const Center(
        child: Text('page'),
      ),
    );
  }
}
