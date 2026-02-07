package kotlin.ranges;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: Range.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, k = 3, mv = {1, 1, 10})
public final class ClosedRange$DefaultImpls {
    public static <T extends Comparable<? super T>> boolean contains(ClosedRange<T> closedRange, @NotNull T value) {
        Intrinsics.checkParameterIsNotNull(value, "value");
        return value.compareTo(closedRange.getStart()) >= 0 && value.compareTo(closedRange.getEndInclusive()) <= 0;
    }

    public static <T extends Comparable<? super T>> boolean isEmpty(ClosedRange<T> closedRange) {
        return closedRange.getStart().compareTo(closedRange.getEndInclusive()) > 0;
    }
}
