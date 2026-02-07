package android.support.v4.widget;

import android.graphics.Paint$FontMetricsInt;
import android.graphics.drawable.Drawable;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build$VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.annotation.StyleRes;
import android.support.v4.text.PrecomputedTextCompat;
import android.support.v4.text.PrecomputedTextCompat$Params;
import android.support.v4.text.PrecomputedTextCompat$Params$Builder;
import android.support.v4.util.Preconditions;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.util.Log;
import android.view.ActionMode$Callback;
import android.widget.TextView;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public final class TextViewCompat {
    public static final int AUTO_SIZE_TEXT_TYPE_NONE = 0;
    public static final int AUTO_SIZE_TEXT_TYPE_UNIFORM = 1;
    private static final int LINES = 1;
    private static final String LOG_TAG = "TextViewCompat";
    private static Field sMaxModeField;
    private static boolean sMaxModeFieldFetched;
    private static Field sMaximumField;
    private static boolean sMaximumFieldFetched;
    private static Field sMinModeField;
    private static boolean sMinModeFieldFetched;
    private static Field sMinimumField;
    private static boolean sMinimumFieldFetched;

    private TextViewCompat() {
    }

    private static Field retrieveField(String str) {
        Field declaredField;
        try {
            declaredField = TextView.class.getDeclaredField(str);
            try {
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.e("TextViewCompat", "Could not retrieve " + str + " field.");
            }
        } catch (NoSuchFieldException unused2) {
            declaredField = null;
        }
        return declaredField;
    }

    private static int retrieveIntFromField(Field field, TextView textView) {
        try {
            return field.getInt(textView);
        } catch (IllegalAccessException unused) {
            Log.d("TextViewCompat", "Could not retrieve value of " + field.getName() + " field.");
            return -1;
        }
    }

    public static void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (Build$VERSION.SDK_INT >= 18) {
            textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
            return;
        }
        if (Build$VERSION.SDK_INT >= 17) {
            boolean z = textView.getLayoutDirection() == 1;
            Drawable drawable5 = z ? drawable3 : drawable;
            if (!z) {
                drawable = drawable3;
            }
            textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
            return;
        }
        textView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (Build$VERSION.SDK_INT >= 18) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        if (Build$VERSION.SDK_INT >= 17) {
            boolean z = textView.getLayoutDirection() == 1;
            Drawable drawable5 = z ? drawable3 : drawable;
            if (!z) {
                drawable = drawable3;
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable5, drawable2, drawable, drawable4);
            return;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        if (Build$VERSION.SDK_INT >= 18) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        if (Build$VERSION.SDK_INT >= 17) {
            boolean z = textView.getLayoutDirection() == 1;
            int i5 = z ? i3 : i;
            if (!z) {
                i = i3;
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(i5, i2, i, i4);
            return;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    public static int getMaxLines(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 16) {
            return textView.getMaxLines();
        }
        if (!sMaxModeFieldFetched) {
            sMaxModeField = retrieveField("mMaxMode");
            sMaxModeFieldFetched = true;
        }
        if (sMaxModeField == null || retrieveIntFromField(sMaxModeField, textView) != 1) {
            return -1;
        }
        if (!sMaximumFieldFetched) {
            sMaximumField = retrieveField("mMaximum");
            sMaximumFieldFetched = true;
        }
        if (sMaximumField != null) {
            return retrieveIntFromField(sMaximumField, textView);
        }
        return -1;
    }

    public static int getMinLines(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 16) {
            return textView.getMinLines();
        }
        if (!sMinModeFieldFetched) {
            sMinModeField = retrieveField("mMinMode");
            sMinModeFieldFetched = true;
        }
        if (sMinModeField == null || retrieveIntFromField(sMinModeField, textView) != 1) {
            return -1;
        }
        if (!sMinimumFieldFetched) {
            sMinimumField = retrieveField("mMinimum");
            sMinimumFieldFetched = true;
        }
        if (sMinimumField != null) {
            return retrieveIntFromField(sMinimumField, textView);
        }
        return -1;
    }

    public static void setTextAppearance(@NonNull TextView textView, @StyleRes int i) {
        if (Build$VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    @NonNull
    public static Drawable[] getCompoundDrawablesRelative(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 18) {
            return textView.getCompoundDrawablesRelative();
        }
        if (Build$VERSION.SDK_INT >= 17) {
            boolean z = textView.getLayoutDirection() == 1;
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            if (z) {
                Drawable drawable = compoundDrawables[2];
                Drawable drawable2 = compoundDrawables[0];
                compoundDrawables[0] = drawable;
                compoundDrawables[2] = drawable2;
            }
            return compoundDrawables;
        }
        return textView.getCompoundDrawables();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setAutoSizeTextTypeWithDefaults(@NonNull TextView textView, int i) {
        if (Build$VERSION.SDK_INT >= 27) {
            textView.setAutoSizeTextTypeWithDefaults(i);
        } else if (textView instanceof AutoSizeableTextView) {
            ((AutoSizeableTextView) textView).setAutoSizeTextTypeWithDefaults(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setAutoSizeTextTypeUniformWithConfiguration(@NonNull TextView textView, int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (Build$VERSION.SDK_INT >= 27) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        } else if (textView instanceof AutoSizeableTextView) {
            ((AutoSizeableTextView) textView).setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull TextView textView, @NonNull int[] iArr, int i) throws IllegalArgumentException {
        if (Build$VERSION.SDK_INT >= 27) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        } else if (textView instanceof AutoSizeableTextView) {
            ((AutoSizeableTextView) textView).setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int getAutoSizeTextType(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 27) {
            return textView.getAutoSizeTextType();
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeTextType();
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int getAutoSizeStepGranularity(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 27) {
            return textView.getAutoSizeStepGranularity();
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeStepGranularity();
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int getAutoSizeMinTextSize(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 27) {
            return textView.getAutoSizeMinTextSize();
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeMinTextSize();
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int getAutoSizeMaxTextSize(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 27) {
            return textView.getAutoSizeMaxTextSize();
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeMaxTextSize();
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static int[] getAutoSizeTextAvailableSizes(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 27) {
            return textView.getAutoSizeTextAvailableSizes();
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeTextAvailableSizes();
        }
        return new int[0];
    }

    public static void setCustomSelectionActionModeCallback(@NonNull TextView textView, @NonNull ActionMode$Callback actionMode$Callback) {
        textView.setCustomSelectionActionModeCallback(wrapCustomSelectionActionModeCallback(textView, actionMode$Callback));
    }

    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static ActionMode$Callback wrapCustomSelectionActionModeCallback(@NonNull TextView textView, @NonNull ActionMode$Callback actionMode$Callback) {
        return (Build$VERSION.SDK_INT < 26 || Build$VERSION.SDK_INT > 27 || (actionMode$Callback instanceof TextViewCompat$OreoCallback)) ? actionMode$Callback : new TextViewCompat$OreoCallback(actionMode$Callback, textView);
    }

    public static void setFirstBaselineToTopHeight(@NonNull TextView textView, @IntRange(from = 0) @Px int i) {
        int i2;
        Preconditions.checkArgumentNonnegative(i);
        if (Build$VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i);
            return;
        }
        Paint$FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        if (Build$VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) {
            i2 = fontMetricsInt.top;
        } else {
            i2 = fontMetricsInt.ascent;
        }
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i - (-i2), textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static void setLastBaselineToBottomHeight(@NonNull TextView textView, @IntRange(from = 0) @Px int i) {
        int i2;
        Preconditions.checkArgumentNonnegative(i);
        Paint$FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        if (Build$VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) {
            i2 = fontMetricsInt.bottom;
        } else {
            i2 = fontMetricsInt.descent;
        }
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    public static int getFirstBaselineToTopHeight(@NonNull TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    public static int getLastBaselineToBottomHeight(@NonNull TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    public static void setLineHeight(@NonNull TextView textView, @IntRange(from = 0) @Px int i) {
        Preconditions.checkArgumentNonnegative(i);
        if (i != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i - r0, 1.0f);
        }
    }

    @NonNull
    public static PrecomputedTextCompat$Params getTextMetricsParams(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 28) {
            return new PrecomputedTextCompat$Params(textView.getTextMetricsParams());
        }
        PrecomputedTextCompat$Params$Builder precomputedTextCompat$Params$Builder = new PrecomputedTextCompat$Params$Builder(new TextPaint(textView.getPaint()));
        if (Build$VERSION.SDK_INT >= 23) {
            precomputedTextCompat$Params$Builder.setBreakStrategy(textView.getBreakStrategy());
            precomputedTextCompat$Params$Builder.setHyphenationFrequency(textView.getHyphenationFrequency());
        }
        if (Build$VERSION.SDK_INT >= 18) {
            precomputedTextCompat$Params$Builder.setTextDirection(getTextDirectionHeuristic(textView));
        }
        return precomputedTextCompat$Params$Builder.build();
    }

    public static void setTextMetricsParams(@NonNull TextView textView, @NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params) {
        if (Build$VERSION.SDK_INT >= 18) {
            textView.setTextDirection(getTextDirection(precomputedTextCompat$Params.getTextDirection()));
        }
        if (Build$VERSION.SDK_INT < 23) {
            float textScaleX = precomputedTextCompat$Params.getTextPaint().getTextScaleX();
            textView.getPaint().set(precomputedTextCompat$Params.getTextPaint());
            if (textScaleX == textView.getTextScaleX()) {
                textView.setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            textView.setTextScaleX(textScaleX);
            return;
        }
        textView.getPaint().set(precomputedTextCompat$Params.getTextPaint());
        textView.setBreakStrategy(precomputedTextCompat$Params.getBreakStrategy());
        textView.setHyphenationFrequency(precomputedTextCompat$Params.getHyphenationFrequency());
    }

    public static void setPrecomputedText(@NonNull TextView textView, @NonNull PrecomputedTextCompat precomputedTextCompat) {
        if (Build$VERSION.SDK_INT >= 28) {
            textView.setText(precomputedTextCompat.getPrecomputedText());
        } else {
            if (!getTextMetricsParams(textView).equals(precomputedTextCompat.getParams())) {
                throw new IllegalArgumentException("Given text can not be applied to TextView.");
            }
            textView.setText(precomputedTextCompat);
        }
    }

    @RequiresApi(18)
    private static TextDirectionHeuristic getTextDirectionHeuristic(@NonNull TextView textView) {
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            return TextDirectionHeuristics.LTR;
        }
        if (Build$VERSION.SDK_INT >= 28 && (textView.getInputType() & 15) == 3) {
            byte directionality = Character.getDirectionality(DecimalFormatSymbols.getInstance(textView.getTextLocale()).getDigitStrings()[0].codePointAt(0));
            if (directionality == 1 || directionality == 2) {
                return TextDirectionHeuristics.RTL;
            }
            return TextDirectionHeuristics.LTR;
        }
        boolean z = textView.getLayoutDirection() == 1;
        switch (textView.getTextDirection()) {
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                break;
            default:
                if (!z) {
                }
                break;
        }
        return TextDirectionHeuristics.LTR;
    }

    @RequiresApi(18)
    private static int getTextDirection(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL || textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 1;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
            return 2;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
            return 3;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
            return 4;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
            return 5;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 6;
        }
        return textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL ? 7 : 1;
    }
}
