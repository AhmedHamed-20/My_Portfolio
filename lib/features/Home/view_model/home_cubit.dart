import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_portfolio/core/utls/utls.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void changeTheme() {
    switch (state.appThemeModeStatus) {
      case AppThemeModeStatus.light:
        emit(state.copyWith(appThemeModeStatus: AppThemeModeStatus.dark));
        break;
      case AppThemeModeStatus.dark:
        emit(state.copyWith(appThemeModeStatus: AppThemeModeStatus.light));
        break;
    }
  }
}
