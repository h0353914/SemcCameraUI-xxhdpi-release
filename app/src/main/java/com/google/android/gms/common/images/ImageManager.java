package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.google.android.gms.internal.zzlv;
import com.google.android.gms.internal.zzmx;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ImageManager {
    private static final Object zzadG = new Object();
    private static HashSet<Uri> zzadH = new HashSet<>();
    private static ImageManager zzadI;
    private static ImageManager zzadJ;
    private final Context mContext;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final ExecutorService zzadK = Executors.newFixedThreadPool(4);
    private final ImageManager$zzb zzadL;
    private final zzlv zzadM;
    private final Map<zza, ImageManager$ImageReceiver> zzadN;
    private final Map<Uri, ImageManager$ImageReceiver> zzadO;
    private final Map<Uri, Long> zzadP;

    private ImageManager(Context context, boolean z) {
        this.mContext = context.getApplicationContext();
        if (z) {
            this.zzadL = new ImageManager$zzb(this.mContext);
            if (zzmx.zzqx()) {
                zzoB();
            }
        } else {
            this.zzadL = null;
        }
        this.zzadM = new zzlv();
        this.zzadN = new HashMap();
        this.zzadO = new HashMap();
        this.zzadP = new HashMap();
    }

    public static ImageManager create(Context context) {
        return zzb(context, false);
    }

    static /* synthetic */ Bitmap zza(ImageManager imageManager, zza$zza zza_zza) {
        return imageManager.zza(zza_zza);
    }

    private Bitmap zza(zza$zza zza_zza) {
        if (this.zzadL == null) {
            return null;
        }
        return this.zzadL.get(zza_zza);
    }

    static /* synthetic */ Map zza(ImageManager imageManager) {
        return imageManager.zzadN;
    }

    static /* synthetic */ Context zzb(ImageManager imageManager) {
        return imageManager.mContext;
    }

    public static ImageManager zzb(Context context, boolean z) {
        if (z) {
            if (zzadJ == null) {
                zzadJ = new ImageManager(context, true);
            }
            return zzadJ;
        }
        if (zzadI == null) {
            zzadI = new ImageManager(context, false);
        }
        return zzadI;
    }

    static /* synthetic */ zzlv zzc(ImageManager imageManager) {
        return imageManager.zzadM;
    }

    static /* synthetic */ Map zzd(ImageManager imageManager) {
        return imageManager.zzadP;
    }

    static /* synthetic */ Map zze(ImageManager imageManager) {
        return imageManager.zzadO;
    }

    static /* synthetic */ ExecutorService zzf(ImageManager imageManager) {
        return imageManager.zzadK;
    }

    static /* synthetic */ Handler zzg(ImageManager imageManager) {
        return imageManager.mHandler;
    }

    static /* synthetic */ ImageManager$zzb zzh(ImageManager imageManager) {
        return imageManager.zzadL;
    }

    private void zzoB() {
        this.mContext.registerComponentCallbacks(new ImageManager$zze(this.zzadL));
    }

    static /* synthetic */ Object zzoC() {
        return zzadG;
    }

    static /* synthetic */ HashSet zzoD() {
        return zzadH;
    }

    public void loadImage(ImageView imageView, int i) {
        zza(new zza$zzb(imageView, i));
    }

    public void loadImage(ImageView imageView, Uri uri) {
        zza(new zza$zzb(imageView, uri));
    }

    public void loadImage(ImageView imageView, Uri uri, int i) {
        zza$zzb zza_zzb = new zza$zzb(imageView, uri);
        zza_zzb.zzby(i);
        zza(zza_zzb);
    }

    public void loadImage(ImageManager$OnImageLoadedListener imageManager$OnImageLoadedListener, Uri uri) {
        zza(new zza$zzc(imageManager$OnImageLoadedListener, uri));
    }

    public void loadImage(ImageManager$OnImageLoadedListener imageManager$OnImageLoadedListener, Uri uri, int i) {
        zza$zzc zza_zzc = new zza$zzc(imageManager$OnImageLoadedListener, uri);
        zza_zzc.zzby(i);
        zza(zza_zzc);
    }

    public void zza(zza zzaVar) {
        com.google.android.gms.common.internal.zzb.zzci("ImageManager.loadImage() must be called in the main thread");
        new ImageManager$zzd(this, zzaVar).run();
    }
}
