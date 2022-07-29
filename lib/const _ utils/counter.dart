import 'dart:developer';

import 'package:flutter/material.dart';

class CounterNotifier extends ValueNotifier<int> {
   CounterNotifier() : super(0); 
}

class NotifierValue {

  static CounterNotifier counter = CounterNotifier();

}