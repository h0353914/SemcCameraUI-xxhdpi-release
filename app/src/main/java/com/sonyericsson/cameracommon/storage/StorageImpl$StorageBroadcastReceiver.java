package com.sonyericsson.cameracommon.storage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.Iterator;

class StorageImpl$StorageBroadcastReceiver extends BroadcastReceiver {
    final /* synthetic */ StorageImpl this$0;

    private StorageImpl$StorageBroadcastReceiver(StorageImpl storageImpl) {
        this.this$0 = storageImpl;
    }

    /* synthetic */ StorageImpl$StorageBroadcastReceiver(StorageImpl storageImpl, StorageImpl$1 storageImpl$1) {
        this(storageImpl);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        String path = intent.getData().getPath();
        Storage$StorageType storageTypeFromPath = StorageUtil.getStorageTypeFromPath(path, context);
        CamLog.i("Action = " + action + ", Type = " + storageTypeFromPath + ", Path = " + path);
        if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
            notifyStorageStatusChanged(storageTypeFromPath, action, path);
            return;
        }
        if (action.equals("android.intent.action.MEDIA_UNMOUNTED")) {
            notifyStorageStatusChanged(storageTypeFromPath, action, path);
        } else if (action.equals("android.intent.action.MEDIA_EJECT")) {
            notifyStorageStatusChanged(storageTypeFromPath, action, path);
        } else if (action.equals("android.intent.action.MEDIA_SCANNER_FINISHED")) {
            notifyStorageStatusChanged(storageTypeFromPath, action, path);
        }
    }

    private void notifyStorageStatusChanged(Storage$StorageType storage$StorageType, String str, String str2) {
        boolean z;
        Iterator<Storage$StorageType> it = StorageUtil.getMountableStorageTypes().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (it.next() == storage$StorageType) {
                z = true;
                break;
            }
        }
        if (z) {
            if (this.this$0.isStorageReadable()) {
                if (str.equals("android.intent.action.MEDIA_SCANNER_FINISHED")) {
                    StorageImpl.access$100(this.this$0).checkAndNotifyStateChanged(storage$StorageType, true);
                }
                if (StorageImpl.access$200(this.this$0) != null) {
                    StorageImpl.access$200(this.this$0).updateStorageStateByAction(str, storage$StorageType);
                    return;
                }
                return;
            }
            CamLog.i("onReceive: storage is not activated.");
            return;
        }
        CamLog.i("StorageType is not mountable. action = " + str + " path=" + str2);
    }
}
