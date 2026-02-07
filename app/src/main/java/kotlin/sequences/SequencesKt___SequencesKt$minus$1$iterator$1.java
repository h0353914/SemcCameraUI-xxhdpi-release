package kotlin.sequences;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: _Sequences.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "T", "it", "invoke", "(Ljava/lang/Object;)Z"}, k = 3, mv = {1, 1, 10})
final class SequencesKt___SequencesKt$minus$1$iterator$1<T> extends Lambda implements Function1<T, Boolean> {
    final /* synthetic */ Ref$BooleanRef $removed;
    final /* synthetic */ SequencesKt___SequencesKt$minus$1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$minus$1$iterator$1(SequencesKt___SequencesKt$minus$1 sequencesKt___SequencesKt$minus$1, Ref$BooleanRef ref$BooleanRef) {
        super(1);
        this.this$0 = sequencesKt___SequencesKt$minus$1;
        this.$removed = ref$BooleanRef;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
        return Boolean.valueOf(invoke2(obj));
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final boolean invoke2(T t) {
        if (this.$removed.element || !Intrinsics.areEqual(t, this.this$0.$element)) {
            return true;
        }
        this.$removed.element = true;
        return false;
    }
}
