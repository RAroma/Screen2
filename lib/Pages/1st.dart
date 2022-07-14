import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPage createState() { new _FirstPage();
  return _FirstPage();
  }
}

class _FirstPage extends State<FirstPage> {
  List<Step> steps = [
    Step(title: Text("10:10 - 10:45"),
      isActive: true,
      state: StepState.complete,
      content: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 500,
          height: 100,
          color: Colors.pink[50],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('lib/images/book.jpg'),
                    width: 40,
                    height: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Chemistry", textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),),

                      Text("Teacher - Anton Leo", textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),),
                    ],

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    Step(title: Text(" 11:00 - 11:45"),
      isActive: true,
      state: StepState.complete,
      content: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 500,
          height: 100,
          color: Colors.yellow[50],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('lib/images/book.jpg'),
                    width: 40,
                    height: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Biology", textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),),

                      Text("Teacher - Banton John", textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),),
                    ],

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),

    Step(title: Text(" 12:00 - 12:45"),
      isActive: true,
      state: StepState.complete,
      content: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 500,
          height: 250,
          color: Colors.blue[50],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column( children: [
              Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('lib/images/manrun.png'),
                    width: 40,
                    height: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Physical Education", textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),),

                      Text("Teacher - Mr. Gucchian", textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),),
                    ],

                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Intensive preparation for the junior \nWorld Championship in New York", textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16),),
            ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 35,
                      child: Stack(
                        children: [

                          Positioned(
                            left: 0,
                              child: Image(image: AssetImage('lib/images/Elon-Musk.png'),
                              width: 40,
                              height: 35,
                              ),
                          ),
                          Positioned(
                            left: 20,
                            child: Image(image: AssetImage('lib/images/KFC.png'),
                              width: 40,
                              height: 35,
                            ),
                          ),Positioned(
                            left: 40,
                            child: Image(image: AssetImage('lib/images/JD.png'),
                              width: 60,
                              height: 35,
                            ),
                          ),
                        ]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(115, 20, 8, 8),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Align( alignment:Alignment.center,child:  Text("24+", style: TextStyle(fontSize: 15, color: Colors.white), textAlign: TextAlign.center ),),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],

            ),
          ),
        ),
      ),
    ),
  ];
  int currentStep  = 0;
  bool complete = false;
   next() {
     currentStep + 1 != steps.length
         ? goTo(currentStep +1)
         : setState(() => complete = true);
   }
   cancel () {
     if(currentStep > 0) {
       goTo(currentStep - 1);
     }
   }
   goTo(int step) {
     setState(() => currentStep = step
     );
   }
      @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child:
          Stepper(
            steps: steps,
            currentStep: currentStep,
            onStepContinue: next,
            onStepCancel: cancel,
            onStepTapped: (step) => goTo(step),

          ),
          ),
        ],
      ),
    );

      }
}