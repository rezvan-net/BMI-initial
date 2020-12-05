import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                          onTap:(){
                            print('Male Card Was Pressed');
                          },
                          child: ReusableCard(
                            colour: activeCardColour,
                            cardChild:
                            IconContent(
                                icon: FontAwesomeIcons.mars, label: 'MALE'),
                          ),
                        ),
                      ),

                    Expanded(
                      child:ReusableCard(
                          colour: activeCardColour,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.venus,
                            label: 'FEMALE',
                          ),
                        ),
                      ),
                  ],
                )),
            Expanded(
              child: ReusableCard(
                colour: activeCardColour,
              ),
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(colour: activeCardColour),
                    ),
                    Expanded(
                      child: ReusableCard(colour: activeCardColour),
                    ),
                  ],
                )),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ),
      );
    }
  }
