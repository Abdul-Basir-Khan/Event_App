import 'package:flutter/material.dart';

import '../../../theme/app_color.dart';
import '../../../theme/app_textstyle.dart';

class AllTab extends StatelessWidget {
  const AllTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
      Text("Feature Event",style: AppTextStyles.boldStyle.copyWith(fontSize: 25),),
      const SizedBox(height: 20,),


      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,children: [
        Container(
          height: MediaQuery.sizeOf(context).height*0.25,
         width: MediaQuery.sizeOf(context).width*0.70,
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: BoxDecoration(
              color: AppColors.primaryWhite,
              borderRadius: BorderRadius.circular(10), boxShadow: [
                BoxShadow(
                    color: AppColors.primaryColor.withOpacity(0.10),
                    offset: const Offset(0,2),
                    spreadRadius: 1,
                    blurRadius: 1
                )
              ]
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,children: [
      const Spacer(),
            Row(
              children: [
                const Spacer(),
                Container(
                  width: MediaQuery.sizeOf(context).width*0.40,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primaryColor,

                  ),
                  child: Center(
                    child:   Text('Fee 95 AED',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryBlack),),

                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
          Text('Subscribe to View Content',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryBlack),),
      const SizedBox(height: 15,),
            Container(
              width: MediaQuery.sizeOf(context).width*0.60,
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.primaryColor,

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.lock,color: AppColors.primaryBlack,),
                  const SizedBox(width: 40,),
                  Text('Subscribe',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryBlack),),
                ],
              ),
            ),
          ],
          ),
        ),


      ],
      ),

      const SizedBox(height: 20,),

      Text("Explore Event",style: AppTextStyles.boldStyle.copyWith(fontSize: 25),),
      const SizedBox(height: 10,),

      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height*0.16,
            width: MediaQuery.sizeOf(context).width*0.35,
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            decoration: BoxDecoration(
                color: AppColors.primaryWhite,
                borderRadius: BorderRadius.circular(10), boxShadow: [
              BoxShadow(
                  color: AppColors.primaryColor.withOpacity(0.10),
                  offset: const Offset(0,2),
                  spreadRadius: 1,
                  blurRadius: 1
              )
            ]
            ),

            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,children: [

            ],
            ),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height*0.16,
            width: MediaQuery.sizeOf(context).width*0.35,
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            decoration: BoxDecoration(
                color: AppColors.primaryWhite,
                borderRadius: BorderRadius.circular(10), boxShadow: [
              BoxShadow(
                  color: AppColors.primaryColor.withOpacity(0.10),
                  offset: const Offset(0,2),
                  spreadRadius: 1,
                  blurRadius: 1
              )
            ]
            ),

            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,children: [

            ],
            ),
          ),
        ],
      ),

    ],
    );
  }
}
