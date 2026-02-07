package com.sonyericsson.cameracommon.storage;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
class SavingTaskManager$1 implements SavingTaskInquiry {
    final /* synthetic */ SavingTaskManager this$0;

    SavingTaskManager$1(SavingTaskManager savingTaskManager) {
        this.this$0 = savingTaskManager;
    }

    @Override // com.sonyericsson.cameracommon.storage.SavingTaskInquiry
    public long getReservedSize(Storage$StorageType storage$StorageType) {
        long jAccess$100 = 0;
        if (SavingTaskManager.access$000(this.this$0).containsKey(storage$StorageType)) {
            Iterator it = new LinkedList((Collection) SavingTaskManager.access$000(this.this$0).get(storage$StorageType)).iterator();
            while (it.hasNext()) {
                jAccess$100 += (long) SavingTaskManager$PhotoSavingTask.access$100((SavingTaskManager$PhotoSavingTask) it.next());
            }
        }
        return jAccess$100;
    }
}
