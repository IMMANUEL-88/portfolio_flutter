import 'package:go_router/go_router.dart';
import 'package:my_portfolio/pages/home_page.dart';

class AppRoutes {
  static GoRouter createRouter() {
    return GoRouter(
      // initialLocation: prefs.getBool('login') ?? false ? '/shopHome' : '/',
      initialLocation: '/home',
      // errorPageBuilder: (context, state) {
      //   return MaterialPage(child: Scaffold(
      //     appBar: AppBar(title: Text('Error')),
      //     body: Center(child: Text('Page not found')),
      //   ));
      // },
      routes: [GoRoute(path: '/home', builder: (context, state) => HomePage())],
    );
  }
}
