package android.support.v4.text;

import android.os.Build$VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.util.ObjectsCompat;
import android.text.PrecomputedText$Params;
import android.text.PrecomputedText$Params$Builder;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;

public final class PrecomputedTextCompat$Params {
    private final int mBreakStrategy;
    private final int mHyphenationFrequency;

    @NonNull
    private final TextPaint mPaint;

    @Nullable
    private final TextDirectionHeuristic mTextDir;
    final PrecomputedText$Params mWrapped;

    PrecomputedTextCompat$Params(@NonNull TextPaint textPaint, @NonNull TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
        if (Build$VERSION.SDK_INT >= 28) {
            this.mWrapped = new PrecomputedText$Params$Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
        } else {
            this.mWrapped = null;
        }
        this.mPaint = textPaint;
        this.mTextDir = textDirectionHeuristic;
        this.mBreakStrategy = i;
        this.mHyphenationFrequency = i2;
    }

    @RequiresApi(28)
    public PrecomputedTextCompat$Params(@NonNull PrecomputedText$Params precomputedText$Params) {
        this.mPaint = precomputedText$Params.getTextPaint();
        this.mTextDir = precomputedText$Params.getTextDirection();
        this.mBreakStrategy = precomputedText$Params.getBreakStrategy();
        this.mHyphenationFrequency = precomputedText$Params.getHyphenationFrequency();
        this.mWrapped = precomputedText$Params;
    }

    @NonNull
    public TextPaint getTextPaint() {
        return this.mPaint;
    }

    @RequiresApi(18)
    @Nullable
    public TextDirectionHeuristic getTextDirection() {
        return this.mTextDir;
    }

    @RequiresApi(23)
    public int getBreakStrategy() {
        return this.mBreakStrategy;
    }

