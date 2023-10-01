// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:azapp/provider/home/main_chat_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:azapp/res/colors.dart';
import 'package:azapp/res/text_styles.dart';
import 'package:provider/provider.dart';

class MainChatScreen extends StatelessWidget {
  MainChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainChatScreenProvider>(
      builder: (context, chatState, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: AppColors.chatScreenBackgroundGradient,
            ),
          ),
          child: content(chatState.messages.reversed.toList()),
        );
      },
    );
  }

  Widget content(List<ChatMessage> message) {
    return Stack(
      children: [
        //chat bubble view
        ListView.builder(
            reverse: true,
            itemCount: message.length,
            itemBuilder: ((context, index) {
              return Container(
                padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 5.h, bottom: 5.h),
                child: Align(
                  alignment: message[index].messageType == "received" ? Alignment.topLeft : Alignment.topRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment:
                        message[index].messageType == "received" ? CrossAxisAlignment.start : CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.sp),
                            color: (message[index].messageType == "received")
                                ? Colors.white
                                : AppColors.hintFontColor.withOpacity(0.2)),
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                        child: Text(
                          message[index].messageContent,
                          style: message[index].messageType == "received"
                              ? TextStyles.buttonTextBlack18.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w400)
                              : TextStyles.buttonTextWhite18.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        message[index].time,
                        style: TextStyles.buttonTextWhite15
                            .copyWith(fontSize: 12.sp, color: AppColors.hintFontColor.withOpacity(0.4)),
                      )
                    ],
                  ),
                ),
              );
            })),
      ],
    );
  }
}
