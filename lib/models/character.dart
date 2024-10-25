import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats{

  Character({required this.name, required this.id, required this.slogan,  required this.vocation});
  final  Vocation vocation;
  final Set<Skill> skills ={};
  final String slogan;
  final String name;
  final String id;
  bool _isFav=false;

 bool get isFav=>_isFav;

  void toggleIsFav(){
_isFav=!_isFav;
  }
}

//dummy data
List<Character> characters = [
  Character(id: '1', name: 'Klara', vocation: Vocation.wizard, slogan: 'Kapumf!'),
  Character(id: '2', name: 'Jonny', vocation: Vocation.junkie, slogan: 'Light me up...'),
  Character(id: '3', name: 'Crimson', vocation: Vocation.raider, slogan: 'Fire in the hole!'),
  Character(id: '4', name: 'Shaun', vocation: Vocation.ninja, slogan: 'Alright then gang.'),
];