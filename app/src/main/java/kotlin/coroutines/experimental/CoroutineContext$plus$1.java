package kotlin.coroutines.experimental;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: CoroutineContext.kt */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lkotlin/coroutines/experimental/CoroutineContext;", "acc", "element", "Lkotlin/coroutines/experimental/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 1, 10})
final class CoroutineContext$plus$1 extends Lambda implements Function2<CoroutineContext, CoroutineContext$Element, CoroutineContext> {
    public static final CoroutineContext$plus$1 INSTANCE = new CoroutineContext$plus$1();

    CoroutineContext$plus$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ CoroutineContext invoke(CoroutineContext coroutineContext, CoroutineContext$Element coroutineContext$Element) {
        return invoke2(coroutineContext, coroutineContext$Element);
    }

    @NotNull
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final CoroutineContext invoke2(@NotNull CoroutineContext acc, @NotNull CoroutineContext$Element element) {
        CombinedContext combinedContext;
        Intrinsics.checkParameterIsNotNull(acc, "acc");
        Intrinsics.checkParameterIsNotNull(element, "element");
        CoroutineContext coroutineContextMinusKey = acc.minusKey(element.getKey());
        if (coroutineContextMinusKey == EmptyCoroutineContext.INSTANCE) {
            return element;
        }
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContextMinusKey.get(ContinuationInterceptor.Key);
        if (continuationInterceptor == null) {
            combinedContext = new CombinedContext(coroutineContextMinusKey, element);
        } else {
            CoroutineContext coroutineContextMinusKey2 = coroutineContextMinusKey.minusKey(ContinuationInterceptor.Key);
            combinedContext = coroutineContextMinusKey2 == EmptyCoroutineContext.INSTANCE ? new CombinedContext(element, continuationInterceptor) : new CombinedContext(new CombinedContext(coroutineContextMinusKey2, element), continuationInterceptor);
        }
        return combinedContext;
    }
}
