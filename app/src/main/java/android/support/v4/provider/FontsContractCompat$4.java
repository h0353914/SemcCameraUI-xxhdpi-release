package android.support.v4.provider;

import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.graphics.Typeface;
import android.os.Handler;

class FontsContractCompat$4 implements Runnable {
    final /* synthetic */ FontsContractCompat$FontRequestCallback val$callback;
    final /* synthetic */ Handler val$callerThreadHandler;
    final /* synthetic */ Context val$context;
    final /* synthetic */ FontRequest val$request;

    FontsContractCompat$4(Context context, FontRequest fontRequest, Handler handler, FontsContractCompat$FontRequestCallback fontsContractCompat$FontRequestCallback) {
        this.val$context = context;
        this.val$request = fontRequest;
        this.val$callerThreadHandler = handler;
        this.val$callback = fontsContractCompat$FontRequestCallback;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            FontsContractCompat$FontFamilyResult fontsContractCompat$FontFamilyResultFetchFonts = FontsContractCompat.fetchFonts(this.val$context, null, this.val$request);
            if (fontsContractCompat$FontFamilyResultFetchFonts.getStatusCode() != 0) {
                switch (fontsContractCompat$FontFamilyResultFetchFonts.getStatusCode()) {
                    case 1:
                        this.val$callerThreadHandler.post(new FontsContractCompat$4$2(this));
                        break;
                    case 2:
                        this.val$callerThreadHandler.post(new FontsContractCompat$4$3(this));
                        break;
                    default:
                        this.val$callerThreadHandler.post(new FontsContractCompat$4$4(this));
                        break;
                }
                return;
            }
            FontsContractCompat$FontInfo[] fonts = fontsContractCompat$FontFamilyResultFetchFonts.getFonts();
            if (fonts == null || fonts.length == 0) {
                this.val$callerThreadHandler.post(new FontsContractCompat$4$5(this));
                return;
            }
            for (FontsContractCompat$FontInfo fontsContractCompat$FontInfo : fonts) {
                if (fontsContractCompat$FontInfo.getResultCode() != 0) {
                    int resultCode = fontsContractCompat$FontInfo.getResultCode();
                    if (resultCode < 0) {
                        this.val$callerThreadHandler.post(new FontsContractCompat$4$6(this));
                        return;
                    } else {
                        this.val$callerThreadHandler.post(new FontsContractCompat$4$7(this, resultCode));
                        return;
                    }
                }
            }
            Typeface typefaceBuildTypeface = FontsContractCompat.buildTypeface(this.val$context, null, fonts);
            if (typefaceBuildTypeface == null) {
                this.val$callerThreadHandler.post(new FontsContractCompat$4$8(this));
            } else {
                this.val$callerThreadHandler.post(new FontsContractCompat$4$9(this, typefaceBuildTypeface));
            }
        } catch (PackageManager$NameNotFoundException unused) {
            this.val$callerThreadHandler.post(new FontsContractCompat$4$1(this));
        }
    }
}
