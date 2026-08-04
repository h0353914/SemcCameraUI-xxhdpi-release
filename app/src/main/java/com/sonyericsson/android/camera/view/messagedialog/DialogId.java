package com.sonyericsson.android.camera.view.messagedialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.sonyericsson.android.camera.R;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogBuilder;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.BrandConfig;
public enum DialogId {
    LOCATION_SERVICE_DISABLE_ON_LAUNCH(new OkCancelDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_advanced_setting_geo_tag_title_txt, R.string.cam_strings_advanced_setting_geo_tag_both_off_txt, -1, R.string.cam_strings_ok_txt, R.string.cam_strings_cancel_txt, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS(new OkCancelDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_advanced_setting_geo_tag_title_txt, R.string.cam_strings_advanced_setting_geo_tag_both_off_txt, -1, R.string.cam_strings_ok_txt, R.string.cam_strings_cancel_txt, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    THERMAL_NOTE(new OkWithCheckBoxDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_dialog_high_temp_title_txt, R.string.cam_strings_dialog_high_temp_txt, -1, R.string.cam_strings_ok_txt, -1, R.layout.dialog_content_withcheckbox, R.id.check_box_do_not_show_again, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.THERMAL_NOTE, true),
    THERMAL_WARNING(new OkWithCheckBoxDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_dialog_high_temp_title_txt, R.string.cam_strings_error_high_temp_info_txt, -1, R.string.cam_strings_ok_txt, -1, R.layout.dialog_content_withcheckbox, R.id.check_box_do_not_show_again, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.THERMAL_WARNING, true),
    THERMAL_CRITICAL(new OkDialogBuilder(), MessageDialogController.Priority.IMMEDIATELY, R.string.cam_strings_dialog_high_temp_title_txt, R.string.cam_strings_error_high_temp_shutting_down_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    ERROR_IN_USE_BY_ANOTHER_APPLICATION(new NoButtonDialogBuilder(), MessageDialogController.Priority.IMMEDIATELY, R.string.cam_strings_error_dialog_title_txt, R.string.cam_strings_error_device_not_available_txt, -1, -1, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    ERROR_USE_OF_CAMERA_RESTRICTED(new NoButtonDialogBuilder(), MessageDialogController.Priority.IMMEDIATELY, R.string.cam_strings_error_dialog_title_txt, R.string.cam_strings_use_of_camera_not_authorized_txt, -1, -1, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    ERROR_UNKNOWN(new NoButtonDialogBuilder(), MessageDialogController.Priority.IMMEDIATELY, R.string.cam_strings_error_dialog_title_txt, R.string.cam_strings_error_fatal_txt, -1, -1, -1, -1, -1, RotatableDialog.Cancelable.USE_DEFAULT, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO(new NoButtonDialogBuilder(), MessageDialogController.Priority.IMMEDIATELY, R.string.cam_strings_error_dialog_title_txt, R.string.cam_strings_error_mms_rec_size_limit_txt, -1, -1, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_VIDEOSIZE_CHANGE(new OkCancelWithCheckBoxDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_change_save_destination_title_txt, R.string.cam_strings_video_explanatory_txt, -1, R.string.cam_strings_error_high_temp_shut_down_yes_txt, R.string.cam_strings_error_high_temp_shut_down_no_txt, R.layout.dialog_content_withcheckbox, R.id.check_box_do_not_show_again, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.FOURK_STORAGE_EXPLANATORY_FOR_VIDEOSIZE, true),
    FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_DESTINATION_CHANGE(new OkWithCheckBoxDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_save_destination_title_txt, R.string.cam_strings_video_explanatory_4k2k_setting_txt, -1, R.string.cam_strings_ok_txt, -1, R.layout.dialog_content_withcheckbox, R.id.check_box_do_not_show_again, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.FOURK_STORAGE_EXPLANATORY_FOR_DESTINATION, true),
    MEMORY_FULL_PROPOSE_CHANGE_TO_INTERNAL(new OkCancelDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_save_destination_title_txt, R.string.cam_strings_common_error_sdcard_full_txt, -1, R.string.cam_strings_error_high_temp_shut_down_yes_txt, R.string.cam_strings_error_high_temp_shut_down_no_txt, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_INTERNAL(new OkCancelDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_save_destination_title_txt, R.string.cam_strings_common_error_sdcard_unavailable_txt, -1, R.string.cam_strings_error_high_temp_shut_down_yes_txt, R.string.cam_strings_error_high_temp_shut_down_no_txt, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    MEMORY_FULL(new OkDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_error_memory_title_txt, R.string.cam_strings_error_internal_sd_full_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    MEMORY_SD_UNAVAILABLE(new OkDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_error_memory_title_txt, R.string.cam_strings_error_memory_unavailable_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    MEMORY_FULL_PROPOSE_CHANGE_TO_SD(new OkCancelDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_error_memory_title_txt, R.string.cam_strings_common_error_internal_memory_full_txt, -1, R.string.cam_strings_error_high_temp_shut_down_yes_txt, R.string.cam_strings_error_high_temp_shut_down_no_txt, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    MEMORY_INTERNAL_UNAVAILABLE(new OkDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_error_memory_title_txt, R.string.cam_strings_error_memory_ims_unavailable_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_SD(new OkCancelDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_error_memory_title_txt, R.string.cam_strings_common_error_internal_memory_unavailable_txt, -1, R.string.cam_strings_error_high_temp_shut_down_yes_txt, R.string.cam_strings_error_high_temp_shut_down_no_txt, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP(new OkCancelDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_fast_capturing_screen_locked_title_txt, R.string.cam_strings_fast_capturing_screen_locked_apps_list_txt, -1, R.string.cam_strings_unlock_button_txt, R.string.cam_strings_cancel_txt, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU(new OkDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_fast_capturing_screen_locked_title_txt, R.string.cam_strings_fast_capturing_screen_locked_settings_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, true),
    COULD_NOT_SAVE_PHOTO(new NoButtonDialogBuilder(), MessageDialogController.Priority.IMMEDIATELY, R.string.cam_strings_error_dialog_title_txt, R.string.cam_strings_error_fatal_sd_photo_txt, -1, -1, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    COULD_NOT_START_RECORDING(new NoButtonDialogBuilder(), MessageDialogController.Priority.IMMEDIATELY, R.string.cam_strings_error_dialog_title_txt, R.string.cam_strings_error_fatal_sd_video_txt, -1, -1, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    COOLING_MODE(new OkAndListDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_cooling_mode_title_txt, R.string.cam_strings_cooling_mode_message1_txt, R.string.cam_strings_cooling_mode_message2_txt, R.string.cam_strings_tutorial_button_txt, -1, R.layout.dialog_scrollable_message, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    RESTRICT_PHOTO_RESOLUTION(new OkDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_restricted_setting_dialog_title_txt, R.string.cam_strings_restricted_setting_photo_resolution_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    RESTRICT_STEADYSHOT_VIDEO_RESOLUTION(new OkDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_restricted_setting_dialog_title_txt, R.string.cam_strings_restricted_setting_video_resolution_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    LOW_BATTERY_CRITICAL_ON_RECORDING(new OkDialogBuilder(), MessageDialogController.Priority.IMMEDIATELY, R.string.cam_strings_dialog_high_temp_title_txt, R.string.cam_strings_dialog_battery_level_low_recording_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    LOW_BATTERY_CRITICAL_ON_PHOTO(new OkDialogBuilder(), MessageDialogController.Priority.IMMEDIATELY, R.string.cam_strings_dialog_high_temp_title_txt, R.string.cam_strings_dialog_battery_level_low_using_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    LOW_BATTERY_WARNING(new OkWithCheckBoxDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_dialog_high_temp_title_txt, R.string.cam_strings_dialog_battery_level_low_info_txt, -1, R.string.cam_strings_ok_txt, -1, R.layout.dialog_content_withcheckbox, R.id.check_box_do_not_show_again, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.BATTERY_WARNING, true),
    HIGH_SPEED_SD_RECOMMENDATION_ON_MODE_CHANGE(new OkCancelWithCheckBoxDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_change_save_destination_slowmotion_title_txt, R.string.cam_strings_video_explanatory_txt, -1, R.string.cam_strings_error_high_temp_shut_down_yes_txt, R.string.cam_strings_error_high_temp_shut_down_no_txt, R.layout.dialog_content_withcheckbox, R.id.check_box_do_not_show_again, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.STORAGE_EXPLANATORY, true),
    HIGH_SPEED_SD_RECOMMENDATION_ON_SETTING_CHANGE(new OkWithCheckBoxDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_save_destination_title_txt, R.string.cam_strings_video_explanatory_slowmotion_setting_txt, -1, R.string.cam_strings_ok_txt, -1, R.layout.dialog_content_withcheckbox, R.id.check_box_do_not_show_again, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.STORAGE_EXPLANATORY_FOR_SETTING, true),
    RESTRICT_SLOW_VIDEO_RESOLUTION(new OkDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_restricted_setting_dialog_title_txt, R.string.cam_strings_restricted_setting_slow_motion_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    MEMORY_SD_UNAVAILABLE_FOR_CORRUPT(new OkDialogBuilder(), MessageDialogController.Priority.IMMEDIATELY, R.string.cam_strings_error_memory_title_txt, R.string.cam_strings_error_memory_unavailable_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    MEMORY_FULL_IN_BURST_MODE(new OkDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_error_memory_title_txt, R.string.cam_strings_dialog_storage_full_burst_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    MAX_FILESIZE_REACHED(new OkDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_error_memory_title_txt, R.string.cam_strings_max_file_size_save_failed_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    MAX_DURATION_REACHED(new OkDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_dialog_hight_temp_title_txt, R.string.cam_strings_max_recroding_time_save_failed_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.FALSE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    VIDEO_HDR_CAUTION(new OkWithCheckBoxDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_dialog_high_temp_title_txt, R.string.cam_strings_dialog_video_hdr_hlg_supported_txt, -1, R.string.cam_strings_ok_txt, -1, R.layout.dialog_content_withcheckbox, R.id.check_box_do_not_show_again, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.VIDEO_HDR_CAUTION, false),
    VIDEO_HDR_RESTRICTION(new OkDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_restricted_setting_dialog_title_txt, R.string.cam_strings_restricted_setting_video_hdr_hlg_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false),
    SIDE_SENSE_DISABLE_ON_LAUNCH(new OkCancelDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_side_touch_on_title_txt, R.string.cam_strings_side_touch_on_txt, -1, R.string.cam_strings_ok_txt, R.string.cam_strings_cancel_txt, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS(new OkCancelDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_side_touch_on_title_txt, R.string.cam_strings_side_touch_on_txt, -1, R.string.cam_strings_ok_txt, R.string.cam_strings_cancel_txt, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    DLG_INVALID(new OkDialogBuilder(), MessageDialogController.Priority.LOW, -1, -1, -1, -1, -1, -1, -1, RotatableDialog.Cancelable.FALSE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    RESET_CONFIRMATION(new OkCancelDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_reset_settings_txt, R.string.cam_strings_reset_settings_confirm_title_txt, -1, R.string.cam_strings_ok_txt, R.string.cam_strings_cancel_txt, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    DESTINATION_TO_SAVE_CHANGED_INTERNAL(new OkDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_dialog_high_temp_title_txt, R.string.cam_strings_sd_permission_info_txt, -1, R.string.cam_strings_ok_txt, -1, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    REQUEST_SD_CARD_PERMISSION(new OkCancelDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_dialog_high_temp_title_txt, R.string.cam_strings_sd_permission_info_2_txt, -1, R.string.cam_strings_ok_txt, R.string.cam_strings_cancel_txt, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    SD_CARD_PERMISSION_UNAVAILABLE(new OkCancelDialogBuilder(), MessageDialogController.Priority.LOW, R.string.cam_strings_sd_permission_dialog_title_txt, R.string.cam_strings_sd_permission_info_3_txt, -1, R.string.cam_strings_ok_txt, R.string.cam_strings_cancel_txt, -1, -1, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.NO_MESSAGE, false),
    PREDICTIVE_LAUNCH_DESCRIPTION(new OkWithCheckBoxDialogBuilder(), MessageDialogController.Priority.NORMAL, R.string.cam_strings_predictive_launch_txt, R.string.cam_strings_predictive_launch_dialog_guide_txt, -1, R.string.cam_strings_ok_txt, -1, R.layout.dialog_content_withcheckbox, R.id.check_box_do_not_show_again, RotatableDialog.Cancelable.TRUE, RotatableDialog.Cancelable.FALSE, MessageType.PREDICTIVE_LAUNCH_DESCRIPTION, false);

    final MessageDialogBuilder builderType;
    final int checkBoxResourceID;
    final boolean hasOnCheckBox;
    final RotatableDialog.Cancelable isCancelable;
    final RotatableDialog.Cancelable isCancelableOnTouchOutside;
    final int layoutResourceID;
    final int messageFooterResourceID;
    final int messageResourceID;
    final MessageType messageType;
    final int negativeButtonResourceID;
    final int positiveButtonResourceID;
    final MessageDialogController.Priority priority;
    final int titleResourceID;

    DialogId(MessageDialogBuilder messageDialogBuilder, MessageDialogController.Priority priority, int i2, int i3, int i4, int i5, int i6, int i7, int i8, RotatableDialog.Cancelable cancelable, RotatableDialog.Cancelable cancelable2, MessageType messageType, boolean z) {
        this.builderType = messageDialogBuilder;
        this.priority = priority;
        this.titleResourceID = i2;
        if (messageType == MessageType.THERMAL_NOTE && BrandConfig.isVerizonBrand()) {
            i3 = R.string.cam_strings_dialog_high_temp_vzw_txt;
        }
        this.messageResourceID = i3;
        this.messageFooterResourceID = i4;
        this.positiveButtonResourceID = i5;
        this.negativeButtonResourceID = i6;
        this.layoutResourceID = i7;
        this.checkBoxResourceID = i8;
        this.isCancelable = cancelable;
        this.isCancelableOnTouchOutside = cancelable2;
        this.messageType = messageType;
        this.hasOnCheckBox = z;
    }

    public MessageType getMessageType() {
        return this.messageType;
    }
}
