import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hikmathub/constants/colors/colors.dart';


class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,
        title: Text("Tilni o'zagrtirish",style: GoogleFonts.akshar(
          color: AppColors.oq,fontSize: 20,
        ),),
        actions: [
          Icon(Icons.down,color: AppColors.pq),
        ]
      ),
      body: SingleChildScrollView(
        
        
      ),
    );
  }
}
