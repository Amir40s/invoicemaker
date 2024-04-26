import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/color_class.dart';

class CustomListTile{
  Widget customListTile({required var leadingIcon,required String title,}){
    return Column(
      children: [
        ListTile(
          onTap: (){},
          leading: Icon(leadingIcon,color: fieldTextColor,size: 27.0,),
          title: Text(title,style: GoogleFonts.poppins(color: fieldTextColor,fontSize: 14.0,fontWeight: FontWeight.w600),),
          trailing: Icon(Icons.arrow_forward_ios_outlined,color: fieldTextColor,size: 20.0,),
        ),
        SizedBox(
            height: 1.0,
            child: Divider(thickness: 1.0,color: fieldTextColor,)),
      ],
    );
  }
}