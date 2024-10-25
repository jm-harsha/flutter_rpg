import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rpg/models/CustomCard.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_card.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';
var uuid=const Uuid();



class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _namecontroller=TextEditingController();
  final _slogancontroller=TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    _namecontroller.dispose();
    _slogancontroller.dispose();
    super.dispose();
  }
  void handleSubmit(){
    if(_namecontroller.text.trim().isEmpty){
      //error message
      showDialog(context: context, builder: (ctx){
return  AlertDialog(
  title: const Styledheading('Character name misssing'),
  content: const StyledText('A great character always had a name '),
            actions: [
              StyledButton(onPressed:(){ 
                Navigator.pop(ctx);},
               child: const Styledheading('Close'))
            ],  );
      });
      return;
    }
    if(_slogancontroller.text.trim().isEmpty){
      //eroor messgae

      showDialog(context: context, builder:(ctx){
           return AlertDialog(
            title: const StyledTitle('Character Slogan Missing'),
            content: const StyledText('Remember to add a catchy slogan'),
         actions: [
          StyledButton(onPressed: (){
            Navigator.pop(ctx);}, 
          child:const StyledTitle('Close'))
         ],
           );
      });
      return;
    }
    characters.add(Character(
      name:_namecontroller.text,
      id:uuid.v4(),
      slogan:_slogancontroller.text,
      vocation:selectedvocation
    ));

      Navigator.push(context, MaterialPageRoute(
      builder: (ctx) => const Home(),
    ));

  }


  //handling voacation selection and setting the default value
  Vocation selectedvocation=Vocation.junkie;

  void updatevocation(Vocation vocation){
    setState(() {
      selectedvocation=vocation;
  });
  }

//adding new charcater to list 

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
title: const StyledTitle('Character Creation'),
),

body: Container(
  padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
  child:  SingleChildScrollView(
    child: Column(
      children: [
        Center(
          child: Icon(Icons.code,color: Appcolors.primaryColor,),
        ),
        const Center(
          child:Styledheading('Welcome new player. ')
        ),
      const  Center(
          child: StyledText('Create a name and slogan for ur character.'),
        ),
        const SizedBox(height: 30,),
    
         TextField(
          controller: _namecontroller,
          decoration: const InputDecoration(
          prefixIcon:Icon(Icons.person_2),
          label: StyledText('Chaaracter name'),
              ),
        cursorColor: Appcolors.textColor,
        style: GoogleFonts.kanit(
        textStyle: Theme.of(context).textTheme.bodyMedium,
      ),),
      const SizedBox(height: 20,),
      TextField(
        controller: _slogancontroller,
        cursorColor: Appcolors.textColor,
        decoration:const  InputDecoration(
          prefixIcon: Icon(Icons.chat),
          label: StyledText("Character slogan")
        ),
        style: GoogleFonts.kanit(
        textStyle: Theme.of(context).textTheme.bodyMedium,
      ),
      ),
     const  SizedBox(height: 30,),
     Center(
      child: Icon(Icons.code, color: Appcolors.primaryColor,),
      ),
    
      const Center(
        child: Styledheading('Choose a vocation'),
      ),
    
      const Center(
        child: StyledText('This determines your available skills'),
      ),
      const SizedBox( height: 30,),
    
      VocationCard(
      vocation: Vocation.junkie,
      ontap:updatevocation,
      selected: selectedvocation==Vocation.junkie,
      ),
     VocationCard(
      vocation: Vocation.ninja,
       ontap:updatevocation,
        selected: selectedvocation==Vocation.ninja,
       ),
      VocationCard(
      vocation: Vocation.wizard,
       ontap:updatevocation,
        selected: selectedvocation==Vocation.wizard,
       ),
      VocationCard(
      vocation: Vocation.raider,
       ontap:updatevocation,
        selected: selectedvocation==Vocation.raider,
       ),


        Center(
          child: Icon(Icons.code,color: Appcolors.primaryColor,),
        ),
        const Center(
          child:Styledheading('All the best ')
        ),
      const  Center(
          child: StyledText('And enjoy the journey...'),
        ),
        const SizedBox(height: 30,),

     Center(
      child: StyledButton(
        onPressed: handleSubmit,
         child:const  Styledheading('Create Character')),
     )
    
      ],
    ),
  ),
),
    );
  }
}
