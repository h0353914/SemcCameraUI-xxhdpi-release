package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.os.RemoteException;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class ResultReceiver implements Parcelable {
    public static final Parcelable$Creator<ResultReceiver> CREATOR = new ResultReceiver$1();
    final Handler mHandler;
    final boolean mLocal;
    IResultReceiver mReceiver;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void onReceiveResult(int i, Bundle bundle) {
    }

    public ResultReceiver(Handler handler) {
        this.mLocal = true;
        this.mHandler = handler;
    }

    public void send(int i, Bundle bundle) {
        if (this.mLocal) {
            if (this.mHandler != null) {
                this.mHandler.post(new ResultReceiver$MyRunnable(this, i, bundle));
                return;
            } else {
                onReceiveResult(i, bundle);
                return;
            }
        }
        if (this.mReceiver != null) {
            try {
                this.mReceiver.send(i, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.mReceiver == null) {
                this.mReceiver = new ResultReceiver$MyResultReceiver(this);
            }
            parcel.writeStrongBinder(this.mReceiver.asBinder());
        }
    }

    ResultReceiver(Parcel parcel) {
        this.mLocal = false;
        this.mHandler = null;
        this.mReceiver = IResultReceiver$Stub.asInterface(parcel.readStrongBinder());
    }
}
