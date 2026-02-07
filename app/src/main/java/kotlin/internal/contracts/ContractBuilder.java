package kotlin.internal.contracts;

import kotlin.Function;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.ContractsDsl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: ContractBuilder.kt */
/* JADX INFO: loaded from: classes.dex */
@SinceKotlin(version = "1.2")
@ContractsDsl
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\ba\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH'J\b\u0010\t\u001a\u00020\nH'J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001H'J\b\u0010\f\u001a\u00020\rH'¨\u0006\u000e"}, d2 = {"Lkotlin/internal/contracts/ContractBuilder;", "", "callsInPlace", "Lkotlin/internal/contracts/CallsInPlace;", "R", "lambda", "Lkotlin/Function;", "kind", "Lkotlin/internal/contracts/InvocationKind;", "returns", "Lkotlin/internal/contracts/Returns;", "value", "returnsNotNull", "Lkotlin/internal/contracts/ReturnsNotNull;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
public interface ContractBuilder {
    @ContractsDsl
    @NotNull
    <R> CallsInPlace callsInPlace(@NotNull Function<? extends R> lambda, @NotNull InvocationKind kind);

    @ContractsDsl
    @NotNull
    Returns returns();

    @ContractsDsl
    @NotNull
    Returns returns(@Nullable Object value);

    @ContractsDsl
    @NotNull
    ReturnsNotNull returnsNotNull();
}
