import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste/modulo2.dart';

import 'pages.dart';

class MainModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: ((context, args) => const HomePage()),
            children: [
              ModuleRoute('paginas', module: Modulo2())
              // ChildRoute(
              //   '/pagina2',
              //   child: ((context, args) => const PaginaDois()),
              // ),
              // ChildRoute(
              //   '/pagina3',
              //   child: ((context, args) => const PaginaTres()),
              // ),
            ]),
      ];
}
