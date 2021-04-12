import 'package:flutter_screenutil/flutter_screenutil.dart';

extension appSize on int {
  double get w => ScreenUtil().setWidth(this);
  double get h => ScreenUtil().setHeight(this);
}