package kotlin.collections;

import java.util.Enumeration;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: IteratorsJVM.kt */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0015\n\u0000\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004H\u0096\u0002J\u000e\u0010\u0005\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"kotlin/collections/CollectionsKt__IteratorsJVMKt$iterator$1", "", "(Ljava/util/Enumeration;)V", "hasNext", "", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
public final class CollectionsKt__IteratorsJVMKt$iterator$1<T> implements Iterator<T>, KMappedMarker {
    final /* synthetic */ Enumeration receiver$0;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    CollectionsKt__IteratorsJVMKt$iterator$1(Enumeration<T> enumeration) {
        this.receiver$0 = enumeration;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.receiver$0.hasMoreElements();
    }

    @Override // java.util.Iterator
    public T next() {
        return (T) this.receiver$0.nextElement();
    }
}
