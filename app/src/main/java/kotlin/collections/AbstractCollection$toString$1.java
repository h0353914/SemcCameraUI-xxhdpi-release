package kotlin.collections;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: compiled from: AbstractCollection.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\r\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002 \u00012\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "E", "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 1, 10})
final class AbstractCollection$toString$1<E> extends Lambda implements Function1<E, CharSequence> {
    final /* synthetic */ AbstractCollection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbstractCollection$toString$1(AbstractCollection abstractCollection) {
        super(1);
        this.this$0 = abstractCollection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ CharSequence invoke(Object obj) {
        return invoke(obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function1
    @NotNull
    public final CharSequence invoke(E e) {
        return e == this.this$0 ? "(this Collection)" : String.valueOf(e);
    }
}
