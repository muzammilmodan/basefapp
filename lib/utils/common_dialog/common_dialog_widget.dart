import 'package:baseapp/core/constants/app_text_styles.dart';
import 'package:baseapp/core/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';


class CommonsDialogWidget extends StatelessWidget {
  final String title, positiveBtnText, negativeBtnText;
  final GestureTapCallback positiveBtnPressed;
  final bool showNegativeButton;
  final Widget? widget;
 final String? description;
 final double? widgetHeight;

  const CommonsDialogWidget({
    required this.title,
    this.description,
    required this.positiveBtnText,
    required this.negativeBtnText,
    required this.positiveBtnPressed,
    required this.showNegativeButton,
    this.widget,
    this.widgetHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: SizedBox(
        width: Get.width,
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              child: Container(
                margin: const EdgeInsets.only(top: 25),
                padding: const EdgeInsets.only(
                    top: 40, left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.style18FontBold,
                      textAlign: TextAlign.center,
                    ),
                    Gap(10.h),
                   ( description?.isNotEmpty ?? false) ? Text(
                      description ?? '',
                      style: AppTextStyles.style16BlackAppColor600.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ) : Container(),
                    Gap(widgetHeight ?? 0),
                    widget ?? Container(),
                    Gap(10.h),
                    showNegativeButton
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(0.0),
                                    backgroundColor: AppColors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    shadowColor: Colors.black.withOpacity(.5),
                                    elevation: 5,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                    //Get.back();
                                  },
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.r)),
                                        color: AppColors.white,
                                        border: Border.all(
                                            color: AppColors.colorPrimary
                                                .withOpacity(.2))),
                                    child: Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.all(10),
                                      constraints:
                                          const BoxConstraints(minWidth: 100.0),
                                      child: Text(
                                        negativeBtnText,
                                        textAlign: TextAlign.center,
                                        style: AppTextStyles
                                            .style16ColorPrimary600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.h,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(0.0),
                                    backgroundColor: AppColors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    shadowColor: Colors.black.withOpacity(.5),
                                    elevation: 5,
                                  ),
                                  onPressed: positiveBtnPressed,
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.r)),
                                      color: AppColors.colorPrimary,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.all(10),
                                      constraints:
                                          const BoxConstraints(minWidth: 100.0),
                                      child: Text(
                                        positiveBtnText,
                                        textAlign: TextAlign.center,
                                        style: AppTextStyles.style16White600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0.0),
                              backgroundColor: AppColors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              shadowColor: AppColors.transparent,
                              elevation: 5,
                            ),
                            onPressed: positiveBtnPressed,
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                gradient: LinearGradient(colors: [
                                  AppColors.colorPrimary,
                                  AppColors.colorPrimary
                                ]),
                              ),
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(10),
                                constraints:
                                    const BoxConstraints(minWidth: 100.0),
                                child: Text(
                                  positiveBtnText,
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.style18FontBold.copyWith(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
