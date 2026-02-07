package android.support.v4.provider;

import android.net.Uri;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class FontsContractCompat$FontInfo {
    private final boolean mItalic;
    private final int mResultCode;
    private final int mTtcIndex;
    private final Uri mUri;
    private final int mWeight;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public FontsContractCompat$FontInfo(@NonNull Uri uri, @IntRange(from = 0) int i, @IntRange(from = 1, to = 1000) int i2, boolean z, int i3) {
        this.mUri = (Uri) Preconditions.checkNotNull(uri);
        this.mTtcIndex = i;
        this.mWeight = i2;
        this.mItalic = z;
        this.mResultCode = i3;
    }

    @NonNull
    public Uri getUri() {
        return this.mUri;
    }

    @IntRange(from = 0)
    public int getTtcIndex() {
        return this.mTtcIndex;
    }

    @IntRange(from = 1, to = 1000)
    public int getWeight() {
        return this.mWeight;
    }

    public boolean isItalic() {
        return this.mItalic;
    }

    public int getResultCode() {
        return this.mResultCode;
    }
}
