package android.support.v4.text;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class BidiFormatter$Builder {
    private int mFlags;
    private boolean mIsRtlContext;
    private TextDirectionHeuristicCompat mTextDirectionHeuristicCompat;

    public BidiFormatter$Builder() {
        initialize(BidiFormatter.isRtlLocale(Locale.getDefault()));
    }

    public BidiFormatter$Builder(boolean z) {
        initialize(z);
    }

    public BidiFormatter$Builder(Locale locale) {
        initialize(BidiFormatter.isRtlLocale(locale));
    }

    private void initialize(boolean z) {
        this.mIsRtlContext = z;
        this.mTextDirectionHeuristicCompat = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
        this.mFlags = 2;
    }

    public BidiFormatter$Builder stereoReset(boolean z) {
        if (z) {
            this.mFlags |= 2;
        } else {
            this.mFlags &= -3;
        }
        return this;
    }

    public BidiFormatter$Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.mTextDirectionHeuristicCompat = textDirectionHeuristicCompat;
        return this;
    }

    private static BidiFormatter getDefaultInstanceFromContext(boolean z) {
        return z ? BidiFormatter.DEFAULT_RTL_INSTANCE : BidiFormatter.DEFAULT_LTR_INSTANCE;
    }

    public BidiFormatter build() {
        if (this.mFlags == 2 && this.mTextDirectionHeuristicCompat == BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC) {
            return getDefaultInstanceFromContext(this.mIsRtlContext);
        }
        return new BidiFormatter(this.mIsRtlContext, this.mFlags, this.mTextDirectionHeuristicCompat);
    }
}
