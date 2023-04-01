import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Annonce_ifon extends StatelessWidget {
  final ScrollController scrollController;
  final List image;

  const Annonce_ifon(
      {super.key, required this.scrollController, required this.image});
      
      

  @override
  Widget build(BuildContext context) {
    return Container(
     
      
      child: Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
      
               height: 65,
               width: 350,
               margin: EdgeInsets.all(10),
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
               ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
              child: Image.asset("image/${image[index]}" ,  fit: BoxFit.cover,)),
            );
          },
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: image.length,
        ),
      ),
    );
  }
}
