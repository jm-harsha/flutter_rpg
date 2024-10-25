import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/profile/skill_list.dart';
import 'package:flutter_rpg/profile/stats_table.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';

class Profile extends StatelessWidget {
  const Profile({required this.character, super.key});

final Character character;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: StyledTitle(
          character.name
        )
      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Container(
              padding: const EdgeInsets.all(16),
color: Appcolors.secondaryColor.withOpacity(0.3),
child: Row(
  children: [
    Image.asset('assets/img/vocations/${character.vocation.image}',
    width: 140,
    height: 140,),
    const SizedBox(width: 20,),
   Expanded(child:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Styledheading(character.vocation.title),
        StyledText(character.vocation.description)
      ],
    ),
    )
  ],
),
  ),

 const SizedBox(height: 20),
            Center(child: Icon(Icons.code, color: Appcolors.primaryColor)),
            
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: Appcolors.secondaryColor.withOpacity(0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Styledheading('Slogan'),
                    StyledText(character.slogan),
                    const SizedBox(height: 10),
                    const Styledheading('Weapon of Choice'),
                    StyledText(character.vocation.weapon),
                    const SizedBox(height: 10),
                    const Styledheading('Unique Ability'),
                    StyledText(character.vocation.ability),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),

            // stats & skills

  Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  StatsTable(character),
                   SkillList(character),
                ]
              ),
            ),

            // save button

          ],
        ),
      ),
    );
  }
}
