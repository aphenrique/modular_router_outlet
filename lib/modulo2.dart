import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste/pages.dart';

class Modulo2 extends Module{
  @override
  
  List<ModularRoute> get routes => [
    ChildRoute(
                '/pagina2',
                child: ((context, args) => const PaginaDois()),
              ),
              ChildRoute(
                '/pagina3',
                child: ((context, args) => const PaginaTres()),
              ),
  ];
}