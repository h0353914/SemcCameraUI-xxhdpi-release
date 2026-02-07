package com.sonyericsson.cameracommon.storage;

/* JADX INFO: loaded from: classes.dex */
class SavingTaskManager$ImageToFile$1 implements Runnable {
    final /* synthetic */ SavingTaskManager$ImageToFile this$1;
    final /* synthetic */ Storage$StorageType val$type;

    SavingTaskManager$ImageToFile$1(SavingTaskManager$ImageToFile savingTaskManager$ImageToFile, Storage$StorageType storage$StorageType) {
        this.this$1 = savingTaskManager$ImageToFile;
        this.val$type = storage$StorageType;
    }

    @Override // java.lang.Runnable
    public void run() {
        SavingTaskManager.access$200(this.this$1.this$0).checkRemain(true, this.val$type);
    }
}
