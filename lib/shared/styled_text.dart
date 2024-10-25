import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text,{super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style:GoogleFonts.kanit(
      textStyle: Theme.of(context).textTheme.bodyMedium,
    ));
  }
}

class StyledTitle extends StatelessWidget {
  const StyledTitle(this.text,{super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase(),style:GoogleFonts.kanit(
textStyle: Theme.of(context).textTheme.titleMedium,));
  }
}

class Styledheading extends StatelessWidget {
  const Styledheading(this.text,{super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase(),style:GoogleFonts.kanit(textStyle:  Theme.of(context).textTheme.headlineMedium,));
  }
}

class StyledappbarTitle extends StatelessWidget {
  const StyledappbarTitle(this.text,{super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase(),style:GoogleFonts.kanit(
textStyle: Theme.of(context).textTheme.titleSmall,));
  }
}