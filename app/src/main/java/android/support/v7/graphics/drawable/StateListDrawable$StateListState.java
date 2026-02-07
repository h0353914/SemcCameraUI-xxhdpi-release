package android.support.v7.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.util.StateSet;

/* JADX INFO: loaded from: classes.dex */
class StateListDrawable$StateListState extends DrawableContainer$DrawableContainerState {
    int[][] mStateSets;

    StateListDrawable$StateListState(StateListDrawable$StateListState stateListDrawable$StateListState, StateListDrawable stateListDrawable, Resources resources) {
        super(stateListDrawable$StateListState, stateListDrawable, resources);
        if (stateListDrawable$StateListState != null) {
            this.mStateSets = stateListDrawable$StateListState.mStateSets;
        } else {
            this.mStateSets = new int[getCapacity()][];
        }
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer$DrawableContainerState
    void mutate() {
        int[][] iArr = new int[this.mStateSets.length][];
        for (int length = this.mStateSets.length - 1; length >= 0; length--) {
            iArr[length] = this.mStateSets[length] != null ? (int[]) this.mStateSets[length].clone() : null;
        }
        this.mStateSets = iArr;
    }

    int addStateSet(int[] iArr, Drawable drawable) {
        int iAddChild = addChild(drawable);
        this.mStateSets[iAddChild] = iArr;
        return iAddChild;
    }

    int indexOfStateSet(int[] iArr) {
        int[][] iArr2 = this.mStateSets;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                return i;
            }
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable() {
        return new StateListDrawable(this, null);
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable(Resources resources) {
        return new StateListDrawable(this, resources);
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer$DrawableContainerState
    public void growArray(int i, int i2) {
        super.growArray(i, i2);
        int[][] iArr = new int[i2][];
        System.arraycopy(this.mStateSets, 0, iArr, 0, i);
        this.mStateSets = iArr;
    }
}
