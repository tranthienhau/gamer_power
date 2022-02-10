import 'package:DemoApp/app/core/app_resouces.dart';
import 'package:DemoApp/app/core/app_router.dart';
import 'package:DemoApp/app/page/firstscreen/bloc/firstscreen_bloc.dart';
import 'package:DemoApp/app/page/firstscreen/bloc/firstscreen_event.dart';
import 'package:DemoApp/app/page/firstscreen/bloc/firstscreen_state.dart';
import 'package:DemoApp/app/services/navigation_service.dart';
import 'package:DemoApp/domain/entities/game.dart';
import 'package:DemoApp/setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstScreenPage extends StatefulWidget {
  const FirstScreenPage({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreenPage> {
  late FirstScreenBloc _firstScreenBloc;
  late NavigationService _navigationService;
  @override
  void initState() {
    super.initState();
    _navigationService = locator.get<NavigationService>();
    _firstScreenBloc = locator.get<FirstScreenBloc>();
    _firstScreenBloc..add(GetListGames());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody(), backgroundColor: Colors.blueGrey);
  }

  Widget _buildBody() {
    return BlocProvider(
        create: (context) => _firstScreenBloc..add(GetListGames()),
        child: _buildListGame());
  }

  Widget _buildListGame() {
    List<Game> listGame = [];
    return BlocBuilder<FirstScreenBloc, FirstScreenState>(
        builder: (context, state) {
      if (state is ListGameState) {
        hideError();
        listGame = state.listGame;
      } else if (state is GetListGameErrorState) {
        showError(state.errorMessage);
      }
      return Container(
        padding: const EdgeInsets.fromLTRB(15, 50, 15, 20),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: listGame.map((e) => _buildItemGame(e)).toList(),
          ),
        ),
      );
    });
  }

  Widget _buildItemGame(Game game) {
    return GestureDetector(
      onTap: () {
        gotoSecondPage(game);
      },
      child: Container(
        margin: EdgeInsets.only(top: 5.h, bottom: 5.h),
        padding: EdgeInsets.only(left: 15.w, right: 15.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Colors.white),
        child: Column(children: [
          SizedBox(height: 5.h),
          SizedBox(
              width: double.infinity,
              height: 120.h,
              child: Image.network(game.thumbnail)),
          SizedBox(height: 5.h),
          Text(game.title,
              style: boldSFTextStyle(size: 16.sp), textAlign: TextAlign.center),
          SizedBox(height: 5.h),
          Text('Platforms: ${game.platforms}',
              style: mediumSFTextStyle(size: 14.sp),
              textAlign: TextAlign.center),
          SizedBox(height: 5.h),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(width: 5.w),
            Text('Status: ${game.status}', style: boldSFTextStyle(size: 12.sp)),
            Text('Public: ${game.published_date}',
                style: boldSFTextStyle(size: 12.sp)),
            SizedBox(width: 5.w)
          ]),
          SizedBox(height: 5.h),
        ]),
      ),
    );
  }

  void showError(String error) {
    final snackBar = SnackBar(content: Text(error));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void hideError() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  void gotoSecondPage(Game game) {
    _navigationService.pushNamed(AppRoute.secondPage, args: game);
  }
}
