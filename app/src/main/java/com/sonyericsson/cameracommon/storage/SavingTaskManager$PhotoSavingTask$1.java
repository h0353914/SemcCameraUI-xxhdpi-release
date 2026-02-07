package com.sonyericsson.cameracommon.storage;

/* JADX INFO: loaded from: classes.dex */
class SavingTaskManager$PhotoSavingTask$1 implements Runnable {
    final /* synthetic */ SavingTaskManager$PhotoSavingTask this$1;
    final /* synthetic */ Storage$StorageType val$type;

    SavingTaskManager$PhotoSavingTask$1(SavingTaskManager$PhotoSavingTask savingTaskManager$PhotoSavingTask, Storage$StorageType storage$StorageType) {
        this.this$1 = savingTaskManager$PhotoSavingTask;
        this.val$type = storage$StorageType;
    }

    @Override // java.lang.Runnable
    public void run() {
        SavingTaskManager.access$200(this.this$1.this$0).checkRemain(true, this.val$type);
    }
}
