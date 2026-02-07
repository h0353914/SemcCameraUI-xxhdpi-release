package com.google.android.gms.common.images;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class ImageManager$ImageReceiver extends ResultReceiver {
    private final Uri mUri;
    private final ArrayList<zza> zzadQ;
    final /* synthetic */ ImageManager zzadR;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ImageManager$ImageReceiver(ImageManager imageManager, Uri uri) {
        super(new Handler(Looper.getMainLooper()));
        this.zzadR = imageManager;
        this.mUri = uri;
        this.zzadQ = new ArrayList<>();
    }

    static /* synthetic */ ArrayList zza(ImageManager$ImageReceiver imageManager$ImageReceiver) {
        return imageManager$ImageReceiver.zzadQ;
    }

    @Override // android.os.ResultReceiver
    public void onReceiveResult(int i, Bundle bundle) {
        ImageManager.zzf(this.zzadR).execute(new ImageManager$zzc(this.zzadR, this.mUri, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
    }

    public void zzb(zza zzaVar) {
        com.google.android.gms.common.internal.zzb.zzci("ImageReceiver.addImageRequest() must be called in the main thread");
        this.zzadQ.add(zzaVar);
    }

    public void zzc(zza zzaVar) {
        com.google.android.gms.common.internal.zzb.zzci("ImageReceiver.removeImageRequest() must be called in the main thread");
        this.zzadQ.remove(zzaVar);
    }

    public void zzoE() {
        Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
        intent.putExtra("com.google.android.gms.extras.uri", this.mUri);
        intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
        intent.putExtra("com.google.android.gms.extras.priority", 3);
        ImageManager.zzb(this.zzadR).sendBroadcast(intent);
    }
}
