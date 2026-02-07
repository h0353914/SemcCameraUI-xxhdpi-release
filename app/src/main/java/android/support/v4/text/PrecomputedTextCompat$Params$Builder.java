package android.support.v4.text;

import android.os.Build$VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;

/* JADX INFO: loaded from: classes.dex */
public class PrecomputedTextCompat$Params$Builder {
    private int mBreakStrategy;
    private int mHyphenationFrequency;

    @NonNull
    private final TextPaint mPaint;
    private TextDirectionHeuristic mTextDir;

    public PrecomputedTextCompat$Params$Builder(@NonNull TextPaint textPaint) {
        this.mPaint = textPaint;
        if (Build$VERSION.SDK_INT >= 23) {
            this.mBreakStrategy = 1;
            this.mHyphenationFrequency = 1;
        } else {
            this.mHyphenationFrequency = 0;
            this.mBreakStrategy = 0;
        }
        if (Build$VERSION.SDK_INT >= 18) {
            this.mTextDir = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        } else {
            this.mTextDir = null;
        }
    }

    @RequiresApi(23)
    public PrecomputedTextCompat$Params$Builder setBreakStrategy(int i) {
        this.mBreakStrategy = i;
        return this;
    }

    @RequiresApi(23)
    public PrecomputedTextCompat$Params$Builder setHyphenationFrequency(int i) {
        this.mHyphenationFrequency = i;
        return this;
    }

    @RequiresApi(18)
    public PrecomputedTextCompat$Params$Builder setTextDirection(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
        this.mTextDir = textDirectionHeuristic;
        return this;
    }

    @NonNull
    public PrecomputedTextCompat$Params build() {
        return new PrecomputedTextCompat$Params(this.mPaint, this.mTextDir, this.mBreakStrategy, this.mHyphenationFrequency);
    }
}
