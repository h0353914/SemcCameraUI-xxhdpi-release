package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.os.ResultReceiver;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
public final class MediaSessionCompat$ResultReceiverWrapper implements Parcelable {
    public static final Parcelable$Creator<MediaSessionCompat$ResultReceiverWrapper> CREATOR = new MediaSessionCompat$ResultReceiverWrapper$1();
    ResultReceiver mResultReceiver;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MediaSessionCompat$ResultReceiverWrapper(ResultReceiver resultReceiver) {
        this.mResultReceiver = resultReceiver;
    }

    MediaSessionCompat$ResultReceiverWrapper(Parcel parcel) {
        this.mResultReceiver = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.mResultReceiver.writeToParcel(parcel, i);
    }
}
