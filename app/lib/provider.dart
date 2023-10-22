import 'package:get_it/get_it.dart';
import 'package:ipbjp_mobile/controllers.dart';

final GetIt getIt = GetIt.instance;

// anunce controller providers to getit
void setupGetIt() {
  getIt.registerSingleton<SocialNetworkController>(
    SocialNetworkController(),
  );
  getIt.registerSingleton<DonationController>(
    DonationController(),
  );
  getIt.registerSingleton<EventController>(
    EventController(),
  );

}
