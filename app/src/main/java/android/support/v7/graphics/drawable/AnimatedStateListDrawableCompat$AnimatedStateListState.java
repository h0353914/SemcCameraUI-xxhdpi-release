package android.support.v7.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.SparseArrayCompat;
import android.util.StateSet;

/* JADX INFO: loaded from: classes.dex */
class AnimatedStateListDrawableCompat$AnimatedStateListState extends StateListDrawable$StateListState {
    private static final long REVERSED_BIT = 4294967296L;
    private static final long REVERSIBLE_FLAG_BIT = 8589934592L;
    SparseArrayCompat<Integer> mStateIds;
    LongSparseArray<Long> mTransitions;

    private static long generateTransitionKey(int i, int i2) {
        return ((long) i2) | (((long) i) << 32);
    }

    AnimatedStateListDrawableCompat$AnimatedStateListState(@Nullable AnimatedStateListDrawableCompat$AnimatedStateListState animatedStateListDrawableCompat$AnimatedStateListState, @NonNull AnimatedStateListDrawableCompat animatedStateListDrawableCompat, @Nullable Resources resources) {
        super(animatedStateListDrawableCompat$AnimatedStateListState, animatedStateListDrawableCompat, resources);
        if (animatedStateListDrawableCompat$AnimatedStateListState != null) {
            this.mTransitions = animatedStateListDrawableCompat$AnimatedStateListState.mTransitions;
            this.mStateIds = animatedStateListDrawableCompat$AnimatedStateListState.mStateIds;
        } else {
            this.mTransitions = new LongSparseArray<>();
            this.mStateIds = new SparseArrayCompat<>();
        }
    }

    @Override // android.support.v7.graphics.drawable.StateListDrawable$StateListState, android.support.v7.graphics.drawable.DrawableContainer$DrawableContainerState
    void mutate() {
        this.mTransitions = this.mTransitions.clone();
        this.mStateIds = this.mStateIds.clone();
    }

    int addTransition(int i, int i2, @NonNull Drawable drawable, boolean z) {
        int iAddChild = super.addChild(drawable);
        long jGenerateTransitionKey = generateTransitionKey(i, i2);
        long j = z ? 8589934592L : 0L;
        long j2 = iAddChild;
        this.mTransitions.append(jGenerateTransitionKey, Long.valueOf(j2 | j));
        if (z) {
            this.mTransitions.append(generateTransitionKey(i2, i), Long.valueOf(4294967296L | j2 | j));
        }
        return iAddChild;
    }

    int addStateSet(@NonNull int[] iArr, @NonNull Drawable drawable, int i) {
        int iAddStateSet = super.addStateSet(iArr, drawable);
        this.mStateIds.put(iAddStateSet, Integer.valueOf(i));
        return iAddStateSet;
    }

    int indexOfKeyframe(@NonNull int[] iArr) {
        int iIndexOfStateSet = super.indexOfStateSet(iArr);
        return iIndexOfStateSet >= 0 ? iIndexOfStateSet : super.indexOfStateSet(StateSet.WILD_CARD);
    }

    int getKeyframeIdAt(int i) {
        if (i < 0) {
            return 0;
        }
        return this.mStateIds.get(i, 0).intValue();
    }

    int indexOfTransition(int i, int i2) {
        return (int) this.mTransitions.get(generateTransitionKey(i, i2), -1L).longValue();
    }

    boolean isTransitionReversed(int i, int i2) {
        return (this.mTransitions.get(generateTransitionKey(i, i2), -1L).longValue() & 4294967296L) != 0;
    }

    boolean transitionHasReversibleFlag(int i, int i2) {
        return (this.mTransitions.get(generateTransitionKey(i, i2), -1L).longValue() & 8589934592L) != 0;
    }

    @Override // android.support.v7.graphics.drawable.StateListDrawable$StateListState, android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable() {
        return new AnimatedStateListDrawableCompat(this, null);
    }

    @Override // android.support.v7.graphics.drawable.StateListDrawable$StateListState, android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable(Resources resources) {
        return new AnimatedStateListDrawableCompat(this, resources);
    }
}
