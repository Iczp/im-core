import 'package:flutter/material.dart';

abstract class Entity {
  ///
  final GlobalKey _globalKey = GlobalKey();

  ///
  GlobalKey get globalKey => _globalKey;

  // void setGlobalKey(GlobalKey key) {
  //   _globalKey = key;
  // }

  mapToEntity(Map<String, dynamic> json);
  // {
  //   throw UnimplementedError('Unimplemented method ToEntity');
  // }
}
