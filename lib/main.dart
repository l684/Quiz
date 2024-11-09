import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),

  ));
}
int score = 0;
const  questions = ['What is an IDE that is used to develop mobile apps?', 'What programming language does flutter use?', 'The root element of AndroidManifest.xml is:', 'Who made flutter?', 'What is the directory name where the XML layout files are stored?', "The basic building element of Android's users interface is called", 'What is the use of the AndroidManifest.xml file?', 'What is the method used to access a view element of a layout resource in an activity?', 'What is an activity in Android?', 'Which programming language is used to make android apps?'];
const answers = ['NetBeans', 'Visual Studio', 'Android Studio', 'Eclipse', 'java', 'dart', 'C++', 'swift', 'application', 'manifest', 'activity', 'action', 'Facebook', 'Apple', 'Microsoft', 'Google', '/assets', '/src', '/res/values', '/res/layout', 'View', 'ContentProvider', 'ViewGroup', 'Layout', 'It describes the components of the application', 'It declares the minimum level of the Android API that the application requires', 'All', 'It facilitates to provide a unique name for the application by specifying package name', 'OnCreate()', 'findViewById()', 'setContentView()', 'None of the above', 'Screen UI', 'Manage the application content', 'Activity performs the actions on the screen', 'A method', 'Java', 'Perl', 'PHP', 'Python'];
const correct = ['Android Studio', 'dart', 'manifest', 'Google', '/res/layout', 'View', "All", 'findViewById()', 'Activity performs the actions on the screen', 'Java'];
var count = 0;

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Quiz()));
                  },
                  child: const Text('Start'),
                ),
              ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: const Text('Exit'),
              )
    ],
    )
    );
  }
}

class Quiz extends StatelessWidget {
  const Quiz( {Key? key}) : super(key : key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Question(questions[0]),

          const Answer(0, 0),
          const Answer(1, 0),
          const Answer(2, 0),
          const Answer(3, 0),

          Question(questions[1]),

          const Answer(4, 1),
          const Answer(5, 1),
          const Answer(6, 1),
          const Answer(7, 1),

          Question(questions[2]),

          const Answer(8, 2),
          const Answer(9, 2),
          const Answer(10, 2),
          const Answer(11, 2),

          Question(questions[3]),

          const Answer(12, 3),
          const Answer(13, 3),
          const Answer(14, 3),
          const Answer(15, 3),

          Question(questions[4]),

          const Answer(16, 4),
          const Answer(17, 4),
          const Answer(18, 4),
          const Answer(19, 4),

          Question(questions[5]),

          const Answer(20, 5),
          const Answer(21, 5),
          const Answer(22, 5),
          const Answer(23, 5),

          Question(questions[6]),

          const Answer(24, 6),
          const Answer(25, 6),
          const Answer(26, 6),
          const Answer(27, 6),

          Question(questions[7]),

          const Answer(28, 7),
          const Answer(29, 7),
          const Answer(30, 7),
          const Answer(31, 7),

          Question(questions[8]),

          const Answer(32, 8),
          const Answer(33, 8),
          const Answer(34, 8),
          const Answer(35, 8),

          Question(questions[9]),

          const Answer(36, 9),
          const Answer(37, 9),
          const Answer(38, 9),
          const Answer(39, 9)

        ],
      ),
    );
  }
  }

class Result extends StatelessWidget {
  const Result({Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Score'),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text('Your score is: ' + score.toString()),
              ),
              TextButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: const Text('Exit')
              )
            ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

class Question extends StatelessWidget {
  final String question;
  const Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Text(question);

    // TODO: implement build
    throw UnimplementedError();
  }
}

class Answer extends StatelessWidget {
  final int  num;
  final int correctCount;
  const Answer(this.num, this.correctCount);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          count++;
          if (answers[num] == correct[correctCount]) {
            score++;
          }
          if (count == 10){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Result()));
// switch to result screen
          }
        },
        child: Text(answers[num])
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
