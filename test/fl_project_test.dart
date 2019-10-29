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
      expect(project.frontendProjectStatus, "open");
      expect(project.deleted, false);
      expect(project.local, false);
      expect(project.location, isNotNull);
      expect(project.isSellerKycRequired, false);
      expect(project.timeSubmitted, 1569271320);
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

    test('evaluate project countries data', () async {
      expect(project.countries[0].name, "Afghanistan");
      expect(project.countries[0].code, "AF");
    });

    test('evaluate project budget data', () async {
      expect(project.budget.currencyId, null);
      expect(project.budget.minimum, 50.0);
      expect(project.budget.maximum, 1000.0);
      expect(project.budget.projectType, null);
      expect(project.budget.name, null);
    });

    test('evaluate project timezones data', () async {
      expect(project.timezones[0].country, "CI");
      expect(project.timezones[0].offset, 0);
      expect(project.timezones[0].id, 2);
      expect(project.timezones[0].timezone, "Africa/Abidjan");
    });

    test('evaluate project bid stats data', () async {
      expect(project.bidStats.bidCount, 45);
      expect(project.bidStats.bidAvg, 772.6666666666666);
    });

    // TODO: Add more tests
  });
}
