import 'package:get_it/get_it.dart';
import 'package:my_portfolio/features/Home/view_model/home_cubit.dart';

GetIt serviceLocator = GetIt.instance;

class ServiceLocator {
  static void init() {
    //cubits
    serviceLocator.registerFactory<HomeCubit>(() => HomeCubit());
  }
}
