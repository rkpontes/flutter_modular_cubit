import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_cubit_example/app/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => const [];

  @override
  void binds(Injector i) {}
  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.module('/', module: HomeModule());
  }
}
