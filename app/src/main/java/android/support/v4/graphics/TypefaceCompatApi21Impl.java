package android.support.v4.graphics;

import android.content.Context;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.provider.FontsContractCompat$FontInfo;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(21)
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
class TypefaceCompatApi21Impl extends TypefaceCompatBaseImpl {
    private static final String TAG = "TypefaceCompatApi21Impl";

    TypefaceCompatApi21Impl() {
    }

    private File getFile(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String str = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(str).st_mode)) {
                return new File(str);
            }
            return null;
        } catch (ErrnoException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[Catch: all -> 0x0061, Throwable -> 0x0064, SYNTHETIC, TRY_LEAVE, TryCatch #1 {all -> 0x0061, blocks: (B:7:0x0018, B:9:0x001e, B:12:0x0025, B:16:0x002f, B:19:0x003e, B:31:0x0054, B:35:0x005d, B:34:0x0059, B:36:0x0060), top: B:52:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[Catch: IOException -> 0x007b, SYNTHETIC, TRY_LEAVE, TryCatch #7 {IOException -> 0x007b, blocks: (B:6:0x000e, B:14:0x002b, B:21:0x0043, B:45:0x006e, B:49:0x0077, B:48:0x0073, B:50:0x007a), top: B:59:0x000e, inners: #4 }] */
    @Override // android.support.v4.graphics.TypefaceCompatBaseImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, @NonNull FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i) throws Throwable {
        Throwable th;
        Throwable th2;
        Throwable th3;
        if (fontsContractCompat$FontInfoArr.length < 1) {
            return null;
        }
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(findBestInfo(fontsContractCompat$FontInfoArr, i).getUri(), "r", cancellationSignal);
            try {
                try {
                    File file = getFile(parcelFileDescriptorOpenFileDescriptor);
                    if (file != null && file.canRead()) {
                        Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                        if (parcelFileDescriptorOpenFileDescriptor != null) {
                            parcelFileDescriptorOpenFileDescriptor.close();
                        }
                        return typefaceCreateFromFile;
                    }
                    FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                    try {
                        Typeface typefaceCreateFromInputStream = super.createFromInputStream(context, fileInputStream);
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        if (parcelFileDescriptorOpenFileDescriptor != null) {
                            parcelFileDescriptorOpenFileDescriptor.close();
                        }
                        return typefaceCreateFromInputStream;
                    } catch (Throwable th4) {
                        th = th4;
                        th3 = null;
                        if (fileInputStream != null) {
                        }
                    }
                } catch (Throwable th5) {
                    th2 = th5;
                    th = null;
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        throw th2;
                    }
                    if (th == null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                        throw th2;
                    }
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                        throw th2;
                    } catch (Throwable th6) {
                        th.addSuppressed(th6);
                        throw th2;
                    }
                }
            } catch (Throwable th7) {
                try {
                    throw th7;
                } catch (Throwable th8) {
                    th = th7;
                    th2 = th8;
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                    }
                }
            }
        } catch (IOException unused) {
            return null;
        }
    }
}
