// import getit
import 'package:get_it/get_it.dart';
// import flutter
import 'package:flutter/material.dart';
import 'controllers.dart';

final GetIt getIt = GetIt.instance;

// anunce controller providers to getit
void setupGetIt() {
  getIt.registerSingleton<ControllerSocialNetwork>(
    ControllerSocialNetwork(),
  );
}
