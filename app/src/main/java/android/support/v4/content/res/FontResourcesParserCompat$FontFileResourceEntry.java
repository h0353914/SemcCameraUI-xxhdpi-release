package android.support.v4.content.res;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public final class FontResourcesParserCompat$FontFileResourceEntry {

    @NonNull
    private final String mFileName;
    private boolean mItalic;
    private int mResourceId;
    private int mTtcIndex;
    private String mVariationSettings;
    private int mWeight;

    public FontResourcesParserCompat$FontFileResourceEntry(@NonNull String str, int i, boolean z, @Nullable String str2, int i2, int i3) {
        this.mFileName = str;
        this.mWeight = i;
        this.mItalic = z;
        this.mVariationSettings = str2;
        this.mTtcIndex = i2;
        this.mResourceId = i3;
    }

    @NonNull
    public String getFileName() {
        return this.mFileName;
    }

    public int getWeight() {
        return this.mWeight;
    }

    public boolean isItalic() {
        return this.mItalic;
    }

    @Nullable
    public String getVariationSettings() {
        return this.mVariationSettings;
    }

    public int getTtcIndex() {
        return this.mTtcIndex;
    }

    public int getResourceId() {
        return this.mResourceId;
    }
}
