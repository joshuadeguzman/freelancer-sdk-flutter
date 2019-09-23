// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:freelancer_sdk/models/fl_project.dart';

void main() async {
  final testResourceFile = File('test_resources/fl_project_data.json');
  final json = jsonDecode(await testResourceFile.readAsString());
  final project = FLProject.fromJson(json);
  
  group('projects', () {
    test('evaluate general project data', () async {
      expect(project.hidebids, false);
      expect(project.bidperiod, 7);
      expect(project.bidperiod, 7);
      expect(project.featured, true);
    });

    test('evaluate project currency data', () async {
      expect(project.currency.code, "USD");
      expect(project.currency.name, "US Dollar");
      expect(project.currency.country, "US");
      expect(project.currency.sign, "\$");
      expect(project.currency.isEscrowcomSupported, true);
      expect(project.currency.exchangeRate, 1.0);
      expect(project.currency.id, 1);
      expect(project.currency.isExternal, false);
    });

    test('evaluate project upgrades data', () async {
      expect(project.upgrades.urgent, false);
      expect(project.upgrades.featured, true);
      expect(project.upgrades.nonpublic, false);
      expect(project.upgrades.fulltime, false);
      expect(project.upgrades.sealed, false);
    });

    // TODO: Add more tests
  });
}
