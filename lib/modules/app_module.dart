import 'package:analytics/core/base_scaffold.dart';
import 'package:analytics/core/models/device_info.dart';
import 'package:analytics/modules/home/home_module.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<DeviceInfoPlugin>((i) => DeviceInfoPlugin()),
        AsyncBind<DeviceInfo>(
            (i) => DeviceInfo(deviceInfoPlugin: i()).loadData())
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => const BaseScaffold(),
            children: [
              ModuleRoute(
                '/home',
                module: HomeModule(),
                transition: TransitionType.rightToLeft,
                /*  guards: [AuthGuard()]*/
              ),
            ]),
      ];
}
