package kotlin.internal.contracts;

import kotlin.Function;
import kotlin.Metadata;
import kotlin.internal.ContractsDsl;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: ContractBuilder.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, k = 3, mv = {1, 1, 10})
public final class ContractBuilder$DefaultImpls {
    @ContractsDsl
    @NotNull
    public static /* bridge */ /* synthetic */ CallsInPlace callsInPlace$default(ContractBuilder contractBuilder, Function function, InvocationKind invocationKind, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: callsInPlace");
        }
        if ((i & 2) != 0) {
            invocationKind = InvocationKind.UNKNOWN;
        }
        return contractBuilder.callsInPlace(function, invocationKind);
    }
}
