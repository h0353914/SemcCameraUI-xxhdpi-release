package com.sonyericsson.android.camera.view.messagedialog;

import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog$Cancelable;
import com.sonyericsson.cameracommon.utility.BrandConfig;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'THERMAL_WARNING' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class DialogId {
    private static final /* synthetic */ DialogId[] $VALUES;
    public static final DialogId COOLING_MODE;
    public static final DialogId COULD_NOT_SAVE_PHOTO;
    public static final DialogId COULD_NOT_START_RECORDING;
    public static final DialogId DESTINATION_TO_SAVE_CHANGED_INTERNAL;
    public static final DialogId DLG_INVALID;
    public static final DialogId ERROR_IN_USE_BY_ANOTHER_APPLICATION;
    public static final DialogId ERROR_UNKNOWN;
    public static final DialogId ERROR_USE_OF_CAMERA_RESTRICTED;
    public static final DialogId FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_DESTINATION_CHANGE;
    public static final DialogId FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_VIDEOSIZE_CHANGE;
    public static final DialogId HIGH_SPEED_SD_RECOMMENDATION_ON_MODE_CHANGE;
    public static final DialogId HIGH_SPEED_SD_RECOMMENDATION_ON_SETTING_CHANGE;
    public static final DialogId LOW_BATTERY_CRITICAL_ON_PHOTO;
    public static final DialogId LOW_BATTERY_CRITICAL_ON_RECORDING;
    public static final DialogId LOW_BATTERY_WARNING;
    public static final DialogId MAX_DURATION_REACHED;
    public static final DialogId MAX_FILESIZE_REACHED;
    public static final DialogId MEMORY_FULL;
    public static final DialogId MEMORY_FULL_IN_BURST_MODE;
    public static final DialogId MEMORY_FULL_PROPOSE_CHANGE_TO_INTERNAL;
    public static final DialogId MEMORY_FULL_PROPOSE_CHANGE_TO_SD;
    public static final DialogId MEMORY_INTERNAL_UNAVAILABLE;
    public static final DialogId MEMORY_SD_UNAVAILABLE;
    public static final DialogId MEMORY_SD_UNAVAILABLE_FOR_CORRUPT;
    public static final DialogId MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO;
    public static final DialogId MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_INTERNAL;
    public static final DialogId MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_SD;
    public static final DialogId PREDICTIVE_LAUNCH_DESCRIPTION;
    public static final DialogId REQUEST_SD_CARD_PERMISSION;
    public static final DialogId RESET_CONFIRMATION;
    public static final DialogId RESTRICT_PHOTO_RESOLUTION;
    public static final DialogId RESTRICT_SLOW_VIDEO_RESOLUTION;
    public static final DialogId RESTRICT_STEADYSHOT_VIDEO_RESOLUTION;
    public static final DialogId SD_CARD_PERMISSION_UNAVAILABLE;
    public static final DialogId SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS;
    public static final DialogId SIDE_SENSE_DISABLE_ON_LAUNCH;
    public static final DialogId THERMAL_CRITICAL;
    public static final DialogId THERMAL_WARNING;
    public static final DialogId UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP;
    public static final DialogId UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU;
    public static final DialogId VIDEO_HDR_CAUTION;
    public static final DialogId VIDEO_HDR_RESTRICTION;
    final MessageDialogBuilder builderType;
    final int checkBoxResourceID;
    final boolean hasOnCheckBox;
    final RotatableDialog$Cancelable isCancelable;
    final RotatableDialog$Cancelable isCancelableOnTouchOutside;
    final int layoutResourceID;
    final int messageFooterResourceID;
    final int messageResourceID;
    final MessageType messageType;
    final int negativeButtonResourceID;
    final int positiveButtonResourceID;
    final MessageDialogController$Priority priority;
    final int titleResourceID;
    public static final DialogId LOCATION_SERVICE_DISABLE_ON_LAUNCH = new DialogId("LOCATION_SERVICE_DISABLE_ON_LAUNCH", 0, new OkCancelDialogBuilder(), MessageDialogController$Priority.LOW, 2131689620, 2131689619, -1, 2131689975, 2131689666, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
    public static final DialogId LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS = new DialogId("LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS", 1, new OkCancelDialogBuilder(), MessageDialogController$Priority.LOW, 2131689620, 2131689619, -1, 2131689975, 2131689666, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
    public static final DialogId THERMAL_NOTE = new DialogId("THERMAL_NOTE", 2, new OkWithCheckBoxDialogBuilder(), MessageDialogController$Priority.NORMAL, 2131689738, 2131689739, -1, 2131689975, -1, 2131492915, 2131296352, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.THERMAL_NOTE, true);

    public static DialogId valueOf(String str) {
        return (DialogId) Enum.valueOf(DialogId.class, str);
    }

    public static DialogId[] values() {
        return (DialogId[]) $VALUES.clone();
    }

    static {
        OkWithCheckBoxDialogBuilder okWithCheckBoxDialogBuilder = new OkWithCheckBoxDialogBuilder();
        MessageDialogController$Priority messageDialogController$Priority = MessageDialogController$Priority.NORMAL;
        RotatableDialog$Cancelable rotatableDialog$Cancelable = RotatableDialog$Cancelable.TRUE;
        RotatableDialog$Cancelable rotatableDialog$Cancelable2 = RotatableDialog$Cancelable.FALSE;
        MessageType messageType = MessageType.NO_MESSAGE;
        THERMAL_WARNING = new DialogId("THERMAL_WARNING", 3, okWithCheckBoxDialogBuilder, messageDialogController$Priority, 2131689738, 2131689775, -1, 2131689975, -1, 2131492915, 2131296352, rotatableDialog$Cancelable, rotatableDialog$Cancelable2, MessageType.THERMAL_WARNING, true);
        THERMAL_CRITICAL = new DialogId("THERMAL_CRITICAL", 4, new OkDialogBuilder(), MessageDialogController$Priority.IMMEDIATELY, 2131689738, 2131689779, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        ERROR_IN_USE_BY_ANOTHER_APPLICATION = new DialogId("ERROR_IN_USE_BY_ANOTHER_APPLICATION", 5, new NoButtonDialogBuilder(), MessageDialogController$Priority.IMMEDIATELY, 2131689770, 2131689769, -1, -1, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        ERROR_USE_OF_CAMERA_RESTRICTED = new DialogId("ERROR_USE_OF_CAMERA_RESTRICTED", 6, new NoButtonDialogBuilder(), MessageDialogController$Priority.IMMEDIATELY, 2131689770, 2131690207, -1, -1, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        ERROR_UNKNOWN = new DialogId("ERROR_UNKNOWN", 7, new NoButtonDialogBuilder(), MessageDialogController$Priority.IMMEDIATELY, 2131689770, 2131689773, -1, -1, -1, -1, -1, RotatableDialog$Cancelable.USE_DEFAULT, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO = new DialogId("MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO", 8, new NoButtonDialogBuilder(), MessageDialogController$Priority.IMMEDIATELY, 2131689770, 2131689793, -1, -1, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_VIDEOSIZE_CHANGE = new DialogId("FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_VIDEOSIZE_CHANGE", 9, new OkCancelWithCheckBoxDialogBuilder(), MessageDialogController$Priority.LOW, 2131689690, 2131690215, -1, 2131689778, 2131689777, 2131492915, 2131296352, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.FOURK_STORAGE_EXPLANATORY_FOR_VIDEOSIZE, true);
        FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_DESTINATION_CHANGE = new DialogId("FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_DESTINATION_CHANGE", 10, new OkWithCheckBoxDialogBuilder(), MessageDialogController$Priority.LOW, 2131690058, 2131690212, -1, 2131689975, -1, 2131492915, 2131296352, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.FOURK_STORAGE_EXPLANATORY_FOR_DESTINATION, true);
        MEMORY_FULL_PROPOSE_CHANGE_TO_INTERNAL = new DialogId("MEMORY_FULL_PROPOSE_CHANGE_TO_INTERNAL", 11, new OkCancelDialogBuilder(), MessageDialogController$Priority.LOW, 2131690058, 2131689699, -1, 2131689778, 2131689777, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_INTERNAL = new DialogId("MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_INTERNAL", 12, new OkCancelDialogBuilder(), MessageDialogController$Priority.LOW, 2131690058, 2131689700, -1, 2131689778, 2131689777, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        MEMORY_FULL = new DialogId("MEMORY_FULL", 13, new OkDialogBuilder(), MessageDialogController$Priority.NORMAL, 2131689789, 2131689783, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        MEMORY_SD_UNAVAILABLE = new DialogId("MEMORY_SD_UNAVAILABLE", 14, new OkDialogBuilder(), MessageDialogController$Priority.NORMAL, 2131689789, 2131689790, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        MEMORY_FULL_PROPOSE_CHANGE_TO_SD = new DialogId("MEMORY_FULL_PROPOSE_CHANGE_TO_SD", 15, new OkCancelDialogBuilder(), MessageDialogController$Priority.LOW, 2131689789, 2131689696, -1, 2131689778, 2131689777, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        MEMORY_INTERNAL_UNAVAILABLE = new DialogId("MEMORY_INTERNAL_UNAVAILABLE", 16, new OkDialogBuilder(), MessageDialogController$Priority.NORMAL, 2131689789, 2131689788, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_SD = new DialogId("MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_SD", 17, new OkCancelDialogBuilder(), MessageDialogController$Priority.LOW, 2131689789, 2131689697, -1, 2131689778, 2131689777, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP = new DialogId("UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP", 18, new OkCancelDialogBuilder(), MessageDialogController$Priority.LOW, 2131689826, 2131689824, -1, 2131690206, 2131689666, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU = new DialogId("UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU", 19, new OkDialogBuilder(), MessageDialogController$Priority.LOW, 2131689826, 2131689825, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, true);
        COULD_NOT_SAVE_PHOTO = new DialogId("COULD_NOT_SAVE_PHOTO", 20, new NoButtonDialogBuilder(), MessageDialogController$Priority.IMMEDIATELY, 2131689770, 2131689771, -1, -1, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        COULD_NOT_START_RECORDING = new DialogId("COULD_NOT_START_RECORDING", 21, new NoButtonDialogBuilder(), MessageDialogController$Priority.IMMEDIATELY, 2131689770, 2131689772, -1, -1, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        COOLING_MODE = new DialogId("COOLING_MODE", 22, new OkAndListDialogBuilder(), MessageDialogController$Priority.NORMAL, 2131689707, 2131689705, 2131689706, 2131690202, -1, 2131492919, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        RESTRICT_PHOTO_RESOLUTION = new DialogId("RESTRICT_PHOTO_RESOLUTION", 23, new OkDialogBuilder(), MessageDialogController$Priority.LOW, 2131690037, 2131690040, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        RESTRICT_STEADYSHOT_VIDEO_RESOLUTION = new DialogId("RESTRICT_STEADYSHOT_VIDEO_RESOLUTION", 24, new OkDialogBuilder(), MessageDialogController$Priority.LOW, 2131690037, 2131690045, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        LOW_BATTERY_CRITICAL_ON_RECORDING = new DialogId("LOW_BATTERY_CRITICAL_ON_RECORDING", 25, new OkDialogBuilder(), MessageDialogController$Priority.IMMEDIATELY, 2131689738, 2131689725, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        LOW_BATTERY_CRITICAL_ON_PHOTO = new DialogId("LOW_BATTERY_CRITICAL_ON_PHOTO", 26, new OkDialogBuilder(), MessageDialogController$Priority.IMMEDIATELY, 2131689738, 2131689726, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        LOW_BATTERY_WARNING = new DialogId("LOW_BATTERY_WARNING", 27, new OkWithCheckBoxDialogBuilder(), MessageDialogController$Priority.NORMAL, 2131689738, 2131689724, -1, 2131689975, -1, 2131492915, 2131296352, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.BATTERY_WARNING, true);
        HIGH_SPEED_SD_RECOMMENDATION_ON_MODE_CHANGE = new DialogId("HIGH_SPEED_SD_RECOMMENDATION_ON_MODE_CHANGE", 28, new OkCancelWithCheckBoxDialogBuilder(), MessageDialogController$Priority.LOW, 2131689689, 2131690215, -1, 2131689778, 2131689777, 2131492915, 2131296352, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.STORAGE_EXPLANATORY, true);
        HIGH_SPEED_SD_RECOMMENDATION_ON_SETTING_CHANGE = new DialogId("HIGH_SPEED_SD_RECOMMENDATION_ON_SETTING_CHANGE", 29, new OkWithCheckBoxDialogBuilder(), MessageDialogController$Priority.LOW, 2131690058, 2131690214, -1, 2131689975, -1, 2131492915, 2131296352, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.STORAGE_EXPLANATORY_FOR_SETTING, true);
        RESTRICT_SLOW_VIDEO_RESOLUTION = new DialogId("RESTRICT_SLOW_VIDEO_RESOLUTION", 30, new OkDialogBuilder(), MessageDialogController$Priority.LOW, 2131690037, 2131690042, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        MEMORY_SD_UNAVAILABLE_FOR_CORRUPT = new DialogId("MEMORY_SD_UNAVAILABLE_FOR_CORRUPT", 31, new OkDialogBuilder(), MessageDialogController$Priority.IMMEDIATELY, 2131689789, 2131689790, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        MEMORY_FULL_IN_BURST_MODE = new DialogId("MEMORY_FULL_IN_BURST_MODE", 32, new OkDialogBuilder(), MessageDialogController$Priority.NORMAL, 2131689789, 2131689742, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        MAX_FILESIZE_REACHED = new DialogId("MAX_FILESIZE_REACHED", 33, new OkDialogBuilder(), MessageDialogController$Priority.NORMAL, 2131689789, 2131689942, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        MAX_DURATION_REACHED = new DialogId("MAX_DURATION_REACHED", 34, new OkDialogBuilder(), MessageDialogController$Priority.NORMAL, 2131689741, 2131689944, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.FALSE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        VIDEO_HDR_CAUTION = new DialogId("VIDEO_HDR_CAUTION", 35, new OkWithCheckBoxDialogBuilder(), MessageDialogController$Priority.NORMAL, 2131689738, 2131689743, -1, 2131689975, -1, 2131492915, 2131296352, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.VIDEO_HDR_CAUTION, false);
        VIDEO_HDR_RESTRICTION = new DialogId("VIDEO_HDR_RESTRICTION", 36, new OkDialogBuilder(), MessageDialogController$Priority.LOW, 2131690037, 2131690043, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT, MessageType.NO_MESSAGE, false);
        SIDE_SENSE_DISABLE_ON_LAUNCH = new DialogId("SIDE_SENSE_DISABLE_ON_LAUNCH", 37, new OkCancelDialogBuilder(), MessageDialogController$Priority.LOW, 2131690124, 2131690125, -1, 2131689975, 2131689666, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS = new DialogId("SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS", 38, new OkCancelDialogBuilder(), MessageDialogController$Priority.LOW, 2131690124, 2131690125, -1, 2131689975, 2131689666, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        DLG_INVALID = new DialogId("DLG_INVALID", 39, new OkDialogBuilder(), MessageDialogController$Priority.LOW, -1, -1, -1, -1, -1, -1, -1, RotatableDialog$Cancelable.FALSE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        RESET_CONFIRMATION = new DialogId("RESET_CONFIRMATION", 40, new OkCancelDialogBuilder(), MessageDialogController$Priority.NORMAL, 2131690033, 2131690032, -1, 2131689975, 2131689666, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        DESTINATION_TO_SAVE_CHANGED_INTERNAL = new DialogId("DESTINATION_TO_SAVE_CHANGED_INTERNAL", 41, new OkDialogBuilder(), MessageDialogController$Priority.LOW, 2131689738, 2131690101, -1, 2131689975, -1, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        REQUEST_SD_CARD_PERMISSION = new DialogId("REQUEST_SD_CARD_PERMISSION", 42, new OkCancelDialogBuilder(), MessageDialogController$Priority.LOW, 2131689738, 2131690099, -1, 2131689975, 2131689666, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        SD_CARD_PERMISSION_UNAVAILABLE = new DialogId("SD_CARD_PERMISSION_UNAVAILABLE", 43, new OkCancelDialogBuilder(), MessageDialogController$Priority.LOW, 2131690098, 2131690100, -1, 2131689975, 2131689666, -1, -1, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.NO_MESSAGE, false);
        PREDICTIVE_LAUNCH_DESCRIPTION = new DialogId("PREDICTIVE_LAUNCH_DESCRIPTION", 44, new OkWithCheckBoxDialogBuilder(), MessageDialogController$Priority.NORMAL, 2131690016, 2131690006, -1, 2131689975, -1, 2131492915, 2131296352, RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.FALSE, MessageType.PREDICTIVE_LAUNCH_DESCRIPTION, false);
        $VALUES = new DialogId[]{LOCATION_SERVICE_DISABLE_ON_LAUNCH, LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS, THERMAL_NOTE, THERMAL_WARNING, THERMAL_CRITICAL, ERROR_IN_USE_BY_ANOTHER_APPLICATION, ERROR_USE_OF_CAMERA_RESTRICTED, ERROR_UNKNOWN, MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO, FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_VIDEOSIZE_CHANGE, FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_DESTINATION_CHANGE, MEMORY_FULL_PROPOSE_CHANGE_TO_INTERNAL, MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_INTERNAL, MEMORY_FULL, MEMORY_SD_UNAVAILABLE, MEMORY_FULL_PROPOSE_CHANGE_TO_SD, MEMORY_INTERNAL_UNAVAILABLE, MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_SD, UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP, UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU, COULD_NOT_SAVE_PHOTO, COULD_NOT_START_RECORDING, COOLING_MODE, RESTRICT_PHOTO_RESOLUTION, RESTRICT_STEADYSHOT_VIDEO_RESOLUTION, LOW_BATTERY_CRITICAL_ON_RECORDING, LOW_BATTERY_CRITICAL_ON_PHOTO, LOW_BATTERY_WARNING, HIGH_SPEED_SD_RECOMMENDATION_ON_MODE_CHANGE, HIGH_SPEED_SD_RECOMMENDATION_ON_SETTING_CHANGE, RESTRICT_SLOW_VIDEO_RESOLUTION, MEMORY_SD_UNAVAILABLE_FOR_CORRUPT, MEMORY_FULL_IN_BURST_MODE, MAX_FILESIZE_REACHED, MAX_DURATION_REACHED, VIDEO_HDR_CAUTION, VIDEO_HDR_RESTRICTION, SIDE_SENSE_DISABLE_ON_LAUNCH, SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS, DLG_INVALID, RESET_CONFIRMATION, DESTINATION_TO_SAVE_CHANGED_INTERNAL, REQUEST_SD_CARD_PERMISSION, SD_CARD_PERMISSION_UNAVAILABLE, PREDICTIVE_LAUNCH_DESCRIPTION};
    }

    private DialogId(String str, int i, MessageDialogBuilder messageDialogBuilder, MessageDialogController$Priority messageDialogController$Priority, int i2, int i3, int i4, int i5, int i6, int i7, int i8, RotatableDialog$Cancelable rotatableDialog$Cancelable, RotatableDialog$Cancelable rotatableDialog$Cancelable2, MessageType messageType, boolean z) {
        this.builderType = messageDialogBuilder;
        this.priority = messageDialogController$Priority;
        this.titleResourceID = i2;
        if (messageType == MessageType.THERMAL_NOTE && BrandConfig.isVerizonBrand()) {
            i3 = 2131689740;
        }
        this.messageResourceID = i3;
        this.messageFooterResourceID = i4;
        this.positiveButtonResourceID = i5;
        this.negativeButtonResourceID = i6;
        this.layoutResourceID = i7;
        this.checkBoxResourceID = i8;
        this.isCancelable = rotatableDialog$Cancelable;
        this.isCancelableOnTouchOutside = rotatableDialog$Cancelable2;
        this.messageType = messageType;
        this.hasOnCheckBox = z;
    }

    public MessageType getMessageType() {
        return this.messageType;
    }
}
