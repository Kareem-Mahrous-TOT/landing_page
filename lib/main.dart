import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_observer.dart';
import 'core/di/injection_container.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
