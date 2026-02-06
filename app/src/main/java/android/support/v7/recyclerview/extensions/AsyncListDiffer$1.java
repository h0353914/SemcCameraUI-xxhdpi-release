package android.support.v7.recyclerview.extensions;

import android.support.v7.util.DiffUtil;
import java.util.List;

class AsyncListDiffer$1 implements Runnable {
    final /* synthetic */ AsyncListDiffer this$0;
    final /* synthetic */ List val$newList;
    final /* synthetic */ List val$oldList;
    final /* synthetic */ int val$runGeneration;

    AsyncListDiffer$1(AsyncListDiffer asyncListDiffer, List list, List list2, int i) {
        this.this$0 = asyncListDiffer;
        this.val$oldList = list;
        this.val$newList = list2;
        this.val$runGeneration = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.mMainThreadExecutor.execute(new AsyncListDiffer$1$2(this, DiffUtil.calculateDiff(new AsyncListDiffer$1$1(this))));
    }
}
