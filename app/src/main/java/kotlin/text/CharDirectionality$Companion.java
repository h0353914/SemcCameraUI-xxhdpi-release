package kotlin.text;

import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: CharDirectionality.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0005R'\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lkotlin/text/CharDirectionality$Companion;", "", "()V", "directionalityMap", "", "", "Lkotlin/text/CharDirectionality;", "getDirectionalityMap", "()Ljava/util/Map;", "directionalityMap$delegate", "Lkotlin/Lazy;", "valueOf", "directionality", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
public final class CharDirectionality$Companion {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CharDirectionality$Companion.class), "directionalityMap", "getDirectionalityMap()Ljava/util/Map;"))};

    private final Map<Integer, CharDirectionality> getDirectionalityMap() {
        Lazy lazyAccess$getDirectionalityMap$cp = CharDirectionality.access$getDirectionalityMap$cp();
        KProperty kProperty = $$delegatedProperties[0];
        return (Map) lazyAccess$getDirectionalityMap$cp.getValue();
    }

    private CharDirectionality$Companion() {
    }

    public /* synthetic */ CharDirectionality$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @NotNull
    public final CharDirectionality valueOf(int directionality) {
        CharDirectionality charDirectionality = getDirectionalityMap().get(Integer.valueOf(directionality));
        if (charDirectionality != null) {
            return charDirectionality;
        }
        throw new IllegalArgumentException("Directionality #" + directionality + " is not defined.");
    }
}
