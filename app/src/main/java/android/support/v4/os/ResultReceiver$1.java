package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable$Creator;

/* JADX INFO: loaded from: classes.dex */
class ResultReceiver$1 implements Parcelable$Creator<ResultReceiver> {
    ResultReceiver$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ ResultReceiver createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ ResultReceiver[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public ResultReceiver createFromParcel(Parcel parcel) {
        return new ResultReceiver(parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public ResultReceiver[] newArray(int i) {
        return new ResultReceiver[i];
    }
}
