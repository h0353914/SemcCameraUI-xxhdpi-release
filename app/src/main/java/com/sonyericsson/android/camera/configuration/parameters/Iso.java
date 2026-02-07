package com.sonyericsson.android.camera.configuration.parameters;

import android.graphics.Rect;
import android.util.Range;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.capability.CameraCapabilityList;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public enum Iso implements UserSettingValue {
    ISO_AUTO(-1, 2131689894, "auto", -1),
    ISO_50(-1, 2131689922, "iso-prio", 50),
    ISO_100(-1, 2131689915, "iso-prio", 100),
    ISO_200(-1, 2131689918, "iso-prio", 200),
    ISO_400(-1, 2131689921, "iso-prio", 400),
    ISO_800(-1, 2131689925, "iso-prio", 800),
    ISO_1600(-1, 2131689917, "iso-prio", 1600),
    ISO_3200(-1, 2131689920, "iso-prio", 3200),
    ISO_6400(-1, 2131689924, "iso-prio", 6400),
    ISO_12800(-1, 2131689916, "iso-prio", 12800),
    ISO_25600(-1, 2131689919, "iso-prio", 25600),
    ISO_51200(-1, 2131689923, "iso-prio", 51200);

    public static final String TAG = "Iso";
    private static int mIndexOfDefault = 1;
    private static final int sParameterTextId = 2131689928;
    private final String mAeMode;
    private final int mIconId;
    private final int mIsoValue;
    private final int mTextId;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131689928;
    }

    Iso(int i, int i2, String str, int i3) {
        this.mIconId = i;
        this.mTextId = i2;
        this.mAeMode = str;
        this.mIsoValue = i3;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.ISO;
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
        return this.mAeMode;
    }

    public int getIsoValue() {
        return this.mIsoValue;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }

    public static int getIndexOfDefault() {
        return mIndexOfDefault;
    }

    public static Iso[] getOptions(CapturingMode capturingMode, Resolution resolution, FusionMode fusionMode) {
        Range<Integer> range;
        int isoValue;
        ArrayList arrayList = new ArrayList();
        CameraCapabilityList cameraCapability = PlatformCapability.getCameraCapability(capturingMode.getCameraId());
        List<String> list = cameraCapability.AE.get();
        if (list.isEmpty()) {
            return (Iso[]) arrayList.toArray(new Iso[0]);
        }
        if (list.contains(ISO_AUTO.getValue())) {
            arrayList.add(ISO_AUTO);
        }
        if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.SUPERIOR_FRONT || capturingMode == CapturingMode.FRONT_PHOTO || capturingMode.getType() == 2) {
            return (Iso[]) arrayList.toArray(new Iso[0]);
        }
        if (!list.contains("iso-prio")) {
            return (Iso[]) arrayList.toArray(new Iso[0]);
        }
        switch (Iso$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FusionMode[fusionMode.ordinal()]) {
            case 1:
                range = new Range<>(Integer.valueOf(Math.min(((Integer) cameraCapability.ISO_RANGE.get().getLower()).intValue(), ((Integer) cameraCapability.FUSION_ISO_RANGE.get().getLower()).intValue())), Integer.valueOf(Math.max(((Integer) cameraCapability.ISO_RANGE.get().getUpper()).intValue(), ((Integer) cameraCapability.FUSION_ISO_RANGE.get().getUpper()).intValue())));
                isoValue = ISO_1600.getIsoValue();
                break;
            case 2:
                range = cameraCapability.FUSION_ISO_RANGE.get();
                isoValue = ISO_1600.getIsoValue();
                break;
            default:
                range = cameraCapability.ISO_RANGE.get();
                isoValue = ISO_100.getIsoValue();
                break;
        }
        for (Iso iso : values()) {
            if (iso.getIsoValue() >= ((Integer) range.getLower()).intValue() && iso.getIsoValue() <= ((Integer) range.getUpper()).intValue() && canBeManuallySetWith(capturingMode, resolution)) {
                arrayList.add(iso);
                if (iso.getIsoValue() <= isoValue) {
                    mIndexOfDefault = arrayList.size() - 1;
                }
            }
        }
        return (Iso[]) arrayList.toArray(new Iso[0]);
    }

    public static boolean canBeManuallySetWith(CapturingMode capturingMode, Resolution resolution) {
        for (Rect rect : PlatformCapability.getCameraCapability(capturingMode.getCameraId()).MANUAL_ISO_SUPPORTED_PICTURE_SIZE.get()) {
            if (rect.width() == resolution.getPictureRect().width() && rect.height() == resolution.getPictureRect().height()) {
                return true;
            }
        }
        return false;
    }

    public static Iso adjustToSupportedValue(Iso iso, Iso[] isoArr) {
        if ((iso == ISO_AUTO || isoArr.length == 1) && isoArr[0] == ISO_AUTO) {
            return ISO_AUTO;
        }
        char c = isoArr[0] == ISO_AUTO ? (char) 1 : (char) 0;
        if (iso.getIsoValue() < isoArr[c].getIsoValue()) {
            return isoArr[c];
        }
        return iso.getIsoValue() > isoArr[isoArr.length - 1].getIsoValue() ? isoArr[isoArr.length - 1] : iso;
    }
}
