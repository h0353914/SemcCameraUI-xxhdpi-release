package kotlin.text;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: MatchResult.kt */
@Metadata(bv = {1, 0, 2}, k = 3, mv = {1, 1, 10})
public final class MatchResult$DefaultImpls {
    @NotNull
    public static MatchResult$Destructured getDestructured(MatchResult matchResult) {
        return new MatchResult$Destructured(matchResult);
    }
}
