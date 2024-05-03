import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_cubit_example/app/home/home_cubit.dart';
import 'package:modular_cubit_example/app/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports => const [
        // CounterCubitModule(),
      ];

  @override
  void binds(Injector i) {}

  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (_) => BlocProvider(
        create: (_) => HomeCubit(),
        child: const HomePage(),
      ),
    );
  }
}
