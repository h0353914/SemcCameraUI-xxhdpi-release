package android.arch.core.internal;

import android.support.annotation.NonNull;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
class SafeIterableMap$IteratorWithAdditions<K, V> implements Iterator<Map$Entry<K, V>>, SafeIterableMap$SupportRemove<K, V> {
    private boolean mBeforeStart;
    private SafeIterableMap$Entry<K, V> mCurrent;
    final /* synthetic */ SafeIterableMap this$0;

    private SafeIterableMap$IteratorWithAdditions(SafeIterableMap safeIterableMap) {
        this.this$0 = safeIterableMap;
        this.mBeforeStart = true;
    }

    /* synthetic */ SafeIterableMap$IteratorWithAdditions(SafeIterableMap safeIterableMap, SafeIterableMap$1 safeIterableMap$1) {
        this(safeIterableMap);
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return next();
    }

    @Override // android.arch.core.internal.SafeIterableMap$SupportRemove
    public void supportRemove(@NonNull SafeIterableMap$Entry<K, V> safeIterableMap$Entry) {
        if (safeIterableMap$Entry == this.mCurrent) {
            this.mCurrent = this.mCurrent.mPrevious;
            this.mBeforeStart = this.mCurrent == null;
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.mBeforeStart ? SafeIterableMap.access$100(this.this$0) != null : (this.mCurrent == null || this.mCurrent.mNext == null) ? false : true;
    }

    @Override // java.util.Iterator
    public Map$Entry<K, V> next() {
        if (this.mBeforeStart) {
            this.mBeforeStart = false;
            this.mCurrent = SafeIterableMap.access$100(this.this$0);
        } else {
            this.mCurrent = this.mCurrent != null ? this.mCurrent.mNext : null;
        }
        return this.mCurrent;
    }
}
