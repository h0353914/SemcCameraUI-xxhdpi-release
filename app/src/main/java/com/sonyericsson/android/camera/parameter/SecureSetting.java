package com.sonyericsson.android.camera.parameter;

import android.content.Context;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.util.ArrayMap;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveLaunch;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import java.util.Map;

class SecureSetting {
    private static final String KEY_LIFT_TRIGGER = "camera_lift_trigger_enabled";
    private static final Map<UserSettingKey, String> KEY_MAP = new ArrayMap();
    private final Context mContext;

    static {
        KEY_MAP.put(UserSettingKey.PREDICTIVE_LAUNCH, KEY_LIFT_TRIGGER);
    }

    public SecureSetting(@NonNull Context context) {
        this.mContext = context;
    }

    public void set(@NonNull UserSettingValue userSettingValue) throws IllegalArgumentException {
        if (!userSettingValue.getKey().isSecureSetting()) {
            throw new IllegalArgumentException("Should not be saved to SecureSetting: key = " + userSettingValue.getKey());
        }
        if (!KEY_MAP.containsKey(userSettingValue.getKey())) {
            throw new IllegalArgumentException("Cannot handle this key : key = " + userSettingValue.getKey());
        }
        String secureValue;
        switch (userSettingValue.getKey()) {
            case PREDICTIVE_LAUNCH:
                secureValue = ((PredictiveLaunch) userSettingValue).getSecureValue();
                break;
            default:
                secureValue = null;
                break;
        }
        if (secureValue != null) {
            Settings.Secure.putString(this.mContext.getContentResolver(), KEY_MAP.get(userSettingValue.getKey()), secureValue);
        }
    }

    public void clear() throws IllegalArgumentException {
        set(PredictiveLaunch.getDefaultValue());
    }
}
