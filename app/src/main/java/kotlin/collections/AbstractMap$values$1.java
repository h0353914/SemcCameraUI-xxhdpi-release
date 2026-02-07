package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: compiled from: AbstractMap.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010(\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\nJ\u000f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\fH\u0096\u0002R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, d2 = {"kotlin/collections/AbstractMap$values$1", "Lkotlin/collections/AbstractCollection;", "(Lkotlin/collections/AbstractMap;)V", "size", "", "getSize", "()I", "contains", "", "element", "(Ljava/lang/Object;)Z", "iterator", "", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
public final class AbstractMap$values$1<V> extends AbstractCollection<V> {
    final /* synthetic */ AbstractMap this$0;

    AbstractMap$values$1(AbstractMap abstractMap) {
        this.this$0 = abstractMap;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean contains(Object element) {
        return this.this$0.containsValue(element);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<V> iterator() {
        return new AbstractMap$values$1$iterator$1(this.this$0.entrySet().iterator());
    }

    @Override // kotlin.collections.AbstractCollection
    public int getSize() {
        return this.this$0.size();
    }
}
