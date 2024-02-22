import 'package:auto_route/auto_route.dart';
import 'package:rhymer/src/featurs/presentation/pages/favorite_screen/favorite_screen.dart';
import 'package:rhymer/src/featurs/presentation/pages/home_screen/home_screen.dart';
import 'package:rhymer/src/featurs/presentation/pages/save_screen/save_screen.dart';
import 'package:rhymer/src/featurs/presentation/pages/settings_screen/settinhs_screen.dart';
import 'package:rhymer/src/featurs/presentation/pages/tab_screen/tab_screen.dart';
part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: TabRoute.page, path: "/", ),
        AutoRoute(
            page: FavoriteRoute.page,
            path: "/favorite",  // <-- Issue here
          ),
          AutoRoute(
            page: SettingRoute.page,
            path: "/settings",  // <-- Issue here
          ),
          AutoRoute(
            page: SaveRoute.page,
            path: "/save",  // <-- Issue here
          ),
          AutoRoute(
            page: HomeRoute.page,
            path: "/home_screen",  // <-- Issue here
          ),
      ];
}
