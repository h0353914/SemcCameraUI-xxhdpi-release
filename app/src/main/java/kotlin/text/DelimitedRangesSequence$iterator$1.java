package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000'\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\t\u0010\u001a\u001a\u00020\u001bH\u0096\u0002J\t\u0010\u001c\u001a\u00020\u0002H\u0096\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0002X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0007\"\u0004\b\u0014\u0010\tR\u001a\u0010\u0015\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0007\"\u0004\b\u0017\u0010\t¨\u0006\u001d"}, d2 = {"kotlin/text/DelimitedRangesSequence$iterator$1", "", "Lkotlin/ranges/IntRange;", "(Lkotlin/text/DelimitedRangesSequence;)V", "counter", "", "getCounter", "()I", "setCounter", "(I)V", "currentStartIndex", "getCurrentStartIndex", "setCurrentStartIndex", "nextItem", "getNextItem", "()Lkotlin/ranges/IntRange;", "setNextItem", "(Lkotlin/ranges/IntRange;)V", "nextSearchIndex", "getNextSearchIndex", "setNextSearchIndex", "nextState", "getNextState", "setNextState", "calcNext", "", "hasNext", "", "next", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
public final class DelimitedRangesSequence$iterator$1 implements Iterator<IntRange>, KMappedMarker {
    private int counter;
    private int currentStartIndex;

    @Nullable
    private IntRange nextItem;
    private int nextSearchIndex;
    private int nextState = -1;
    final /* synthetic */ DelimitedRangesSequence this$0;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    DelimitedRangesSequence$iterator$1(DelimitedRangesSequence delimitedRangesSequence) {
        this.this$0 = delimitedRangesSequence;
        this.currentStartIndex = RangesKt.coerceIn(DelimitedRangesSequence.access$getStartIndex$p(delimitedRangesSequence), 0, DelimitedRangesSequence.access$getInput$p(delimitedRangesSequence).length());
        this.nextSearchIndex = this.currentStartIndex;
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ IntRange next() {
        return next2();
    }

    public final int getNextState() {
        return this.nextState;
    }

    public final void setNextState(int i) {
        this.nextState = i;
    }

    public final int getCurrentStartIndex() {
        return this.currentStartIndex;
    }

    public final void setCurrentStartIndex(int i) {
        this.currentStartIndex = i;
    }

    public final int getNextSearchIndex() {
        return this.nextSearchIndex;
    }

    public final void setNextSearchIndex(int i) {
        this.nextSearchIndex = i;
    }

    @Nullable
    public final IntRange getNextItem() {
        return this.nextItem;
    }

    public final void setNextItem(@Nullable IntRange intRange) {
        this.nextItem = intRange;
    }

    public final int getCounter() {
        return this.counter;
    }

    public final void setCounter(int i) {
        this.counter = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void calcNext() {
        Pair pair;
        if (this.nextSearchIndex < 0) {
            this.nextState = 0;
            this.nextItem = (IntRange) null;
            return;
        }
        if (DelimitedRangesSequence.access$getLimit$p(this.this$0) > 0) {
            this.counter++;
            if (this.counter >= DelimitedRangesSequence.access$getLimit$p(this.this$0)) {
                this.nextItem = new IntRange(this.currentStartIndex, StringsKt.getLastIndex(DelimitedRangesSequence.access$getInput$p(this.this$0)));
                this.nextSearchIndex = -1;
            } else if (this.nextSearchIndex > DelimitedRangesSequence.access$getInput$p(this.this$0).length() || (pair = (Pair) DelimitedRangesSequence.access$getGetNextMatch$p(this.this$0).invoke(DelimitedRangesSequence.access$getInput$p(this.this$0), Integer.valueOf(this.nextSearchIndex))) == null) {
                this.nextItem = new IntRange(this.currentStartIndex, StringsKt.getLastIndex(DelimitedRangesSequence.access$getInput$p(this.this$0)));
                this.nextSearchIndex = -1;
            } else {
                int iIntValue = ((Number) pair.component1()).intValue();
                int iIntValue2 = ((Number) pair.component2()).intValue();
                this.nextItem = RangesKt.until(this.currentStartIndex, iIntValue);
                this.currentStartIndex = iIntValue + iIntValue2;
                this.nextSearchIndex = this.currentStartIndex + (iIntValue2 == 0 ? 1 : 0);
            }
        }
        this.nextState = 1;
    }

    @Override // java.util.Iterator
    @NotNull
    /* JADX INFO: renamed from: next, reason: avoid collision after fix types in other method */
    public IntRange next2() {
        if (this.nextState == -1) {
            calcNext();
        }
        if (this.nextState == 0) {
            throw new NoSuchElementException();
        }
        IntRange intRange = this.nextItem;
        if (intRange == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.ranges.IntRange");
        }
        this.nextItem = (IntRange) null;
        this.nextState = -1;
        return intRange;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.nextState == -1) {
            calcNext();
        }
        return this.nextState == 1;
    }
}
