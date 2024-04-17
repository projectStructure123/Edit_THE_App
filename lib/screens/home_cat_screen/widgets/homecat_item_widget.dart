import '../../../theme/app_decoration.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/homecat_item_model.dart';
import '../controller/home_cat_controller.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/core/app_export.dart';

// ignore: must_be_immutable
class HomecatItemWidget extends StatelessWidget {
  HomecatItemWidget(
    this.homecatItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomecatItemModel homecatItemModelObj;

  var controller = Get.find<HomeCatController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 173,
        width: 150,
        decoration: AppDecoration.outlineBluegray1001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Obx(
          () => CustomImageView(
            imagePath: homecatItemModelObj.imageEighty!.value,
            width: 150,
            radius: BorderRadius.circular(
              18,
            ),
            alignment: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}
