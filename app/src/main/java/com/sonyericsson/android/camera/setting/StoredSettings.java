package com.sonyericsson.android.camera.setting;

import com.sonyericsson.cameracommon.storage.Storage;

public interface StoredSettings {
    void clearAllSettings(Storage storage);

    LastSettings getLastSettings();

    MessageSettings getMessageSettings();

    UiControlSettings getUiControlSettings();

    UserSettings getUserSettings();
}
