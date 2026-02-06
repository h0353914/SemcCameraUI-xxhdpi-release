package com.sonyericsson.android.camera.setting;

public interface MessageSettings {
    void clearSavedMessageSettings();

    int getDisplayCount(MessageType messageType);

    boolean isNeverShow(MessageType messageType);

    void save();

    void setDisplayCount(MessageType messageType, int i);

    void setNeverShow(MessageType messageType, boolean z);
}
