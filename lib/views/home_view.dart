import 'package:design_phone_number/controller/number_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  var inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                
              ),
            ),
            // Spacer(),
            
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.h),
              child: TextFormField(
                controller: inputController,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                style: TextStyle(fontSize: 25.sp),
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 50.0.sp,
                // mainAxisSpacing: 30.0,
              ),
              itemCount: 12,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    inputController.text =
                        "${NumberController.numberModel[index].number}";
                    print(index + 1);
                  },
                  child: Container(
                    margin: EdgeInsets.all(6.sp),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.sp),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.5),
                              blurRadius: 9,
                              offset: Offset(3.sp, 3.sp))
                        ]),
                    child: Center(
                        child: Text(
                      "${NumberController.numberModel[index].number}",
                      style: TextStyle(fontSize: 20.sp),
                    )),
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 15.h,
                  width: 15.w,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle
                  ),
                  child: Center(child: Icon(Icons.camera_indoor_rounded,color: Colors.white,size: 25.sp,)),
                ),
                Container(
                  height: 15.h,
                  width: 15.w,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle
                  ),
                  child: Center(child: Icon(Icons.call,color: Colors.white,size: 25.sp,)),
                ),
                Container(
                  height: 15.h,
                  width: 15.w,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle
                  ),
                  child: Center(child: Icon(Icons.close,color: Colors.white,size: 25.sp,)),
                )
              ],
            )
          ],
        ),
      
      ),

    );
  }
}
