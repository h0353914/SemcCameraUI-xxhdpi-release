package kotlin.text;

import java.util.List;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: MatchResult.kt */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\bH\u0087\nJ\t\u0010\t\u001a\u00020\bH\u0087\nJ\t\u0010\n\u001a\u00020\bH\u0087\nJ\t\u0010\u000b\u001a\u00020\bH\u0087\nJ\t\u0010\f\u001a\u00020\bH\u0087\nJ\t\u0010\r\u001a\u00020\bH\u0087\nJ\t\u0010\u000e\u001a\u00020\bH\u0087\nJ\t\u0010\u000f\u001a\u00020\bH\u0087\nJ\t\u0010\u0010\u001a\u00020\bH\u0087\nJ\t\u0010\u0011\u001a\u00020\bH\u0087\nJ\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0014"}, d2 = {"Lkotlin/text/MatchResult$Destructured;", "", "match", "Lkotlin/text/MatchResult;", "(Lkotlin/text/MatchResult;)V", "getMatch", "()Lkotlin/text/MatchResult;", "component1", "", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "toList", "", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
public final class MatchResult$Destructured {

    @NotNull
    private final MatchResult match;

    public MatchResult$Destructured(@NotNull MatchResult match) {
        Intrinsics.checkParameterIsNotNull(match, "match");
        this.match = match;
    }

    @NotNull
    public final MatchResult getMatch() {
        return this.match;
    }

    @InlineOnly
    private final String component1() {
        return getMatch().getGroupValues().get(1);
    }

    @InlineOnly
    private final String component2() {
        return getMatch().getGroupValues().get(2);
    }

    @InlineOnly
    private final String component3() {
        return getMatch().getGroupValues().get(3);
    }

    @InlineOnly
    private final String component4() {
        return getMatch().getGroupValues().get(4);
    }

    @InlineOnly
    private final String component5() {
        return getMatch().getGroupValues().get(5);
    }

    @InlineOnly
    private final String component6() {
        return getMatch().getGroupValues().get(6);
    }

    @InlineOnly
    private final String component7() {
        return getMatch().getGroupValues().get(7);
    }

    @InlineOnly
    private final String component8() {
        return getMatch().getGroupValues().get(8);
    }

    @InlineOnly
    private final String component9() {
        return getMatch().getGroupValues().get(9);
    }

    @InlineOnly
    private final String component10() {
        return getMatch().getGroupValues().get(10);
    }

    @NotNull
    public final List<String> toList() {
        return this.match.getGroupValues().subList(1, this.match.getGroupValues().size());
    }
}
