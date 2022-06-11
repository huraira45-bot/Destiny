import 'package:destiny/stroy.dart';

class app_brain{
int _story_number=0;
  final List<Story> _storyData = [
 Story(
     'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
    'I\'ll hop in. Thanks for the help!',
    'Better ask him if he\'s a murderer first.'),
 Story(
      'He nods slowly, unphased by the question.',
      'At least he\'s honest. I\'ll climb in.',
     'Wait, I know how to change a tire.'),
 Story(

     'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      'I love Elton John! Hand him the cassette tape.',
    'It\'s him or me! You take the knife and stab him.'),
 Story(

     'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
     'Restart',
    ''),
 Story(

     'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
     'Restart',
      ''),
 Story(
     'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      'Restart',
     '')
];
String get_story_title()
{
 return _storyData[_story_number].storyTitle;
}
String get_choice1()
{
 return _storyData[_story_number].choice1;
}
String get_choice2()
{
 return _storyData[_story_number].choice2;
}
// change it to bool and restart the game
bool choice1_click()
{
 if(_story_number==0)
  {
   _story_number=2;
  }
 else if(_story_number==2)
  {
   _story_number=5;
  }
 else if(_story_number==1)
  {
   _story_number=2;
  }
 else{
  return true;
 }
 return false;
}
bool choice2_click()
{
 if(_story_number==0)
  {
   _story_number=1;
  }
 else if(_story_number==2)
  {
   _story_number=4;
  }
 else if(_story_number==1)
  {
   _story_number=3;
  }
 else
  {
   return true;
  }
 return false;
}

  void restart() {
 _story_number=0;
  }

bool  check_visblity() {
 if(get_choice2()=='')
  {
   return false;
  }
 return true;

  }


}