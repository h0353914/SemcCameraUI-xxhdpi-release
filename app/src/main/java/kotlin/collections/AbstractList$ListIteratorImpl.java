package kotlin.collections;

import java.util.ListIterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: compiled from: AbstractList.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010*\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0092\u0004\u0018\u00002\f0\u0001R\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0005H\u0016J\r\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\u0005H\u0016¨\u0006\r"}, d2 = {"Lkotlin/collections/AbstractList$ListIteratorImpl;", "Lkotlin/collections/AbstractList$IteratorImpl;", "Lkotlin/collections/AbstractList;", "", "index", "", "(Lkotlin/collections/AbstractList;I)V", "hasPrevious", "", "nextIndex", "previous", "()Ljava/lang/Object;", "previousIndex", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
class AbstractList$ListIteratorImpl<E> extends AbstractList<E>.AbstractList$IteratorImpl implements ListIterator<E>, KMappedMarker {
    final /* synthetic */ AbstractList this$0;

    @Override // java.util.ListIterator
    public void add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public void set(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractList$ListIteratorImpl(AbstractList abstractList, int i) {
        super(abstractList);
        this.this$0 = abstractList;
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, abstractList.size());
        setIndex(i);
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return getIndex() > 0;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return getIndex();
    }

    @Override // java.util.ListIterator
    public E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        AbstractList abstractList = this.this$0;
        setIndex(getIndex() - 1);
        return (E) abstractList.get(getIndex());
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return getIndex() - 1;
    }
}
