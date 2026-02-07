package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzx;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class zzlp extends Fragment implements DialogInterface$OnCancelListener {
    private static final GoogleApiAvailability zzacJ = GoogleApiAvailability.getInstance();
    private boolean mStarted;
    private boolean zzacK;
    private ConnectionResult zzacM;
    private zzll zzacO;
    private int zzacL = -1;
    private final Handler zzacN = new Handler(Looper.getMainLooper());
    private final SparseArray<zzlp$zza> zzacP = new SparseArray<>();

    static /* synthetic */ int zza(zzlp zzlpVar, int i) {
        zzlpVar.zzacL = i;
        return i;
    }

    static /* synthetic */ ConnectionResult zza(zzlp zzlpVar, ConnectionResult connectionResult) {
        zzlpVar.zzacM = connectionResult;
        return connectionResult;
    }

    static /* synthetic */ zzll zza(zzlp zzlpVar, zzll zzllVar) {
        zzlpVar.zzacO = zzllVar;
        return zzllVar;
    }

    public static zzlp zza(FragmentActivity fragmentActivity) {
        zzx.zzci("Must be called from main thread of process");
        try {
            zzlp zzlpVar = (zzlp) fragmentActivity.getSupportFragmentManager().findFragmentByTag("GmsSupportLifecycleFragment");
            if (zzlpVar == null || zzlpVar.isRemoving()) {
                return null;
            }
            return zzlpVar;
        } catch (ClassCastException e) {
            throw new IllegalStateException("Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment", e);
        }
    }

    private void zza(int i, ConnectionResult connectionResult) {
        Log.w("GmsSupportLifecycleFragment", "Unresolved error while connecting client. Stopping auto-manage.");
        zzlp$zza zzlp_zza = this.zzacP.get(i);
        if (zzlp_zza != null) {
            zzbp(i);
            GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener = zzlp_zza.zzacS;
            if (googleApiClient$OnConnectionFailedListener != null) {
                googleApiClient$OnConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
        zzok();
    }

    static /* synthetic */ void zza(zzlp zzlpVar, int i, ConnectionResult connectionResult) {
        zzlpVar.zza(i, connectionResult);
    }

    static /* synthetic */ boolean zza(zzlp zzlpVar) {
        return zzlpVar.mStarted;
    }

    static /* synthetic */ boolean zza(zzlp zzlpVar, boolean z) {
        zzlpVar.zzacK = z;
        return z;
    }

    public static zzlp zzb(FragmentActivity fragmentActivity) {
        zzlp zzlpVarZza = zza(fragmentActivity);
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        if (zzlpVarZza != null) {
            return zzlpVarZza;
        }
        zzlp zzlpVar = new zzlp();
        supportFragmentManager.beginTransaction().add(zzlpVar, "GmsSupportLifecycleFragment").commitAllowingStateLoss();
        supportFragmentManager.executePendingTransactions();
        return zzlpVar;
    }

    static /* synthetic */ boolean zzb(zzlp zzlpVar) {
        return zzlpVar.zzacK;
    }

    static /* synthetic */ void zzc(zzlp zzlpVar) {
        zzlpVar.zzok();
    }

    static /* synthetic */ Handler zzd(zzlp zzlpVar) {
        return zzlpVar.zzacN;
    }

    private void zzok() {
        this.zzacK = false;
        this.zzacL = -1;
        this.zzacM = null;
        if (this.zzacO != null) {
            this.zzacO.unregister();
            this.zzacO = null;
        }
        for (int i = 0; i < this.zzacP.size(); i++) {
            this.zzacP.valueAt(i).zzacR.connect();
        }
    }

    static /* synthetic */ GoogleApiAvailability zzol() {
        return zzacJ;
    }

    @Override // android.support.v4.app.Fragment
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (int i = 0; i < this.zzacP.size(); i++) {
            this.zzacP.valueAt(i).dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    @Override // android.support.v4.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onActivityResult(int i, int i2, Intent intent) {
        boolean z = true;
        switch (i) {
            case 1:
                if (i2 != -1) {
                    if (i2 == 0) {
                        this.zzacM = new ConnectionResult(13, null);
                    }
                    z = false;
                }
                break;
            case 2:
                if (zzacJ.isGooglePlayServicesAvailable(getActivity()) != 0) {
                    z = false;
                }
                break;
        }
        if (z) {
            zzok();
        } else {
            zza(this.zzacL, this.zzacM);
        }
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        zza(this.zzacL, new ConnectionResult(13, null));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.zzacK = bundle.getBoolean("resolving_error", false);
            this.zzacL = bundle.getInt("failed_client_id", -1);
            if (this.zzacL >= 0) {
                this.zzacM = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.zzacK);
        if (this.zzacL >= 0) {
            bundle.putInt("failed_client_id", this.zzacL);
            bundle.putInt("failed_status", this.zzacM.getErrorCode());
            bundle.putParcelable("failed_resolution", this.zzacM.getResolution());
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.mStarted = true;
        if (this.zzacK) {
            return;
        }
        for (int i = 0; i < this.zzacP.size(); i++) {
            this.zzacP.valueAt(i).zzacR.connect();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this.mStarted = false;
        for (int i = 0; i < this.zzacP.size(); i++) {
            this.zzacP.valueAt(i).zzacR.disconnect();
        }
    }

    public void zza(int i, GoogleApiClient googleApiClient, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        zzx.zzb(googleApiClient, "GoogleApiClient instance cannot be null");
        zzx.zza(this.zzacP.indexOfKey(i) < 0, "Already managing a GoogleApiClient with id " + i);
        this.zzacP.put(i, new zzlp$zza(this, i, googleApiClient, googleApiClient$OnConnectionFailedListener));
        if (!this.mStarted || this.zzacK) {
            return;
        }
        googleApiClient.connect();
    }

    public void zzbp(int i) {
        zzlp$zza zzlp_zza = this.zzacP.get(i);
        this.zzacP.remove(i);
        if (zzlp_zza != null) {
            zzlp_zza.zzom();
        }
    }
}
