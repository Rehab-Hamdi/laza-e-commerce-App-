import 'package:get_it/get_it.dart';
import 'package:laza/features/auth/data/api_services/auth_web_services.dart';
import 'package:laza/features/auth/data/repo/auth_repo.dart';
import 'package:laza/features/auth/presentation/cubit/auth_cubit.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<AuthCubit>(() => AuthCubit(getIt()));
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(getIt()));
  getIt.registerLazySingleton<AuthWebServices>(
    () => AuthWebServices(AuthWebServices.createAndSetUpDio()),
  );
}
