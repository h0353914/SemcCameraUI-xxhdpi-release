package android.support.v7.recyclerview.extensions;

import android.support.annotation.Nullable;
import android.support.v7.util.DiffUtil$Callback;

/* JADX INFO: loaded from: classes.dex */
class AsyncListDiffer$1$1 extends DiffUtil$Callback {
    final /* synthetic */ AsyncListDiffer$1 this$1;

    AsyncListDiffer$1$1(AsyncListDiffer$1 asyncListDiffer$1) {
        this.this$1 = asyncListDiffer$1;
    }

    @Override // android.support.v7.util.DiffUtil$Callback
    public int getOldListSize() {
        return this.this$1.val$oldList.size();
    }

    @Override // android.support.v7.util.DiffUtil$Callback
    public int getNewListSize() {
        return this.this$1.val$newList.size();
    }

    @Override // android.support.v7.util.DiffUtil$Callback
    public boolean areItemsTheSame(int i, int i2) {
        Object obj = this.this$1.val$oldList.get(i);
        Object obj2 = this.this$1.val$newList.get(i2);
        if (obj == null || obj2 == null) {
            return obj == null && obj2 == null;
        }
        return this.this$1.this$0.mConfig.getDiffCallback().areItemsTheSame(obj, obj2);
    }

    @Override // android.support.v7.util.DiffUtil$Callback
    public boolean areContentsTheSame(int i, int i2) {
        Object obj = this.this$1.val$oldList.get(i);
        Object obj2 = this.this$1.val$newList.get(i2);
        if (obj != null && obj2 != null) {
            return this.this$1.this$0.mConfig.getDiffCallback().areContentsTheSame(obj, obj2);
        }
        if (obj == null && obj2 == null) {
            return true;
        }
        throw new AssertionError();
    }

    @Override // android.support.v7.util.DiffUtil$Callback
    @Nullable
    public Object getChangePayload(int i, int i2) {
        Object obj = this.this$1.val$oldList.get(i);
        Object obj2 = this.this$1.val$newList.get(i2);
        if (obj != null && obj2 != null) {
            return this.this$1.this$0.mConfig.getDiffCallback().getChangePayload(obj, obj2);
        }
        throw new AssertionError();
    }
}
