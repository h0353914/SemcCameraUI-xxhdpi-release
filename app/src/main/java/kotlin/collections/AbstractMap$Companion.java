package kotlin.collections;

import java.util.Map$Entry;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: AbstractMap.kt */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010&\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J'\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001H\u0000¢\u0006\u0002\b\bJ\u001d\u0010\t\u001a\u00020\n2\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006H\u0000¢\u0006\u0002\b\u000bJ\u001d\u0010\f\u001a\u00020\r2\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006H\u0000¢\u0006\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lkotlin/collections/AbstractMap$Companion;", "", "()V", "entryEquals", "", "e", "", "other", "entryEquals$kotlin_stdlib", "entryHashCode", "", "entryHashCode$kotlin_stdlib", "entryToString", "", "entryToString$kotlin_stdlib", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
public final class AbstractMap$Companion {
    private AbstractMap$Companion() {
    }

    public /* synthetic */ AbstractMap$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final int entryHashCode$kotlin_stdlib(@NotNull Map$Entry<?, ?> e) {
        Intrinsics.checkParameterIsNotNull(e, "e");
        Object key = e.getKey();
        int iHashCode = key != null ? key.hashCode() : 0;
        Object value = e.getValue();
        return iHashCode ^ (value != null ? value.hashCode() : 0);
    }

    @NotNull
    public final String entryToString$kotlin_stdlib(@NotNull Map$Entry<?, ?> e) {
        Intrinsics.checkParameterIsNotNull(e, "e");
        StringBuilder sb = new StringBuilder();
        sb.append(e.getKey());
        sb.append('=');
        sb.append(e.getValue());
        return sb.toString();
    }

    public final boolean entryEquals$kotlin_stdlib(@NotNull Map$Entry<?, ?> e, @Nullable Object other) {
        Intrinsics.checkParameterIsNotNull(e, "e");
        if (!(other instanceof Map$Entry)) {
            return false;
        }
        Map$Entry map$Entry = (Map$Entry) other;
        return Intrinsics.areEqual(e.getKey(), map$Entry.getKey()) && Intrinsics.areEqual(e.getValue(), map$Entry.getValue());
    }
}
