package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$BooleanRef;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: _Sequences.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0096\u0002¨\u0006\u0005"}, d2 = {"kotlin/sequences/SequencesKt___SequencesKt$minus$1", "Lkotlin/sequences/Sequence;", "(Lkotlin/sequences/Sequence;Ljava/lang/Object;)V", "iterator", "", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
public final class SequencesKt___SequencesKt$minus$1<T> implements Sequence<T> {
    final /* synthetic */ Object $element;
    final /* synthetic */ Sequence receiver$0;

    SequencesKt___SequencesKt$minus$1(Sequence<? extends T> sequence, Object obj) {
        this.receiver$0 = sequence;
        this.$element = obj;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ref$BooleanRef.element = false;
        return SequencesKt.filter(this.receiver$0, new SequencesKt___SequencesKt$minus$1$iterator$1(this, ref$BooleanRef)).iterator();
    }
}
