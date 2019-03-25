import 'package:flutter/material.dart';

class StepMakeBurguer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StepMakeState();
  }
}

class StepMakeState extends State<StepMakeBurguer> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
        physics: ClampingScrollPhysics(),
        currentStep: _currentStep,
        onStepTapped: (int value) {
          setState(() {
            _currentStep = value;
          });
        },
        onStepContinue: () {
          setState(() {
            _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
          });
        },
        onStepCancel: () {
          setState(() {
            _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
          });
        },
        steps: [
          Step(
            title: Text('Step 1'),
            content: Text(
                'Preheat an outdoor grill for high heat and lightly oil grate'),
            isActive: true,
          ),
          Step(
            title: Text('Step 2'),
            content: Text(
                'In a medium bowl, whisk together egg, salt and pepper. '
                    'Place ground beef and bread crumbs into the mixture. '
                    'With hands or a fork, mix until well blended. '
                    'Form into 4 patties approximately 3/4 inch thick. '),
            isActive: false,
          ),
          Step(
            title: Text('Step 3'),
            content:
            Text('Place patties on the prepared grill. '
                'Cover and cook 6 to 8 minutes per side, '
                'or to desired doneness. '),
            isActive: false,
          ),
        ]);
  }
}
