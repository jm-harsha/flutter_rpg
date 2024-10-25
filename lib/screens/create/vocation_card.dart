import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/shared/styled_text.dart';

class VocationCard extends StatelessWidget {
  const VocationCard({
    super.key, required this.vocation, required this.ontap, required this.selected
    });
final Vocation vocation;
final bool selected;
final Function(Vocation) ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap(vocation);
      },
      child: Card(
        child: Padding(padding:const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset('assets/img/vocations/${vocation.image}',
            width: 80,
            colorBlendMode: BlendMode.color,
            color: !selected? Colors.black.withOpacity(0.8): Colors.transparent
            ),
            
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Styledheading(vocation.title),
                    StyledText(vocation.description)
                   ],
            ))
          ],
        ),),
      ),
    );
  }
}