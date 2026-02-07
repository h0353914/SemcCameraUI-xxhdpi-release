package kotlin.ranges;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: Ranges.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, k = 3, mv = {1, 1, 10})
public final class ClosedFloatingPointRange$DefaultImpls {
    public static <T extends Comparable<? super T>> boolean contains(ClosedFloatingPointRange<T> closedFloatingPointRange, @NotNull T value) {
        Intrinsics.checkParameterIsNotNull(value, "value");
        return closedFloatingPointRange.lessThanOrEquals(closedFloatingPointRange.getStart(), value) && closedFloatingPointRange.lessThanOrEquals(value, closedFloatingPointRange.getEndInclusive());
    }

    public static <T extends Comparable<? super T>> boolean isEmpty(ClosedFloatingPointRange<T> closedFloatingPointRange) {
        return !closedFloatingPointRange.lessThanOrEquals(closedFloatingPointRange.getStart(), closedFloatingPointRange.getEndInclusive());
    }
}
