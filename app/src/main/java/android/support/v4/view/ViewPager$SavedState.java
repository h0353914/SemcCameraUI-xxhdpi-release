package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class ViewPager$SavedState extends AbsSavedState {
    public static final Parcelable$Creator<ViewPager$SavedState> CREATOR = new ViewPager$SavedState$1();
    Parcelable adapterState;
    ClassLoader loader;
    int position;

    public ViewPager$SavedState(@NonNull Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.position);
        parcel.writeParcelable(this.adapterState, i);
    }

    public String toString() {
        return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
    }

    ViewPager$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
        this.position = parcel.readInt();
        this.adapterState = parcel.readParcelable(classLoader);
        this.loader = classLoader;
    }
}
