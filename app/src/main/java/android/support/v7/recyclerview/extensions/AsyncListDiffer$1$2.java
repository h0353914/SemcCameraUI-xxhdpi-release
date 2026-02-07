package android.support.v7.recyclerview.extensions;

import android.support.v7.util.DiffUtil$DiffResult;

/* JADX INFO: loaded from: classes.dex */
class AsyncListDiffer$1$2 implements Runnable {
    final /* synthetic */ AsyncListDiffer$1 this$1;
    final /* synthetic */ DiffUtil$DiffResult val$result;

    AsyncListDiffer$1$2(AsyncListDiffer$1 asyncListDiffer$1, DiffUtil$DiffResult diffUtil$DiffResult) {
        this.this$1 = asyncListDiffer$1;
        this.val$result = diffUtil$DiffResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$1.this$0.mMaxScheduledGeneration == this.this$1.val$runGeneration) {
            this.this$1.this$0.latchList(this.this$1.val$newList, this.val$result);
        }
    }
}
