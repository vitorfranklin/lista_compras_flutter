import 'package:flutter_modular/flutter_modular.dart';
import 'package:listadecompras/app/modules/list/list_module.dart';
import '../home/home_store.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => HomePage()),
    ModuleRoute('/list', module: ListModule()),
  ];
}
