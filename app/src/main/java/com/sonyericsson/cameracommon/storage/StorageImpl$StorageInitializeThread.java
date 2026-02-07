package com.sonyericsson.cameracommon.storage;

/* JADX INFO: loaded from: classes.dex */
class StorageImpl$StorageInitializeThread extends Thread {
    private static final String THREAD_NAME_STORAGE_INITIALIZE = "SM#initTask";
    final /* synthetic */ StorageImpl this$0;

    public StorageImpl$StorageInitializeThread(StorageImpl storageImpl) {
        this.this$0 = storageImpl;
        setName("SM#initTask");
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        StorageImpl.access$300(this.this$0);
    }
}
