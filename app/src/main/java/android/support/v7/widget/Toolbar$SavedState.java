package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.v4.view.AbsSavedState;

/* JADX INFO: loaded from: classes.dex */
public class Toolbar$SavedState extends AbsSavedState {
    public static final Parcelable$Creator<Toolbar$SavedState> CREATOR = new Toolbar$SavedState$1();
    int expandedMenuItemId;
    boolean isOverflowOpen;

    public Toolbar$SavedState(Parcel parcel) {
        this(parcel, null);
    }

    public Toolbar$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.expandedMenuItemId = parcel.readInt();
        this.isOverflowOpen = parcel.readInt() != 0;
    }

    public Toolbar$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.expandedMenuItemId);
        parcel.writeInt(this.isOverflowOpen ? 1 : 0);
    }
}
