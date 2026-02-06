package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.view.AbsSavedState;

@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class RecyclerView$SavedState extends AbsSavedState {
    public static final Parcelable$Creator<RecyclerView$SavedState> CREATOR = new RecyclerView$SavedState$1();
    Parcelable mLayoutState;

    RecyclerView$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.mLayoutState = parcel.readParcelable(classLoader == null ? RecyclerView$LayoutManager.class.getClassLoader() : classLoader);
    }

    RecyclerView$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.mLayoutState, 0);
    }

    void copyFrom(RecyclerView$SavedState recyclerView$SavedState) {
        this.mLayoutState = recyclerView$SavedState.mLayoutState;
    }
}
