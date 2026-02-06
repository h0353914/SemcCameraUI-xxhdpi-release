package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.LifecycleDelegate;
import java.util.LinkedList;

public abstract class zza<T extends LifecycleDelegate> {
    private T zzapn;
    private Bundle zzapo;
    private LinkedList<zza$zza> zzapp;
    private final zzf<T> zzapq = new zza$1(this);

    static /* synthetic */ Bundle zza(zza zzaVar, Bundle bundle) {
        zzaVar.zzapo = bundle;
        return bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ LifecycleDelegate zza(zza zzaVar, LifecycleDelegate lifecycleDelegate) {
        zzaVar.zzapn = lifecycleDelegate;
        return lifecycleDelegate;
    }

    static /* synthetic */ LinkedList zza(zza zzaVar) {
        return zzaVar.zzapp;
    }

    private void zza(Bundle bundle, zza$zza zza_zza) {
        if (this.zzapn != null) {
            zza_zza.zzb(this.zzapn);
            return;
        }
        if (this.zzapp == null) {
            this.zzapp = new LinkedList<>();
        }
        this.zzapp.add(zza_zza);
        if (bundle != null) {
            if (this.zzapo == null) {
                this.zzapo = (Bundle) bundle.clone();
            } else {
                this.zzapo.putAll(bundle);
            }
        }
        zza(this.zzapq);
    }

    static /* synthetic */ LifecycleDelegate zzb(zza zzaVar) {
        return zzaVar.zzapn;
    }

    public static void zzb(FrameLayout frameLayout) {
        Context context = frameLayout.getContext();
        int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        String strZzc = com.google.android.gms.common.internal.zzg.zzc(context, iIsGooglePlayServicesAvailable, GooglePlayServicesUtil.zzaf(context));
        String strZzh = com.google.android.gms.common.internal.zzg.zzh(context, iIsGooglePlayServicesAvailable);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout$LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout$LayoutParams(-2, -2));
        textView.setText(strZzc);
        linearLayout.addView(textView);
        if (strZzh != null) {
            Button button = new Button(context);
            button.setLayoutParams(new FrameLayout$LayoutParams(-2, -2));
            button.setText(strZzh);
            linearLayout.addView(button);
            button.setOnClickListener(new zza$5(context, iIsGooglePlayServicesAvailable));
        }
    }

    private void zzer(int i) {
        while (!this.zzapp.isEmpty() && this.zzapp.getLast().getState() >= i) {
            this.zzapp.removeLast();
        }
    }

    public void onCreate(Bundle bundle) {
        zza(bundle, new zza$3(this, bundle));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        zza(bundle, new zza$4(this, frameLayout, layoutInflater, viewGroup, bundle));
        if (this.zzapn == null) {
            zza(frameLayout);
        }
        return frameLayout;
    }

    public void onDestroy() {
        if (this.zzapn != null) {
            this.zzapn.onDestroy();
        } else {
            zzer(1);
        }
    }

    public void onDestroyView() {
        if (this.zzapn != null) {
            this.zzapn.onDestroyView();
        } else {
            zzer(2);
        }
    }

    public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
        zza(bundle2, new zza$2(this, activity, bundle, bundle2));
    }

    public void onLowMemory() {
        if (this.zzapn != null) {
            this.zzapn.onLowMemory();
        }
    }

    public void onPause() {
        if (this.zzapn != null) {
            this.zzapn.onPause();
        } else {
            zzer(5);
        }
    }

    public void onResume() {
        zza((Bundle) null, new zza$7(this));
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (this.zzapn != null) {
            this.zzapn.onSaveInstanceState(bundle);
        } else if (this.zzapo != null) {
            bundle.putAll(this.zzapo);
        }
    }

    public void onStart() {
        zza((Bundle) null, new zza$6(this));
    }

    public void onStop() {
        if (this.zzapn != null) {
            this.zzapn.onStop();
        } else {
            zzer(4);
        }
    }

    protected void zza(FrameLayout frameLayout) {
        zzb(frameLayout);
    }

    protected abstract void zza(zzf<T> zzfVar);

    public T zzrZ() {
        return this.zzapn;
    }
}
