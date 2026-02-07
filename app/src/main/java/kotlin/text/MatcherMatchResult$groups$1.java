package kotlin.text;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.AbstractCollection;
import kotlin.collections.CollectionsKt;
import kotlin.internal.PlatformImplementations;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.sequences.SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: Regex.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002B\u0005¢\u0006\u0002\u0010\u0004J\u0013\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0096\u0002J\u0013\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000b\u001a\u00020\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0011\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0010H\u0096\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"kotlin/text/MatcherMatchResult$groups$1", "Lkotlin/text/MatchNamedGroupCollection;", "Lkotlin/collections/AbstractCollection;", "Lkotlin/text/MatchGroup;", "(Lkotlin/text/MatcherMatchResult;)V", "size", "", "getSize", "()I", "get", "index", "name", "", "isEmpty", "", "iterator", "", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
public final class MatcherMatchResult$groups$1 extends AbstractCollection<MatchGroup> implements MatchNamedGroupCollection {
    final /* synthetic */ MatcherMatchResult this$0;

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return false;
    }

    MatcherMatchResult$groups$1(MatcherMatchResult matcherMatchResult) {
        this.this$0 = matcherMatchResult;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj != null ? obj instanceof MatchGroup : true) {
            return contains((MatchGroup) obj);
        }
        return false;
    }

    public /* bridge */ boolean contains(MatchGroup matchGroup) {
        return super.contains((Object) matchGroup);
    }

    @Override // kotlin.collections.AbstractCollection
    public int getSize() {
        return MatcherMatchResult.access$getMatchResult$p(this.this$0).groupCount() + 1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<MatchGroup> iterator() {
        return SequencesKt.map(CollectionsKt.asSequence(CollectionsKt.getIndices(this)), new MatcherMatchResult$groups$1$iterator$1(this)).iterator();
    }

    @Override // kotlin.text.MatchGroupCollection
    @Nullable
    public MatchGroup get(int index) {
        java.util.regex.MatchResult matchResult = MatcherMatchResult.access$getMatchResult$p(this.this$0);
        Intrinsics.checkExpressionValueIsNotNull(matchResult, "matchResult");
        IntRange intRangeAccess$range = RegexKt.access$range(matchResult, index);
        if (intRangeAccess$range.getStart().intValue() < 0) {
            return null;
        }
        String strGroup = MatcherMatchResult.access$getMatchResult$p(this.this$0).group(index);
        Intrinsics.checkExpressionValueIsNotNull(strGroup, "matchResult.group(index)");
        return new MatchGroup(strGroup, intRangeAccess$range);
    }

    @Override // kotlin.text.MatchNamedGroupCollection
    @Nullable
    public MatchGroup get(@NotNull String name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        PlatformImplementations platformImplementations = PlatformImplementationsKt.IMPLEMENTATIONS;
        java.util.regex.MatchResult matchResult = MatcherMatchResult.access$getMatchResult$p(this.this$0);
        Intrinsics.checkExpressionValueIsNotNull(matchResult, "matchResult");
        return platformImplementations.getMatchResultNamedGroup(matchResult, name);
    }
}
