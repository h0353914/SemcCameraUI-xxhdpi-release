package com.sonyericsson.android.camera.setting;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.parameter.ModeIndependentParams;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.cameracommon.storage.Storage;
import java.util.Map;

public interface UserSettingsLoader {
    void clearMasterData();

    SharedPreferencesAccessor getSharedPreferencesAccessor();

    Parameters getUserSettingParameters(Context context, CapturingMode capturingMode, Storage storage, Configurations configurations, boolean z, ModeIndependentParams modeIndependentParams, boolean z2);

    void load();

    void registerLoadCompletedListener(UserSettingsLoader$OnLoadCompletedListener userSettingsLoader$OnLoadCompletedListener);

    void release();

    void save(Map<CapturingMode, Parameters> map, CapturingMode capturingMode);

    void unregisterLoadCompletedListener(UserSettingsLoader$OnLoadCompletedListener userSettingsLoader$OnLoadCompletedListener);
}
