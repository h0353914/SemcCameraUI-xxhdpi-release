package android.support.v4.provider;

import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

public class FontsContractCompat$FontFamilyResult {
    public static final int STATUS_OK = 0;
    public static final int STATUS_UNEXPECTED_DATA_PROVIDED = 2;
    public static final int STATUS_WRONG_CERTIFICATES = 1;
    private final FontsContractCompat$FontInfo[] mFonts;
    private final int mStatusCode;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public FontsContractCompat$FontFamilyResult(int i, @Nullable FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr) {
        this.mStatusCode = i;
        this.mFonts = fontsContractCompat$FontInfoArr;
    }

    public int getStatusCode() {
        return this.mStatusCode;
    }

    public FontsContractCompat$FontInfo[] getFonts() {
        return this.mFonts;
    }
}