    @RequiresApi(23)
    public int getHyphenationFrequency() {
        return this.mHyphenationFrequency;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PrecomputedTextCompat$Params)) {
            return false;
        }
        PrecomputedTextCompat$Params precomputedTextCompat$Params = (PrecomputedTextCompat$Params) obj;
        if (this.mWrapped != null) {
            return this.mWrapped.equals(precomputedTextCompat$Params.mWrapped);
        }
        if (Build$VERSION.SDK_INT >= 23 && (this.mBreakStrategy != precomputedTextCompat$Params.getBreakStrategy() || this.mHyphenationFrequency != precomputedTextCompat$Params.getHyphenationFrequency())) {
            return false;
        }
        if ((Build$VERSION.SDK_INT >= 18 && this.mTextDir != precomputedTextCompat$Params.getTextDirection()) || this.mPaint.getTextSize() != precomputedTextCompat$Params.getTextPaint().getTextSize() || this.mPaint.getTextScaleX() != precomputedTextCompat$Params.getTextPaint().getTextScaleX() || this.mPaint.getTextSkewX() != precomputedTextCompat$Params.getTextPaint().getTextSkewX()) {
            return false;
        }
        if ((Build$VERSION.SDK_INT >= 21 && (this.mPaint.getLetterSpacing() != precomputedTextCompat$Params.getTextPaint().getLetterSpacing() || !TextUtils.equals(this.mPaint.getFontFeatureSettings(), precomputedTextCompat$Params.getTextPaint().getFontFeatureSettings()))) || this.mPaint.getFlags() != precomputedTextCompat$Params.getTextPaint().getFlags()) {
            return false;
        }
        if (Build$VERSION.SDK_INT >= 24) {
            if (!this.mPaint.getTextLocales().equals(precomputedTextCompat$Params.getTextPaint().getTextLocales())) {
                return false;
            }
        } else if (Build$VERSION.SDK_INT >= 17 && !this.mPaint.getTextLocale().equals(precomputedTextCompat$Params.getTextPaint().getTextLocale())) {
            return false;
        }
        if (this.mPaint.getTypeface() == null) {
            if (precomputedTextCompat$Params.getTextPaint().getTypeface() != null) {
                return false;
            }
        } else if (!this.mPaint.getTypeface().equals(precomputedTextCompat$Params.getTextPaint().getTypeface())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        if (Build$VERSION.SDK_INT >= 24) {
            return ObjectsCompat.hash(Float.valueOf(this.mPaint.getTextSize()), Float.valueOf(this.mPaint.getTextScaleX()), Float.valueOf(this.mPaint.getTextSkewX()), Float.valueOf(this.mPaint.getLetterSpacing()), Integer.valueOf(this.mPaint.getFlags()), this.mPaint.getTextLocales(), this.mPaint.getTypeface(), Boolean.valueOf(this.mPaint.isElegantTextHeight()), this.mTextDir, Integer.valueOf(this.mBreakStrategy), Integer.valueOf(this.mHyphenationFrequency));
        }
        if (Build$VERSION.SDK_INT >= 21) {
            return ObjectsCompat.hash(Float.valueOf(this.mPaint.getTextSize()), Float.valueOf(this.mPaint.getTextScaleX()), Float.valueOf(this.mPaint.getTextSkewX()), Float.valueOf(this.mPaint.getLetterSpacing()), Integer.valueOf(this.mPaint.getFlags()), this.mPaint.getTextLocale(), this.mPaint.getTypeface(), Boolean.valueOf(this.mPaint.isElegantTextHeight()), this.mTextDir, Integer.valueOf(this.mBreakStrategy), Integer.valueOf(this.mHyphenationFrequency));
        }
        if (Build$VERSION.SDK_INT >= 18) {
            return ObjectsCompat.hash(Float.valueOf(this.mPaint.getTextSize()), Float.valueOf(this.mPaint.getTextScaleX()), Float.valueOf(this.mPaint.getTextSkewX()), Integer.valueOf(this.mPaint.getFlags()), this.mPaint.getTextLocale(), this.mPaint.getTypeface(), this.mTextDir, Integer.valueOf(this.mBreakStrategy), Integer.valueOf(this.mHyphenationFrequency));
        }
        if (Build$VERSION.SDK_INT >= 17) {
            return ObjectsCompat.hash(Float.valueOf(this.mPaint.getTextSize()), Float.valueOf(this.mPaint.getTextScaleX()), Float.valueOf(this.mPaint.getTextSkewX()), Integer.valueOf(this.mPaint.getFlags()), this.mPaint.getTextLocale(), this.mPaint.getTypeface(), this.mTextDir, Integer.valueOf(this.mBreakStrategy), Integer.valueOf(this.mHyphenationFrequency));
        }
        return ObjectsCompat.hash(Float.valueOf(this.mPaint.getTextSize()), Float.valueOf(this.mPaint.getTextScaleX()), Float.valueOf(this.mPaint.getTextSkewX()), Integer.valueOf(this.mPaint.getFlags()), this.mPaint.getTypeface(), this.mTextDir, Integer.valueOf(this.mBreakStrategy), Integer.valueOf(this.mHyphenationFrequency));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{");
        sb.append("textSize=" + this.mPaint.getTextSize());
        sb.append(", textScaleX=" + this.mPaint.getTextScaleX());
        sb.append(", textSkewX=" + this.mPaint.getTextSkewX());
        if (Build$VERSION.SDK_INT >= 21) {
            sb.append(", letterSpacing=" + this.mPaint.getLetterSpacing());
            sb.append(", elegantTextHeight=" + this.mPaint.isElegantTextHeight());
        }
        if (Build$VERSION.SDK_INT >= 24) {
            sb.append(", textLocale=" + this.mPaint.getTextLocales());
        } else if (Build$VERSION.SDK_INT >= 17) {
            sb.append(", textLocale=" + this.mPaint.getTextLocale());
        }
        sb.append(", typeface=" + this.mPaint.getTypeface());
        if (Build$VERSION.SDK_INT >= 26) {
            sb.append(", variationSettings=" + this.mPaint.getFontVariationSettings());
        }
        sb.append(", textDir=" + this.mTextDir);
        sb.append(", breakStrategy=" + this.mBreakStrategy);
        sb.append(", hyphenationFrequency=" + this.mHyphenationFrequency);
        sb.append("}");
        return sb.toString();
    }
}
