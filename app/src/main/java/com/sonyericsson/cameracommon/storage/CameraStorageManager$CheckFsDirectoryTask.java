package com.sonyericsson.cameracommon.storage;

import android.content.Context;
import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.concurrent.Callable;

class CameraStorageManager$CheckFsDirectoryTask implements Callable<CameraStorageManager$DetailStorageState> {
    private final Context context;
    private final boolean forceSdCardGrantedCheck;
    final /* synthetic */ CameraStorageManager this$0;
    private final Storage$StorageType type;

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ CameraStorageManager$DetailStorageState call() throws Exception {
        return call();
    }

    public CameraStorageManager$CheckFsDirectoryTask(CameraStorageManager cameraStorageManager, Context context, Storage$StorageType storage$StorageType, boolean z) {
        this.this$0 = cameraStorageManager;
        this.type = storage$StorageType;
        this.context = context;
        this.forceSdCardGrantedCheck = z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public CameraStorageManager$DetailStorageState call() throws Exception {
        CameraStorageManager$DetailStorageState cameraStorageManager$DetailStorageState = CameraStorageManager$DetailStorageState.MEMORY_READY;
        String pathFromType = StorageUtil.getPathFromType(this.type, this.context);
        if (this.type == Storage$StorageType.EXTERNAL_CARD) {
            if (this.forceSdCardGrantedCheck) {
                CamLog.i("CheckFsDirectoryTask [" + this.type + "] write check : E");
                Uri sdGrantedUri = this.this$0.getSdGrantedUri(this.context);
                if (sdGrantedUri != null) {
                    CameraStorageManager$GrantCheckResult cameraStorageManager$GrantCheckResultCheckSdCardGranted = StorageUtil.checkSdCardGranted(this.context, sdGrantedUri);
                    if (cameraStorageManager$GrantCheckResultCheckSdCardGranted == CameraStorageManager$GrantCheckResult.READ_ONLY) {
                        cameraStorageManager$DetailStorageState = CameraStorageManager$DetailStorageState.MEMORY_ERR_READ_ONLY;
                    } else if (cameraStorageManager$GrantCheckResultCheckSdCardGranted == CameraStorageManager$GrantCheckResult.GRANTED) {
                        StorageUtil.setSdCardGranted(this.context, sdGrantedUri);
                    } else {
                        cameraStorageManager$DetailStorageState = CameraStorageManager$DetailStorageState.MEMORY_UNGRANTED;
                        try {
                            this.context.getContentResolver().releasePersistableUriPermission(sdGrantedUri, 3);
                        } catch (SecurityException unused) {
                            CamLog.d("can not releasePersistableUriPermission");
                        }
                    }
                } else {
                    cameraStorageManager$DetailStorageState = CameraStorageManager$DetailStorageState.MEMORY_UNGRANTED;
                }
                CameraStorageManager.access$000(this.this$0).put(pathFromType, cameraStorageManager$DetailStorageState);
                CamLog.i("CheckFsDirectoryTask [" + this.type + "] write check : X");
            }
        } else if (CameraStorageManager.access$000(this.this$0).containsKey(pathFromType)) {
            cameraStorageManager$DetailStorageState = (CameraStorageManager$DetailStorageState) CameraStorageManager.access$000(this.this$0).get(pathFromType);
        } else {
            CamLog.i("CheckFsDirectoryTask [" + this.type + "] write check : E");
            if (pathFromType == null) {
                CamLog.e("storage path is null");
                cameraStorageManager$DetailStorageState = CameraStorageManager$DetailStorageState.MEMORY_NO_DCIM;
            } else if (!DcfPathBuilder.checkAndCreateDirectory(pathFromType)) {
                cameraStorageManager$DetailStorageState = CameraStorageManager$DetailStorageState.MEMORY_NO_DCIM;
            } else if (!DcfPathBuilder.checkWritable(pathFromType)) {
                cameraStorageManager$DetailStorageState = CameraStorageManager$DetailStorageState.MEMORY_ERR_READ_ONLY;
            }
            CameraStorageManager.access$000(this.this$0).put(pathFromType, cameraStorageManager$DetailStorageState);
            CamLog.i("CheckFsDirectoryTask [" + this.type + "] write check : X");
        }
        return (cameraStorageManager$DetailStorageState == CameraStorageManager$DetailStorageState.MEMORY_READY && DcfPathBuilder.isAlreadyLastFileExist(pathFromType)) ? CameraStorageManager$DetailStorageState.MEMORY_ERR_FULL_COUNT : cameraStorageManager$DetailStorageState;
    }
}
