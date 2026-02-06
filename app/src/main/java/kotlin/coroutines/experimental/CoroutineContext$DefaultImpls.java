package kotlin.coroutines.experimental;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: CoroutineContext.kt */
@Metadata(bv = {1, 0, 2}, k = 3, mv = {1, 1, 10})
public final class CoroutineContext$DefaultImpls {
    @NotNull
    public static CoroutineContext plus(CoroutineContext coroutineContext, @NotNull CoroutineContext context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        return context == EmptyCoroutineContext.INSTANCE ? coroutineContext : (CoroutineContext) context.fold(coroutineContext, CoroutineContext$plus$1.INSTANCE);
    }
}
