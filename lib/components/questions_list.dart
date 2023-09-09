import 'package:flutter/material.dart';

import 'question_model.dart';
List<QuestionModel> questions=[
  QuestionModel("lib/images/carrots.png", {
    'Carrot':true,
    'mango':false,
    'cauliflower':false,
    'onion':false
  }),
   QuestionModel("lib/images/dog.png", {
    'cat':false,
    'dog':true,
    'duck':false,
    'Dolphin':false
  }),

  QuestionModel("lib/images/cauliflower.png", {
    'Carrot':false,
    'mango':false,
    'cauliflower':true,
    'onion':false
  }),
   QuestionModel("lib/images/butterfly.png", {
    'lion':false,
    'cow':false,
    'snake':false,
    'butterfly':true
  }),

  QuestionModel("lib/images/potato.png", {
    'Carrot':false,
    'mango':false,
    'cauliflower':false,
    'potato':true
  }),
  QuestionModel("lib/images/lion.png", {
    'Buffalo':false,
    'elephant':false,
    'goat':false,
    'lion':true
  }),

  //  QuestionModel("Choose pppp from the below?", {
  //   'lib/images/cauliflower.png':false,
  //   'lib/images/carrots.png':true,
    
  //   'lib/images/potato.png':false,
  //   'lib/images/okra.png':false
  // }),

  // QuestionModel("What is the color of sky?",{
  //   "Red":false,
  //   "yellow":false,
  //   "Blue":true,
  //   "pink":false
  // }),
  // QuestionModel("How many letters are thre in A to Z?",{
  //   "23":false,
  //   "30":false,
  //   "40":false,
  //   "26":true
  // }),
  // QuestionModel("What is the color of sky?",{
  //   "Red":false,
  //   "yellow":false,
  //   "Blue":true,
  //   "pink":false
  // })
  
];

//color maincolor=Color(0xFF252c4a);
// var _questions =[
//     {
//       'questionText': ,
//       'answer': ['Apple', 'cauli Flower', 'Carrots', 'grapes']
//     },
//     {
//       'questionText': 'lib/images/cauliflower.png',
//       'answer': ['rice', 'roti', 'burger', 'cauli flower']
//     },
//     {
//       'questionText': 'lib/images/potato.png',
//       'answer': ['potato', 'tomato', 'peas', 'vindi']
//     },
//     {
//       'questionText': 'lib/images/okra.png',
//       'answer': ['potato', 'tomato', 'vindi', 'aalu']
//     }
//   ];