package kotlin.coroutines.experimental;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: ContinuationInterceptor.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, k = 3, mv = {1, 1, 10})
public final class ContinuationInterceptor$DefaultImpls {
    public static <R> R fold(ContinuationInterceptor continuationInterceptor, R r, @NotNull Function2<? super R, ? super CoroutineContext$Element, ? extends R> operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        return (R) CoroutineContext$Element$DefaultImpls.fold(continuationInterceptor, r, operation);
    }

    @Nullable
    public static <E extends CoroutineContext$Element> E get(ContinuationInterceptor continuationInterceptor, @NotNull CoroutineContext$Key<E> key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        return (E) CoroutineContext$Element$DefaultImpls.get(continuationInterceptor, key);
    }

    @NotNull
    public static CoroutineContext minusKey(ContinuationInterceptor continuationInterceptor, @NotNull CoroutineContext$Key<?> key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        return CoroutineContext$Element$DefaultImpls.minusKey(continuationInterceptor, key);
    }

    @NotNull
    public static CoroutineContext plus(ContinuationInterceptor continuationInterceptor, @NotNull CoroutineContext context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        return CoroutineContext$Element$DefaultImpls.plus(continuationInterceptor, context);
    }
}
