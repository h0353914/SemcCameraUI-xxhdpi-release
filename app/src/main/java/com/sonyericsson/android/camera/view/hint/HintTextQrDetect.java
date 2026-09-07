package com.sonyericsson.android.camera.view.hint;

import com.sonyericsson.android.camera.R;

public class HintTextQrDetect extends HintTextContent {
    public enum MessageType {
        URL,
        WIFI,
        WIFI_NOT_SUPPORTED,
        MATTER,
        OTHER
    }

    public interface OnClickListener {
        void onClick();
    }

    private final MessageType mType;
    private final String mSubMessage;
    private final OnClickListener mOnClickListener;

    public HintTextQrDetect(MessageType messageType, String str, OnClickListener onClickListener) {
        this.mType = messageType;
        this.mSubMessage = str;
        this.mOnClickListener = onClickListener;
    }

    public MessageType getMessageType() {
        return this.mType;
    }

    public void onClick() {
        if (this.mOnClickListener != null) {
            this.mOnClickListener.onClick();
        }
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public int getMessageResourceId() {
        return R.string.cam_strings_qrcode_detect_title_txt;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public String getSubMessage() {
        return this.mSubMessage;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public int getButtonMessageResourceId() {
        return R.string.cam_strings_ok_txt;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public HintPriority getPriority() {
        return HintPriority.MIDDLE;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public long getTimedOutDuration() {
        return 5000L;
    }
}
