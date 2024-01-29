import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_constants.dart';

class BillDetailsCard extends StatelessWidget {
  const BillDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 480.w,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
        shadows: [
          BoxShadow(
            color: const Color(0x33000000),
            blurRadius: 20.r,
            offset: const Offset(0, 4),
            spreadRadius: 0.r,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppConstants.billDetails,
              style: TextStyle(fontSize: 16.w, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 16.w),
            Container(
              width: 303.w,
              height: 38.w,
              decoration: ShapeDecoration(
                color: const Color(0xFFEFECEC),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.w),
                child: Row(
                  children: [
                    Text(
                      AppConstants.totalNum,
                      style: TextStyle(
                          fontSize: 14.w, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(
                      "10",
                      style: TextStyle(
                          fontSize: 16.w, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.w),
            Row(
              children: [
                Text(
                  AppConstants.itemPrice,
                  style: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF868889),
                  ),
                ),
                const Spacer(),
                Text(
                  '1500 Tk',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: const Color(0xFF838383),
                    fontSize: 11.w,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.13.w,
                  ),
                ),
                SizedBox(width: 11.w),
                Text(
                  '445 Tk',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF61656A),
                    fontSize: 12.w,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),
                )
              ],
            ),
            SizedBox(height: 8.w),
            Row(
              children: [
                Text(
                  AppConstants.gST,
                  style: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF868889),
                  ),
                ),
                const Spacer(),
                Text(
                  '445 Tk',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF61656A),
                    fontSize: 12.w,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),
                )
              ],
            ),
            SizedBox(height: 8.w),
            Row(
              children: [
                Text(
                  AppConstants.deliveryCharges,
                  style: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF868889),
                  ),
                ),
                const Spacer(),
                Text(
                  '1500 Tk',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: const Color(0xFF838383),
                    fontSize: 11.w,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.13.w,
                  ),
                ),
                SizedBox(width: 11.w),
                Text(
                  '445 Tk',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF61656A),
                    fontSize: 12.w,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),
                )
              ],
            ),
            SizedBox(height: 8.w),
            Row(
              children: [
                Text(
                  AppConstants.packagingCharges,
                  style: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF868889),
                  ),
                ),
                const Spacer(),
                Text(
                  '1500 Tk',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: const Color(0xFF838383),
                    fontSize: 11.w,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.13.w,
                  ),
                ),
                SizedBox(width: 11.w),
                Text(
                  '445 Tk',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF61656A),
                    fontSize: 12.w,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),
                )
              ],
            ),
            SizedBox(height: 15.w),
            const Divider(),
            SizedBox(height: 15.w),
            Row(
              children: [
                Text(
                  AppConstants.couponNam,
                  style: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF868889),
                  ),
                ),
                const Spacer(),
                Text(
                  '445 Tk',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF61656A),
                    fontSize: 12.w,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),
                )
              ],
            ),
            SizedBox(height: 8.w),
            Row(
              children: [
                Text(
                  AppConstants.walletDis,
                  style: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF868889),
                  ),
                ),
                const Spacer(),
                Text(
                  '45 Tk',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF61656A),
                    fontSize: 12.w,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),
                )
              ],
            ),
            SizedBox(height: 8.w),
            Row(
              children: [
                Text(
                  AppConstants.tipForDeli,
                  style: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF868889),
                  ),
                ),
                const Spacer(),
                Text(
                  '45 Tk',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF61656A),
                    fontSize: 12.w,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                  ),
                )
              ],
            ),
            SizedBox(height: 16.w),
            const Divider(),
            SizedBox(height: 16.w),
            Row(
              children: [
                SizedBox(
                  width: 62.w,
                  child: Text(
                    AppConstants.toPay,
                    style: TextStyle(
                      color: const Color(0xFFCD0608),
                      fontSize: 18.w,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.h,
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 60.w,
                  child: Text(
                    '\$5,822',
                    style: TextStyle(
                      color: const Color(0xFFCD0608),
                      fontSize: 18.w,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.h,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 16.w),
            Container(
              width: 303.w,
              height: 38.w,
              decoration: ShapeDecoration(
                color: const Color(0xFFEFECEC),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.w),
                child: Row(
                  children: [
                    Text(
                      AppConstants.yourTotal,
                      style: TextStyle(
                          fontSize: 14.w, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(
                      "\1500",
                      style: TextStyle(
                          fontSize: 16.w, fontWeight: FontWeight.w600),
                    ),
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
