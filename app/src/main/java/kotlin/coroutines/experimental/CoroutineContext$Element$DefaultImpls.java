package kotlin.coroutines.experimental;

import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: CoroutineContext.kt */
@Metadata(bv = {1, 0, 2}, k = 3, mv = {1, 1, 10})
public final class CoroutineContext$Element$DefaultImpls {
    @NotNull
    public static CoroutineContext plus(CoroutineContext$Element coroutineContext$Element, @NotNull CoroutineContext context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        return CoroutineContext$DefaultImpls.plus(coroutineContext$Element, context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static <E extends CoroutineContext$Element> E get(CoroutineContext$Element coroutineContext$Element, @NotNull CoroutineContext$Key<E> key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        if (coroutineContext$Element.getKey() != key) {
            return null;
        }
        if (coroutineContext$Element == 0) {
            throw new TypeCastException("null cannot be cast to non-null type E");
        }
        return coroutineContext$Element;
    }

    public static <R> R fold(CoroutineContext$Element coroutineContext$Element, R r, @NotNull Function2<? super R, ? super CoroutineContext$Element, ? extends R> operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        return operation.invoke(r, coroutineContext$Element);
    }

    @NotNull
    public static CoroutineContext minusKey(CoroutineContext$Element coroutineContext$Element, @NotNull CoroutineContext$Key<?> key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        CoroutineContext$Key<?> key2 = coroutineContext$Element.getKey();
        CoroutineContext coroutineContext = coroutineContext$Element;
        if (key2 == key) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return coroutineContext;
    }
}
