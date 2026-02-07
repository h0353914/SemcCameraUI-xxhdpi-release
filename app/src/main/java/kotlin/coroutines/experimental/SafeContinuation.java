package kotlin.coroutines.experimental;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.experimental.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: SafeContinuationJvm.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0003\b\u0001\u0018\u0000 \u0015*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002\u0015\u0016B\u0015\b\u0011\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0002\u0010\u0004B\u001f\b\u0000\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\n\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0001J\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lkotlin/coroutines/experimental/SafeContinuation;", "T", "Lkotlin/coroutines/experimental/Continuation;", "delegate", "(Lkotlin/coroutines/experimental/Continuation;)V", "initialResult", "", "(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V", "context", "Lkotlin/coroutines/experimental/CoroutineContext;", "getContext", "()Lkotlin/coroutines/experimental/CoroutineContext;", "result", "getResult", "resume", "", "value", "(Ljava/lang/Object;)V", "resumeWithException", "exception", "", "Companion", "Fail", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
@PublishedApi
public final class SafeContinuation<T> implements Continuation<T> {
    private final Continuation<T> delegate;
    private volatile Object result;
    public static final SafeContinuation$Companion Companion = new SafeContinuation$Companion(null);
    private static final Object UNDECIDED = new Object();
    private static final Object RESUMED = new Object();
    private static final AtomicReferenceFieldUpdater<SafeContinuation<?>, Object> RESULT = AtomicReferenceFieldUpdater.newUpdater(SafeContinuation.class, Object.class, "result");

    /* JADX WARN: Multi-variable type inference failed */
    public SafeContinuation(@NotNull Continuation<? super T> delegate, @Nullable Object obj) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        this.delegate = delegate;
        this.result = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @PublishedApi
    public SafeContinuation(@NotNull Continuation<? super T> delegate) {
        this(delegate, UNDECIDED);
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
    }

    @Override // kotlin.coroutines.experimental.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.delegate.getContext();
    }

    @Override // kotlin.coroutines.experimental.Continuation
    public void resume(T value) {
        while (true) {
            Object obj = this.result;
            if (obj == UNDECIDED) {
                if (RESULT.compareAndSet(this, UNDECIDED, value)) {
                    return;
                }
            } else {
                if (obj != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    throw new IllegalStateException("Already resumed");
                }
                if (RESULT.compareAndSet(this, IntrinsicsKt.getCOROUTINE_SUSPENDED(), RESUMED)) {
                    this.delegate.resume(value);
                    return;
                }
            }
        }
    }

    @Override // kotlin.coroutines.experimental.Continuation
    public void resumeWithException(@NotNull Throwable exception) {
        Intrinsics.checkParameterIsNotNull(exception, "exception");
        while (true) {
            Object obj = this.result;
            if (obj == UNDECIDED) {
                if (RESULT.compareAndSet(this, UNDECIDED, new SafeContinuation$Fail(exception))) {
                    return;
                }
            } else {
                if (obj != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    throw new IllegalStateException("Already resumed");
                }
                if (RESULT.compareAndSet(this, IntrinsicsKt.getCOROUTINE_SUSPENDED(), RESUMED)) {
                    this.delegate.resumeWithException(exception);
                    return;
                }
            }
        }
    }

    @PublishedApi
    @Nullable
    public final Object getResult() throws Throwable {
        Object obj = this.result;
        if (obj == UNDECIDED) {
            if (RESULT.compareAndSet(this, UNDECIDED, IntrinsicsKt.getCOROUTINE_SUSPENDED())) {
                return IntrinsicsKt.getCOROUTINE_SUSPENDED();
            }
            obj = this.result;
        }
        if (obj == RESUMED) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        if (obj instanceof SafeContinuation$Fail) {
            throw ((SafeContinuation$Fail) obj).getException();
        }
        return obj;
    }
}
