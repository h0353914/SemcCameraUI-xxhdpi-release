package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public enum DisplayFlash implements UserSettingValue {
    DISPLAY_AUTO(2131231047, 2131690114, "display-auto"),
    DISPLAY_ON(2131231048, 2131689836, "display-on"),
    DISPLAY_OFF(2131231049, 2131690115, "off");

    public static final String TAG = "DisplayFlash";
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    DisplayFlash(int i, int i2, String str) {
        this.mIconId = i;
        this.mTextId = i2;
        this.mValue = str;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.DISPLAY_FLASH;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getTextId() {
        return this.mTextId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getValue() {
        return this.mValue;
    }

    public static DisplayFlash[] getOptions(ActionMode actionMode) {
        ArrayList arrayList = new ArrayList();
        if (actionMode.mType == 1) {
            List<String> list = PlatformCapability.getCameraCapability(actionMode.mCameraId).FLASH.get();
            if (!list.isEmpty()) {
                for (DisplayFlash displayFlash : LedOptionsResolver.getInstance().getDisplayFlashOptions(actionMode, list)) {
                    Iterator<String> it = list.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (displayFlash.getValue().equals(it.next())) {
                                arrayList.add(displayFlash);
                                break;
                            }
                        }
                    }
                }
            }
        }
        return (DisplayFlash[]) arrayList.toArray(new DisplayFlash[0]);
    }

    public static boolean isSupported(CameraInfo$CameraId cameraInfo$CameraId) {
        return PlatformCapability.isDisplayFlashModeSupported(cameraInfo$CameraId);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return LedOptionsResolver.getInstance().getParameterKeyTextId();
    }

    public static DisplayFlash getDisplayFlashFromParameterString(String str) {
        for (DisplayFlash displayFlash : values()) {
            if (displayFlash.getValue().equals(str)) {
                return displayFlash;
            }
        }
        return null;
    }

    public static DisplayFlash getDefaultValue() {
        return LedOptionsResolver.getInstance().getDefaultDisplayFlash();
    }

    public static int getParameterKeyTitleTextId() {
        return LedOptionsResolver.getInstance().getParameterKeyTitleTextId();
    }
}
