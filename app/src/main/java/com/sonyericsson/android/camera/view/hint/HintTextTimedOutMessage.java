package com.sonyericsson.android.camera.view.hint;

public class HintTextTimedOutMessage extends HintTextContent {
    private static final int FADE_OUT_DURATION = 1000;
    private static final int SHOW_DURATION = 5000;
    private final boolean mIsToast;
    private final HintTextTimedOutMessage$MessageType mType;

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public int getButtonMessageResourceId() {
        return -1;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public int getFadeDuration() {
        return 1000;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public long getTimedOutDuration() {
        return 5000L;
    }

    public HintTextTimedOutMessage(HintTextTimedOutMessage$MessageType hintTextTimedOutMessage$MessageType) {
        this.mType = hintTextTimedOutMessage$MessageType;
        this.mIsToast = HintTextTimedOutMessage$MessageType.access$000(this.mType);
        this.mTransparentBackground = false;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public String getTag() {
        return createTag(this.mType);
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public boolean isToast() {
        return this.mIsToast;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public HintTextContent$HintPriority getPriority() {
        return HintTextTimedOutMessage$MessageType.access$100(this.mType);
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public int getMessageResourceId() {
        return HintTextTimedOutMessage$MessageType.access$200(this.mType);
    }

    public static String createTag(HintTextTimedOutMessage$MessageType hintTextTimedOutMessage$MessageType) {
        return HintTextTimedOutMessage.class.getSimpleName() + ":" + hintTextTimedOutMessage$MessageType;
    }
}
