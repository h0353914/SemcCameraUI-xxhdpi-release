package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.v4.view.AbsSavedState;

class SearchView$SavedState extends AbsSavedState {
    public static final Parcelable$Creator<SearchView$SavedState> CREATOR = new SearchView$SavedState$1();
    boolean isIconified;

    SearchView$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    public SearchView$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.isIconified = ((Boolean) parcel.readValue(null)).booleanValue();
    }

    @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeValue(Boolean.valueOf(this.isIconified));
    }

    public String toString() {
        return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.isIconified + "}";
    }
}
