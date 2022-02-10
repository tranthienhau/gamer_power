import 'package:DemoApp/app/core/app_resouces.dart';
import 'package:DemoApp/domain/entities/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondScreenPage extends StatelessWidget {
  final Game game;
  SecondScreenPage({required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
      backgroundColor: Colors.blueGrey,
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.fromLTRB(15.w, 40.h, 15.w, 20.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  iconSize: 40,
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
                SizedBox(width: 5.w),
                Expanded(
                    child: Text(game.title,
                        style:
                            boldSFTextStyle(size: 24.sp, color: Colors.white))),
                SizedBox(width: 5.w),
                SizedBox(width: 40)
              ],
            ),
            SizedBox(
                width: double.infinity,
                height: 200.h,
                child: Image.network(game.image)),
            Text('Platforms: ${game.platforms}',
                style: mediumSFTextStyle(size: 18.sp, color: Colors.white),
                textAlign: TextAlign.start),
            SizedBox(height: 30.h),
            Text('Description: \n${game.description}',
                style: mediumSFTextStyle(size: 20.sp, color: Colors.white)),
            SizedBox(height: 10.h),
            Text('Instructions: \n${game.instructions}',
                style: mediumSFTextStyle(size: 20.sp, color: Colors.white))
          ],
        ),
      ),
    );
  }
}
