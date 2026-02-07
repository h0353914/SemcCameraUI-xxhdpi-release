package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.experimental.Continuation;
import kotlin.coroutines.experimental.SequenceBuilder;
import kotlin.coroutines.experimental.intrinsics.IntrinsicsKt;
import kotlin.coroutines.experimental.jvm.internal.CoroutineImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: compiled from: _Sequences.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlin/coroutines/experimental/SequenceBuilder;", "invoke", "(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 10})
final class SequencesKt___SequencesKt$zipWithNext$2<R> extends CoroutineImpl implements Function2<SequenceBuilder<? super R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2 $transform;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    private SequenceBuilder p$;
    final /* synthetic */ Sequence receiver$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$zipWithNext$2(Sequence sequence, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.receiver$0 = sequence;
        this.$transform = function2;
    }

    @Override // kotlin.coroutines.experimental.jvm.internal.CoroutineImpl
    public /* bridge */ /* synthetic */ Continuation create(Object obj, Continuation continuation) {
        return create((SequenceBuilder) obj, (Continuation<? super Unit>) continuation);
    }

    @NotNull
    public final Continuation<Unit> create(@NotNull SequenceBuilder<? super R> receiver, @NotNull Continuation<? super Unit> continuation) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        SequencesKt___SequencesKt$zipWithNext$2 sequencesKt___SequencesKt$zipWithNext$2 = new SequencesKt___SequencesKt$zipWithNext$2(this.receiver$0, this.$transform, continuation);
        sequencesKt___SequencesKt$zipWithNext$2.p$ = receiver;
        return sequencesKt___SequencesKt$zipWithNext$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return invoke((SequenceBuilder) obj, continuation);
    }

    @Nullable
    public final Object invoke(@NotNull SequenceBuilder<? super R> receiver, @NotNull Continuation<? super Unit> continuation) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        return ((SequencesKt___SequencesKt$zipWithNext$2) create((SequenceBuilder) receiver, continuation)).doResume(Unit.INSTANCE, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x005e -> B:10:0x0021). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.experimental.jvm.internal.CoroutineImpl
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object doResume(@Nullable Object obj, @Nullable Throwable th) throws Throwable {
        SequenceBuilder sequenceBuilder;
        Object obj2;
        Object next;
        Iterator it;
        Object next2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                if (th != null) {
                    throw th;
                }
                SequenceBuilder sequenceBuilder2 = this.p$;
                Iterator it2 = this.receiver$0.iterator();
                if (!it2.hasNext()) {
                    return Unit.INSTANCE;
                }
                sequenceBuilder = sequenceBuilder2;
                obj2 = coroutine_suspended;
                next = it2.next();
                it = it2;
                if (it.hasNext()) {
                    next2 = it.next();
                    Object objInvoke = this.$transform.invoke(next, next2);
                    this.L$0 = sequenceBuilder;
                    this.L$1 = it;
                    this.L$2 = next;
                    this.L$3 = next2;
                    this.label = 1;
                    if (sequenceBuilder.yield(objInvoke, this) == obj2) {
                        return obj2;
                    }
                    next = next2;
                    if (it.hasNext()) {
                        return Unit.INSTANCE;
                    }
                }
                break;
            case 1:
                next2 = this.L$3;
                Object obj3 = this.L$2;
                it = (Iterator) this.L$1;
                sequenceBuilder = (SequenceBuilder) this.L$0;
                if (th != null) {
                    throw th;
                }
                obj2 = coroutine_suspended;
                next = next2;
                if (it.hasNext()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
