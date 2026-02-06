package com.sonyericsson.cameracommon.storage;

import android.os.StatFs;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.concurrent.Callable;

public class StorageUtil$GetStatFsTask implements Callable<StatFs> {
    private final String mPath;

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ StatFs call() throws Exception {
        return call();
    }

    public StorageUtil$GetStatFsTask(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Target path is null.");
        }
        this.mPath = str;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public StatFs call() {
        try {
            return new StatFs(this.mPath);
        } catch (IllegalArgumentException e) {
            CamLog.e("Create StatFs failed.", e);
            return null;
        }
    }
}
