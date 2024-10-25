mixin Stats {
  int _points=20;
  int _health=10;
  int _skill=10;
  int _attack=25;
  int _defense=10;

  int get points=>_points;

  Map<String,int> get mappedstats=>{
    'health':_health,
    'skill':_skill,
    'attack':_attack,
    'defense':_defense
     };

     List<Map<String,String>> get listedstats=>[
      {'title':'health', 'value':_health.toString()},
      {'title':'skill', 'value':_skill.toString()},
{'title':'attack', 'value':_attack.toString()},
{'title':'defense', 'value':_defense.toString()},
 ];

void increaseStats(String stat){
  if (_points>0){
    if( stat=='health'){
      _health++;
       }
       if(stat=='attack'){
        _attack++;
       }
       if(stat=='defense'){
        _defense++;
       }
       if(stat=='skill'){
        _skill++;
       }
       _points--;
  }
}
void decreaseStats(String stat){
  if(stat=='health' && _health>5){
    _health--;
    _points++;
  }
  if(stat=='attack' && _attack>5){
    _attack--;
    _points++;
  }
  if(stat=='defense' && _defense>5){
    _defense--;
    _points++;
  }
  if(stat=='skill' && _skill>5){
    _skill--;
    _points++;
  }
}
}