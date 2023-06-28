import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../core/authentication.notifier.dart';

class AppProviders {
  static List<SingleChildWidget> get providers =>
      [ChangeNotifierProvider(create: (_) => AuthenticationNotifier())];
}
