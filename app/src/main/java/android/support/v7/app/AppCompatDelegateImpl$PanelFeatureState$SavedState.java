package android.support.v7.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl$PanelFeatureState$SavedState implements Parcelable {
    public static final Parcelable$Creator<AppCompatDelegateImpl$PanelFeatureState$SavedState> CREATOR = new AppCompatDelegateImpl$PanelFeatureState$SavedState$1();
    int featureId;
    boolean isOpen;
    Bundle menuState;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    AppCompatDelegateImpl$PanelFeatureState$SavedState() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.featureId);
        parcel.writeInt(this.isOpen ? 1 : 0);
        if (this.isOpen) {
            parcel.writeBundle(this.menuState);
        }
    }

    static AppCompatDelegateImpl$PanelFeatureState$SavedState readFromParcel(Parcel parcel, ClassLoader classLoader) {
        AppCompatDelegateImpl$PanelFeatureState$SavedState appCompatDelegateImpl$PanelFeatureState$SavedState = new AppCompatDelegateImpl$PanelFeatureState$SavedState();
        appCompatDelegateImpl$PanelFeatureState$SavedState.featureId = parcel.readInt();
        appCompatDelegateImpl$PanelFeatureState$SavedState.isOpen = parcel.readInt() == 1;
        if (appCompatDelegateImpl$PanelFeatureState$SavedState.isOpen) {
            appCompatDelegateImpl$PanelFeatureState$SavedState.menuState = parcel.readBundle(classLoader);
        }
        return appCompatDelegateImpl$PanelFeatureState$SavedState;
    }
}
