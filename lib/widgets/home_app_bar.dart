import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_baratillo/pages/cart_page.dart';

import '../constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: kPrimaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Baratillo Cusco",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: titleColor,
                ),
              ),
            ),
          ),
          const Spacer(),
          Badge(
            badgeColor: kPrimaryColor,
            padding: const EdgeInsets.all(7),
            badgeContent: const Text(
              "3",
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              //TODO REVISAR ESTA SECCION
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CartPage();
                    },
                  ),
                );
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
