package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
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

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: SlidingWindow.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "Lkotlin/coroutines/experimental/SequenceBuilder;", "", "invoke", "(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 10})
final class SlidingWindowKt$windowedIterator$1<T> extends CoroutineImpl implements Function2<SequenceBuilder<? super List<? extends T>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Iterator $iterator;
    final /* synthetic */ boolean $partialWindows;
    final /* synthetic */ boolean $reuseBuffer;
    final /* synthetic */ int $size;
    final /* synthetic */ int $step;
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    private SequenceBuilder p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SlidingWindowKt$windowedIterator$1(int i, int i2, Iterator it, boolean z, boolean z2, Continuation continuation) {
        super(2, continuation);
        this.$step = i;
        this.$size = i2;
        this.$iterator = it;
        this.$reuseBuffer = z;
        this.$partialWindows = z2;
    }

    @Override // kotlin.coroutines.experimental.jvm.internal.CoroutineImpl
    public /* bridge */ /* synthetic */ Continuation create(Object obj, Continuation continuation) {
        return create((SequenceBuilder) obj, (Continuation<? super Unit>) continuation);
    }

    @NotNull
    public final Continuation<Unit> create(@NotNull SequenceBuilder<? super List<? extends T>> receiver, @NotNull Continuation<? super Unit> continuation) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        SlidingWindowKt$windowedIterator$1 slidingWindowKt$windowedIterator$1 = new SlidingWindowKt$windowedIterator$1(this.$step, this.$size, this.$iterator, this.$reuseBuffer, this.$partialWindows, continuation);
        slidingWindowKt$windowedIterator$1.p$ = receiver;
        return slidingWindowKt$windowedIterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return invoke((SequenceBuilder) obj, continuation);
    }

    @Nullable
    public final Object invoke(@NotNull SequenceBuilder<? super List<? extends T>> receiver, @NotNull Continuation<? super Unit> continuation) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        return ((SlidingWindowKt$windowedIterator$1) create((SequenceBuilder) receiver, continuation)).doResume(Unit.INSTANCE, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00de A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0162  */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.lang.Object, kotlin.collections.RingBuffer] */
    /* JADX WARN: Type inference failed for: r0v21, types: [kotlin.collections.RingBuffer] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Object, kotlin.collections.RingBuffer] */
    /* JADX WARN: Type inference failed for: r2v13, types: [kotlin.collections.RingBuffer] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.lang.Object, kotlin.coroutines.experimental.SequenceBuilder] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00a5 -> B:37:0x00a8). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0122 -> B:63:0x0125). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x0159 -> B:76:0x015c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.experimental.jvm.internal.CoroutineImpl
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object doResume(@Nullable Object obj, @Nullable Throwable th) throws Throwable {
        SequenceBuilder sequenceBuilder;
        int i;
        Iterator it;
        ArrayList arrayList;
        int i2;
        Object obj2;
        int i3;
        Iterator it2;
        SequenceBuilder sequenceBuilder2;
        ?? r2;
        ?? r0;
        int i4;
        ?? r3;
        ?? r22;
        ?? r32;
        ?? r02;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                if (th != null) {
                    throw th;
                }
                SequenceBuilder sequenceBuilder3 = this.p$;
                int i5 = this.$step - this.$size;
                if (i5 >= 0) {
                    arrayList = new ArrayList(this.$size);
                    i2 = 0;
                    obj2 = coroutine_suspended;
                    i3 = i5;
                    it2 = this.$iterator;
                    sequenceBuilder2 = sequenceBuilder3;
                    while (it2.hasNext()) {
                        Object next = it2.next();
                        if (i2 > 0) {
                            i2--;
                        } else {
                            arrayList.add(next);
                            if (arrayList.size() == this.$size) {
                                this.L$0 = sequenceBuilder2;
                                this.I$0 = i3;
                                this.L$1 = arrayList;
                                this.I$1 = i2;
                                this.L$2 = next;
                                this.L$3 = it2;
                                this.label = 1;
                                if (sequenceBuilder2.yield(arrayList, this) == obj2) {
                                    return obj2;
                                }
                                if (this.$reuseBuffer) {
                                    arrayList = new ArrayList(this.$size);
                                } else {
                                    arrayList.clear();
                                }
                                i2 = i3;
                                while (it2.hasNext()) {
                                }
                            }
                        }
                    }
                    if ((!arrayList.isEmpty()) && (this.$partialWindows || arrayList.size() == this.$size)) {
                        this.I$0 = i3;
                        this.L$0 = arrayList;
                        this.I$1 = i2;
                        this.label = 2;
                        if (sequenceBuilder2.yield(arrayList, this) == obj2) {
                            return obj2;
                        }
                    }
                    return Unit.INSTANCE;
                }
                RingBuffer ringBuffer = new RingBuffer(this.$size);
                sequenceBuilder = sequenceBuilder3;
                i = i5;
                it = this.$iterator;
                r2 = ringBuffer;
                while (it.hasNext()) {
                    Object next2 = it.next();
                    r2.add(next2);
                    if (r2.isFull()) {
                        List arrayList2 = this.$reuseBuffer ? (List) r2 : new ArrayList((Collection) r2);
                        this.L$0 = sequenceBuilder;
                        this.I$0 = i;
                        this.L$1 = r2;
                        this.L$2 = next2;
                        this.L$3 = it;
                        this.label = 3;
                        r22 = r2;
                        if (sequenceBuilder.yield(arrayList2, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        r22.removeFirst(this.$step);
                        r2 = r22;
                        while (it.hasNext()) {
                        }
                    }
                }
                if (this.$partialWindows) {
                    r0 = r2;
                    i4 = i;
                    r3 = sequenceBuilder;
                    if (r0.size() <= this.$step) {
                        List arrayList3 = this.$reuseBuffer ? (List) r0 : new ArrayList((Collection) r0);
                        this.L$0 = r3;
                        this.I$0 = i4;
                        this.L$1 = r0;
                        this.label = 4;
                        Object objYield = r3.yield(arrayList3, this);
                        r02 = r0;
                        r32 = r3;
                        if (objYield == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        r02.removeFirst(this.$step);
                        r0 = r02;
                        r3 = r32;
                        if (r0.size() <= this.$step) {
                            if (!((Collection) r0).isEmpty()) {
                                this.I$0 = i4;
                                this.L$0 = r0;
                                this.label = 5;
                                if (r3.yield(r0, this) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                        }
                    }
                }
                return Unit.INSTANCE;
            case 1:
                it2 = (Iterator) this.L$3;
                Object obj3 = this.L$2;
                int i6 = this.I$1;
                arrayList = (ArrayList) this.L$1;
                int i7 = this.I$0;
                sequenceBuilder2 = (SequenceBuilder) this.L$0;
                if (th != null) {
                    throw th;
                }
                obj2 = coroutine_suspended;
                i3 = i7;
                if (this.$reuseBuffer) {
                }
                i2 = i3;
                while (it2.hasNext()) {
                }
                if (!arrayList.isEmpty()) {
                    this.I$0 = i3;
                    this.L$0 = arrayList;
                    this.I$1 = i2;
                    this.label = 2;
                    if (sequenceBuilder2.yield(arrayList, this) == obj2) {
                    }
                }
                return Unit.INSTANCE;
            case 2:
                int i8 = this.I$1;
                int i9 = this.I$0;
                if (th != null) {
                    throw th;
                }
                return Unit.INSTANCE;
            case 3:
                it = (Iterator) this.L$3;
                Object obj4 = this.L$2;
                RingBuffer ringBuffer2 = (RingBuffer) this.L$1;
                i = this.I$0;
                sequenceBuilder = (SequenceBuilder) this.L$0;
                r22 = ringBuffer2;
                if (th != null) {
                    throw th;
                }
                r22.removeFirst(this.$step);
                r2 = r22;
                while (it.hasNext()) {
                }
                if (this.$partialWindows) {
                }
                return Unit.INSTANCE;
            case 4:
                RingBuffer ringBuffer3 = (RingBuffer) this.L$1;
                i4 = this.I$0;
                r02 = ringBuffer3;
                r32 = (SequenceBuilder) this.L$0;
                if (th != null) {
                    throw th;
                }
                r02.removeFirst(this.$step);
                r0 = r02;
                r3 = r32;
                if (r0.size() <= this.$step) {
                }
                break;
            case 5:
                int i10 = this.I$0;
                if (th != null) {
                    throw th;
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
