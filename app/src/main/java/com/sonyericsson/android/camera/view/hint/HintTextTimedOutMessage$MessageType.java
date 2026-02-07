package com.sonyericsson.android.camera.view.hint;

/* JADX INFO: loaded from: classes.dex */
public enum HintTextTimedOutMessage$MessageType {
    CANNOT_BURST_DUE_TO_LOW_BATTERY(2131689651, HintTextContent$HintPriority.HIGH, true),
    CANNOT_BURST_IN_DARK_CONDITION(2131689654, HintTextContent$HintPriority.HIGH, true),
    BURST_CHANGE_CAMERA_KEY_SETTING(2131689653, HintTextContent$HintPriority.HIGH, true),
    CANNOT_BURST_USING_FRONT_CAMERA(2131689655, HintTextContent$HintPriority.HIGH, true),
    CANNOT_BURST_DUE_TO_FUSION_MODE(2131689656, HintTextContent$HintPriority.HIGH, true),
    BURST_IMAGES_ARE_SAVED_TO_INTERNAL_STORAGE(2131689657, HintTextContent$HintPriority.HIGH, true),
    ZOOM_NOT_AVAILABLE(2131690263, HintTextContent$HintPriority.HIGH, true),
    ISO_CHANGED_BY_FUSION(2131689926, HintTextContent$HintPriority.HIGH, true);

    private final boolean mIsToast;
    private final int mMessageResourceId;
    private final HintTextContent$HintPriority mPriority;

    static /* synthetic */ boolean access$000(HintTextTimedOutMessage$MessageType hintTextTimedOutMessage$MessageType) {
        return hintTextTimedOutMessage$MessageType.mIsToast;
    }

    static /* synthetic */ HintTextContent$HintPriority access$100(HintTextTimedOutMessage$MessageType hintTextTimedOutMessage$MessageType) {
        return hintTextTimedOutMessage$MessageType.mPriority;
    }

    static /* synthetic */ int access$200(HintTextTimedOutMessage$MessageType hintTextTimedOutMessage$MessageType) {
        return hintTextTimedOutMessage$MessageType.mMessageResourceId;
    }

    HintTextTimedOutMessage$MessageType(int i, HintTextContent$HintPriority hintTextContent$HintPriority, boolean z) {
        this.mMessageResourceId = i;
        this.mPriority = hintTextContent$HintPriority;
        this.mIsToast = z;
    }
}
