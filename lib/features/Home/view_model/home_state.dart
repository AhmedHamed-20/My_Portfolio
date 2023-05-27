// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_cubit.dart';

class HomeState extends Equatable {
  final AppThemeModeStatus appThemeModeStatus;
  const HomeState({
    this.appThemeModeStatus = AppThemeModeStatus.light,
  });

  HomeState copyWith({
    AppThemeModeStatus? appThemeModeStatus,
  }) {
    return HomeState(
      appThemeModeStatus: appThemeModeStatus ?? this.appThemeModeStatus,
    );
  }

  @override
  List<Object> get props => [appThemeModeStatus];
}
