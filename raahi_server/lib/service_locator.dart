 
import 'package:get_it/get_it.dart';
import 'package:raahi_server/app_state.dart';
import 'package:sms_maintained/sms.dart';


GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AppState>(AppState());
  locator.registerSingleton<SmsSender>(SmsSender());
}