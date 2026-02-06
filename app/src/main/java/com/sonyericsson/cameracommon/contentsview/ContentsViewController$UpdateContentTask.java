package com.sonyericsson.cameracommon.contentsview;

import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.storage.StorageUtil;

class ContentsViewController$UpdateContentTask implements Runnable {
    private final Storage$StorageState mChangedStorageState;
    private final Storage$StorageType mChangedStorageType;
    final /* synthetic */ ContentsViewController this$0;

    ContentsViewController$UpdateContentTask(ContentsViewController contentsViewController, Storage$StorageType storage$StorageType, Storage$StorageState storage$StorageState) {
        this.this$0 = contentsViewController;
        this.mChangedStorageType = storage$StorageType;
        this.mChangedStorageState = storage$StorageState;
    }

    @Override // java.lang.Runnable
    public void run() {
        ContentsViewController.access$200(this.this$0).remove(this);
        if (ContentsViewController.access$300(this.this$0) == null || ContentsViewController.access$300(this.this$0).getLocalCache() == null) {
            return;
        }
        if (!(this.mChangedStorageState == Storage$StorageState.AVAILABLE || this.mChangedStorageState == Storage$StorageState.AVAILABLE_NEAR_FULL || this.mChangedStorageState == Storage$StorageState.FULL || this.mChangedStorageState == Storage$StorageState.READ_ONLY) && ContentsViewController.access$300(this.this$0).getLocalCache().size() > 0 && StorageUtil.getStorageTypeFromPath(ContentsViewController.access$300(this.this$0).getLocalCache().getFirst().mOriginalPath, ContentsViewController.access$400(this.this$0)) == this.mChangedStorageType) {
            this.this$0.clearContents();
        }
        if (this.this$0.isLoading()) {
            return;
        }
        this.this$0.reload();
    }
}
