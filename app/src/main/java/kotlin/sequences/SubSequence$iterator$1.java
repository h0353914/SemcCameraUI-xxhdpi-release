package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: Sequences.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000#\n\u0000\n\u0002\u0010(\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\rH\u0002J\t\u0010\u000e\u001a\u00020\u000fH\u0096\u0002J\u000e\u0010\u0010\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0011R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"kotlin/sequences/SubSequence$iterator$1", "", "(Lkotlin/sequences/SubSequence;)V", "iterator", "getIterator", "()Ljava/util/Iterator;", "position", "", "getPosition", "()I", "setPosition", "(I)V", "drop", "", "hasNext", "", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
public final class SubSequence$iterator$1<T> implements Iterator<T>, KMappedMarker {

    @NotNull
    private final Iterator<T> iterator;
    private int position;
    final /* synthetic */ SubSequence this$0;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    SubSequence$iterator$1(SubSequence subSequence) {
        this.this$0 = subSequence;
        this.iterator = SubSequence.access$getSequence$p(subSequence).iterator();
    }

    @NotNull
    public final Iterator<T> getIterator() {
        return this.iterator;
    }

    public final int getPosition() {
        return this.position;
    }

    public final void setPosition(int i) {
        this.position = i;
    }

    private final void drop() {
        while (this.position < SubSequence.access$getStartIndex$p(this.this$0) && this.iterator.hasNext()) {
            this.iterator.next();
            this.position++;
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        drop();
        return this.position < SubSequence.access$getEndIndex$p(this.this$0) && this.iterator.hasNext();
    }

    @Override // java.util.Iterator
    public T next() {
        drop();
        if (this.position >= SubSequence.access$getEndIndex$p(this.this$0)) {
            throw new NoSuchElementException();
        }
        this.position++;
        return this.iterator.next();
    }
}
