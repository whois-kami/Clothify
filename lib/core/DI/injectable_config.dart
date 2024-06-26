import 'package:ecom_app/core/DI/injectable_config.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  getIt.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
  getIt.init();
}
