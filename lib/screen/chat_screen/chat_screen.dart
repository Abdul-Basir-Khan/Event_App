import 'package:event_app/theme/app_textstyle.dart';
import 'package:flutter/material.dart';

import '../../theme/app_color.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.vertical,
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height*0.88,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [

        const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(10) ,topLeft:Radius.circular(10),bottomLeft: Radius.circular(10) ),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.primaryGray.withOpacity(0.10),
                          offset: const Offset(0,2),
                          spreadRadius: 1,
                          blurRadius: 1
                      )
                    ]
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,children: [

                    Text('Tester O',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryColor),),
                    Text('Hi',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.borderColor),),
                    Text('10|25|24,  5:12:00 am',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryBlack),),
                ],
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                    color: AppColors.primaryWhite,
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(10) ,topLeft:Radius.circular(10),bottomLeft: Radius.circular(10) ),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.primaryGray.withOpacity(0.10),
                          offset: const Offset(0,2),
                          spreadRadius: 1,
                          blurRadius: 1
                      )
                    ]
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,children: [

                  Text('Tester O',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryColor),),
                  Text('Hi',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.borderColor),),
                  Text('10|25|24,  5:12:00 am',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryBlack),),
                ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                    color: AppColors.primaryWhite,
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(10) ,topLeft:Radius.circular(10),bottomLeft: Radius.circular(10) ),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.primaryGray.withOpacity(0.10),
                          offset: const Offset(0,2),
                          spreadRadius: 1,
                          blurRadius: 1
                      )
                    ]
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,children: [

                  Text('Tester O',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryColor),),
                  Text('Hi',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.borderColor),),
                  Text('10|25|24,  5:12:00 am',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryBlack),),
                ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                    color: AppColors.primaryWhite,
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(10) ,topLeft:Radius.circular(10),bottomLeft: Radius.circular(10) ),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.primaryGray.withOpacity(0.10),
                          offset: const Offset(0,2),
                          spreadRadius: 1,
                          blurRadius: 1
                      )
                    ]
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,children: [

                  Text('Tester O',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryColor),),
                  Text('Hi',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.borderColor),),
                  Text('10|25|24,  5:12:00 am',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryBlack),),
                ],
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primaryGray.withOpacity(0.10),
                            offset: const Offset(0,2),
                            spreadRadius: 1,
                            blurRadius: 1
                          )
                        ]
                      ),
                      child: TextField(

                        decoration: InputDecoration(
                          hintTextDirection:TextDirection.ltr,
                            hintText: 'Type Your Message',
                            hintStyle: AppTextStyles.regularStyle.copyWith(color: AppColors.primaryGray,fontSize: 16),

                            filled: true,
                            fillColor: AppColors.primaryWhite,
                            focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: AppColors.borderColor.withOpacity(0.10),),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: AppColors.borderColor,
                                  ))),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 10,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.filledColor,
                    ),
                    child: Center(
                      child: Text("Send",style: AppTextStyles.regularStyle.copyWith(color: AppColors.primaryWhite),),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
