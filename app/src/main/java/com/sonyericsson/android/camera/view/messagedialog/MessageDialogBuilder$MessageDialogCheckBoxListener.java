package com.sonyericsson.android.camera.view.messagedialog;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.android.camera.setting.MessageType;

protected class MessageDialogBuilder$MessageDialogCheckBoxListener implements CompoundButton$OnCheckedChangeListener, Runnable {
    private boolean mIsItemChecked = false;
    private final MessageSettings mMessageSettings;
    private final MessageType mMessageType;

    public MessageDialogBuilder$MessageDialogCheckBoxListener(MessageSettings messageSettings, MessageType messageType) {
        this.mMessageSettings = messageSettings;
        this.mMessageType = messageType;
    }

    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.mIsItemChecked = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.mMessageSettings.setNeverShow(this.mMessageType, this.mIsItemChecked);
        this.mMessageSettings.save();
    }
}
