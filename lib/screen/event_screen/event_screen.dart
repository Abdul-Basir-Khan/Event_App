import 'package:event_app/screen/event_screen/tabs/all_tab.dart';
import 'package:event_app/theme/app_textstyle.dart';
import 'package:flutter/material.dart';

import '../../theme/app_color.dart';


class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {

  final List tabName=[
    'All',
    'Fitness',
    'Food',
    'Yacht Experience',
  ];

  int _currentIndex=0;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height*0.88,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
        Text("Hey, Lucy! Let's Start\nExploring",style: AppTextStyles.semiBoldStyle.copyWith(fontSize: 25),),
              const SizedBox(height: 10,),
              Container(
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
                      hintText: 'Search',
                      hintStyle: AppTextStyles.regularStyle.copyWith(color: AppColors.primaryGray,fontSize: 16),
                      filled: true,
                      fillColor: AppColors.borderColor.withOpacity(0.50),
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
              const SizedBox(height: 20,),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(tabName.length, (index) {
                    return GestureDetector(

                      onTap: (){
                        setState(() {
                          _currentIndex=index;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center
                        ,
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.primaryColor),
                          color: _currentIndex==index?AppColors.containerColor:Colors.transparent,

                        ),
                        child: Text(tabName[index],style: AppTextStyles.regularStyle.copyWith(color: _currentIndex==index?AppColors.primaryWhite:AppColors.primaryBlack),),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 20,),

              _currentIndex==0? const AllTab():Container()

            ],
          ),
        ),
      ),
    );
  }
}
