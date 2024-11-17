import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get/get.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/chat_asistant_send_document_bloc.dart';
import 'models/chat_asistant_send_document_model.dart';

class ChatAsistantSendDocumentScreen extends StatelessWidget {
  const ChatAsistantSendDocumentScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatAsistantSendDocumentBloc>(
      create: (context) =>
          ChatAsistantSendDocumentBloc(ChatAsistantSendDocumentState(
        chatAsistantSendDocumentModelObj: ChatAsistantSendDocumentModel(),
      ))
            ..add(ChatAsistantSendDocumentInitialEvent()),
      child: ChatAsistantSendDocumentScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 24.h,
                top: 36.h,
                right: 24.h,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Container(
                          height: 554.h,
                          width: double.maxFinite,
                          child: BlocBuilder<ChatAsistantSendDocumentBloc,
                              ChatAsistantSendDocumentState>(
                            builder: (context, state) {
                              return Chat(
                                showUserNames: false,
                                disableImageGallery: false,
                                dateHeaderThreshold: 86400000,
                                messages: state.messageList,
                                user: state.chatUser,
                                bubbleBuilder: (child,
                                    {required message,
                                    required nextMessageInGroup}) {
                                  return message.author.id == state.chatUser.id
                                      ? Container(
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.primary,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16.h),
                                              bottomLeft: Radius.circular(16.h),
                                              bottomRight:
                                                  Radius.circular(16.h),
                                            ),
                                          ),
                                          child: child)
                                      : Container(
                                          decoration: BoxDecoration(
                                            color: appTheme.gray5001,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(16.h),
                                              bottomLeft: Radius.circular(16.h),
                                              bottomRight:
                                                  Radius.circular(16.h),
                                            ),
                                          ),
                                          child: child,
                                        );
                                },
                                textMessageBuilder: (textMessage,
                                    {required messageWidth,
                                    required showName}) {
                                  return textMessage.author.id ==
                                          state.chatUser.id
                                      ? Container(
                                          width: double.maxFinite,
                                          padding: EdgeInsets.all(12.h),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: double.maxFinite,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    CustomIconButton(
                                                      height: 40.h,
                                                      width: 40.h,
                                                      padding:
                                                          EdgeInsets.all(10.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .fillBlueGrayTL81,
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCloudDownload,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 16.h),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            textMessage.text
                                                                .toString(),
                                                            style: CustomTextStyles
                                                                .titleSmallRobotoOnErrorContainer
                                                                .copyWith(
                                                              color: theme
                                                                  .colorScheme
                                                                  .onErrorContainer,
                                                            ),
                                                          ),
                                                          Text(
                                                            "lbl_250kb".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallRobotoBluegray30001,
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ))
                                      : Container(
                                          width: double.maxFinite,
                                          padding: EdgeInsets.only(
                                            left: 12.h,
                                            top: 8.h,
                                            bottom: 8.h,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 182.h,
                                                child: Text(
                                                  textMessage.text.toString(),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .titleSmallRobotoIndigo90001
                                                      .copyWith(
                                                    color: appTheme.indigo90001,
                                                    height: 1.20,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                },
                                onSendPressed: (types.PartialText text) {},
                                customStatusBuilder: (message,
                                    {required context}) {
                                  return Container();
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 16.h),
                        _buildInputSection(context)
                      ],
                    ),
                  ),
                  SizedBox(height: 14.h)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftBlack900,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.h,
          bottom: 8.h,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_message".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildInputSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 56.h,
            width: 56.h,
            padding: EdgeInsets.all(16.h),
            decoration: IconButtonStyleHelper.fillOnSecondaryContainerTL16,
            child: CustomImageView(
              imagePath: ImageConstant.imgCloseOnerrorcontainer,
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: BlocSelector<ChatAsistantSendDocumentBloc,
                ChatAsistantSendDocumentState, TextEditingController?>(
              selector: (state) => state.inputoneController,
              builder: (context, inputoneController) {
                return CustomTextFormField(
                  controller: inputoneController,
                  hintText: "lbl_type_here".tr,
                  hintStyle: CustomTextStyles.bodyLargeRobotoBluegray30001,
                  textInputAction: TextInputAction.done,
                  labelText: "lbl_type_here".tr,
                  keyboardType: TextInputType.text,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // Add your onPressed logic here
                    },
                  ),
                  suffix: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 12.h,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgForward,
                      height: 28.h,
                      width: 34.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 56.h,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 12.h,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillGray,
                  filled: true,
                  fillColor: appTheme.gray5001,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
