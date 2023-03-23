import 'dart:convert';

import 'package:flutter/material.dart';

abstract class Entity {
  ///
  final GlobalKey _globalKey = GlobalKey();

  ///
  GlobalKey get globalKey => _globalKey;

  ///Layer TransformEngineLayer was previously used as oldLayer
  final LayerLink _layerLink = LayerLink();

  ///Layer TransformEngineLayer was previously used as oldLayer
  LayerLink get layerLink => _layerLink;

  mapToEntity(Map<String, dynamic> json) {
    throw UnimplementedError('Unimplemented method "mapToEntity"');
  }

  Map<String, dynamic> toJson();

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
