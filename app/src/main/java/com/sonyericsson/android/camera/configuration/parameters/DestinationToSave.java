package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import java.util.List;

public enum DestinationToSave implements UserSettingValue {
    EMMC(2131231018, 2131690056, Storage$StorageType.INTERNAL, null),
    SDCARD(2131231019, 2131690057, Storage$StorageType.EXTERNAL_CARD, null),
    INTERNAL_MASS_STORAGE(2131231018, 2131690056, Storage$StorageType.INTERNAL, EMMC),
    MEMORY_CARD(2131231019, 2131690057, Storage$StorageType.EXTERNAL_CARD, SDCARD);

    public static final String TAG = "DestinationToSave";
    private static int sParameterTextId = 2131690059;
    private final DestinationToSave mCompatibleValue;
    private int mIconId;
    private boolean mIsEquipped = false;
    private int mTextId;
    private Storage$StorageType mType;
    private static DestinationToSave sPrimaryStorage = EMMC;

    public static final void preload() {
    }

    DestinationToSave(int i, int i2, Storage$StorageType storage$StorageType, DestinationToSave destinationToSave) {
        this.mIconId = i;
        this.mTextId = i2;
        this.mType = storage$StorageType;
        this.mCompatibleValue = destinationToSave;
    }

    public static void setMountPoint(List<Storage$StorageType> list) {
        for (Storage$StorageType storage$StorageType : list) {
            if (CamLog.VERBOSE) {
                CamLog.d("setMountPoint: type: " + storage$StorageType);
            }
            DestinationToSave[] destinationToSaveArrValues = values();
            int length = destinationToSaveArrValues.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    DestinationToSave destinationToSave = destinationToSaveArrValues[i];
                    if (destinationToSave.mCompatibleValue == null && storage$StorageType == destinationToSave.getType()) {
                        destinationToSave.mIsEquipped = true;
                        if (CamLog.VERBOSE) {
                            CamLog.d("setMountPoint: valid mount point: " + destinationToSave);
                        }
                    } else {
                        i++;
                    }
                }
            }
        }
        updatePrimaryStorage();
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.DESTINATION_TO_SAVE;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return sParameterTextId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
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
        return this.mType.toString();
    }

    private boolean isEquipped() {
        return this.mIsEquipped;
    }

    public static DestinationToSave getValueFromType(Storage$StorageType storage$StorageType) {
        if (storage$StorageType == null) {
            return null;
        }
        for (DestinationToSave destinationToSave : values()) {
            if (storage$StorageType == destinationToSave.getType()) {
                if (CamLog.VERBOSE) {
                    CamLog.d("getValueFromType: type: " + storage$StorageType + ", value : " + destinationToSave);
                }
                return destinationToSave;
            }
        }
        return null;
    }

    public static DestinationToSave[] getOptions() {
        return new DestinationToSave[]{EMMC, SDCARD};
    }

    public Storage$StorageType getType() {
        return this.mType;
    }

    private static void updatePrimaryStorage() {
        if (EMMC.isEquipped() || !SDCARD.isEquipped()) {
            return;
        }
        sPrimaryStorage = SDCARD;
    }

    public static DestinationToSave getPrimaryStorage() {
        return sPrimaryStorage;
    }
}
