package android.support.v4.provider;

import android.graphics.Typeface;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

public class FontsContractCompat$FontRequestCallback {
    public static final int FAIL_REASON_FONT_LOAD_ERROR = -3;
    public static final int FAIL_REASON_FONT_NOT_FOUND = 1;
    public static final int FAIL_REASON_FONT_UNAVAILABLE = 2;
    public static final int FAIL_REASON_MALFORMED_QUERY = 3;
    public static final int FAIL_REASON_PROVIDER_NOT_FOUND = -1;
    public static final int FAIL_REASON_SECURITY_VIOLATION = -4;
    public static final int FAIL_REASON_WRONG_CERTIFICATES = -2;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final int RESULT_OK = 0;

    public void onTypefaceRequestFailed(int i) {
    }

    public void onTypefaceRetrieved(Typeface typeface) {
    }
}
