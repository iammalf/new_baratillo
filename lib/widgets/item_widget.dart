import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_baratillo/pages/item_page.dart';

import '../constants.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 7; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        // color: Colors.purple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "-50%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    //TODO ICONO DE FAVORIVO BLOQUEADO
                    /* const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ), */
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ItemPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/$i.png"),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Zapatos para hombres 100% cuero nacional modelos exclusivos",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                    ),
                  ),
                ),
                // const Text(
                //   "Descripción del los Productos lorem ipsum",
                //   style: TextStyle(
                //     fontSize: 12,
                //     color: Colors.black,
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "S/.55",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),

                      //TODO ICONO DE AGREGAR A CARRITO BLOQUEADO
                      /* Icon(
                        Icons.shopping_cart_checkout,
                        //color: Color(0xffF5591F),
                        color: Color(0xff9500ae),
                        // color: Colors.purple,
                      ), */

                      const Icon(
                        Icons.favorite_border,
                        color: kPrimaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
