package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbsSavedState implements Parcelable {
    private final Parcelable mSuperState;
    public static final AbsSavedState EMPTY_STATE = new AbsSavedState$1();
    public static final Parcelable$Creator<AbsSavedState> CREATOR = new AbsSavedState$2();

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* synthetic */ AbsSavedState(AbsSavedState$1 absSavedState$1) {
        this();
    }

    private AbsSavedState() {
        this.mSuperState = null;
    }

    protected AbsSavedState(@NonNull Parcelable parcelable) {
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.mSuperState = parcelable == EMPTY_STATE ? null : parcelable;
    }

    protected AbsSavedState(@NonNull Parcel parcel) {
        this(parcel, null);
    }

    protected AbsSavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.mSuperState = parcelable == null ? EMPTY_STATE : parcelable;
    }

    @Nullable
    public final Parcelable getSuperState() {
        return this.mSuperState;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mSuperState, i);
    }
}
