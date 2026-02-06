package android.support.v4.content.res;

import android.support.annotation.NonNull;
import android.support.v4.provider.FontRequest;

public final class FontResourcesParserCompat$ProviderResourceEntry implements FontResourcesParserCompat$FamilyResourceEntry {

    @NonNull
    private final FontRequest mRequest;
    private final int mStrategy;
    private final int mTimeoutMs;

    public FontResourcesParserCompat$ProviderResourceEntry(@NonNull FontRequest fontRequest, int i, int i2) {
        this.mRequest = fontRequest;
        this.mStrategy = i;
        this.mTimeoutMs = i2;
    }

    @NonNull
    public FontRequest getRequest() {
        return this.mRequest;
    }

    public int getFetchStrategy() {
        return this.mStrategy;
    }

    public int getTimeout() {
        return this.mTimeoutMs;
    }
}
