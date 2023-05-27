import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_portfolio/core/utls/utls.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void changeTheme() {
    if (state.appThemeModeStatus == AppThemeModeStatus.dark) {
      emit(state.copyWith(appThemeModeStatus: AppThemeModeStatus.light));
    } else {
      emit(state.copyWith(appThemeModeStatus: AppThemeModeStatus.dark));
    }
  }
}
