package com.sonyericsson.cameracommon.mediasaving;

import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import android.support.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StorageManagerProxy {
    private static Method mMethodGetVolumes;
    private static Class<?> mStorageTypeClass;
    private static HashMap<Object, StorageManagerProxy$StorageType> mStorageTypeInverseMap;
    private static HashMap<StorageManagerProxy$StorageType, Object> mStorageTypeMap;
    private StorageManager mStorageManager;

    static {
        try {
            mMethodGetVolumes = StorageManager.class.getMethod("getVolumes", new Class[0]);
            try {
                mStorageTypeClass = Class.forName("android.os.storage.StorageManager$StorageType");
                if (mStorageTypeClass.getEnumConstants() != null) {
                    for (Object obj : mStorageTypeClass.getEnumConstants()) {
                        StorageManagerProxy$StorageType[] storageManagerProxy$StorageTypeArrValues = StorageManagerProxy$StorageType.values();
                        int length = storageManagerProxy$StorageTypeArrValues.length;
                        int i = 0;
                        while (true) {
                            if (i < length) {
                                StorageManagerProxy$StorageType storageManagerProxy$StorageType = storageManagerProxy$StorageTypeArrValues[i];
                                if (storageManagerProxy$StorageType.name().equals(obj.toString())) {
                                    if (mStorageTypeMap == null) {
                                        mStorageTypeMap = new HashMap<>();
                                        mStorageTypeInverseMap = new HashMap<>();
                                    }
                                    mStorageTypeMap.put(storageManagerProxy$StorageType, obj);
                                    mStorageTypeInverseMap.put(obj, storageManagerProxy$StorageType);
                                } else {
                                    i++;
                                }
                            }
                        }
                    }
                }
                if (mStorageTypeMap == null || !(mStorageTypeMap.isEmpty() || mStorageTypeMap.size() == StorageManagerProxy$StorageType.values().length)) {
                    throw new RuntimeException("Support StorageType is not expected");
                }
            } catch (ClassNotFoundException unused) {
            }
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    public static StorageManagerProxy createProxy(StorageManager storageManager) {
        return new StorageManagerProxy(storageManager);
    }

    private StorageManagerProxy(StorageManager storageManager) {
        this.mStorageManager = storageManager;
    }

    @NonNull
    public List<VolumeInfo> getVolumes() {
        try {
            return (List) mMethodGetVolumes.invoke(this.mStorageManager, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }
}
