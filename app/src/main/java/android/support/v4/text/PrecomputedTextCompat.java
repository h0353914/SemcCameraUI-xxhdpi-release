package android.support.v4.text;

import android.os.Build$VERSION;
import android.support.annotation.GuardedBy;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.annotation.UiThread;
import android.support.v4.os.TraceCompat;
import android.support.v4.util.Preconditions;
import android.text.Layout$Alignment;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.StaticLayout$Builder;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class PrecomputedTextCompat implements Spannable {
    private static final char LINE_FEED = '\n';

    @GuardedBy("sLock")
    @NonNull
    private static Executor sExecutor;
    private static final Object sLock = new Object();

    @NonNull
    private final int[] mParagraphEnds;

    @NonNull
    private final PrecomputedTextCompat$Params mParams;

    @NonNull
    private final Spannable mText;

    @Nullable
    private final PrecomputedText mWrapped;

    public static PrecomputedTextCompat create(@NonNull CharSequence charSequence, @NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params) {
        Preconditions.checkNotNull(charSequence);
        Preconditions.checkNotNull(precomputedTextCompat$Params);
        try {
            TraceCompat.beginSection("PrecomputedText");
            if (Build$VERSION.SDK_INT >= 28 && precomputedTextCompat$Params.mWrapped != null) {
                return new PrecomputedTextCompat(PrecomputedText.create(charSequence, precomputedTextCompat$Params.mWrapped), precomputedTextCompat$Params);
            }
            ArrayList arrayList = new ArrayList();
            int length = charSequence.length();
            int i = 0;
            while (i < length) {
                int iIndexOf = TextUtils.indexOf(charSequence, '\n', i, length);
                i = iIndexOf < 0 ? length : iIndexOf + 1;
                arrayList.add(Integer.valueOf(i));
            }
            int[] iArr = new int[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
            }
            if (Build$VERSION.SDK_INT >= 23) {
                StaticLayout$Builder.obtain(charSequence, 0, charSequence.length(), precomputedTextCompat$Params.getTextPaint(), Integer.MAX_VALUE).setBreakStrategy(precomputedTextCompat$Params.getBreakStrategy()).setHyphenationFrequency(precomputedTextCompat$Params.getHyphenationFrequency()).setTextDirection(precomputedTextCompat$Params.getTextDirection()).build();
            } else if (Build$VERSION.SDK_INT >= 21) {
                new StaticLayout(charSequence, precomputedTextCompat$Params.getTextPaint(), Integer.MAX_VALUE, Layout$Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            }
            return new PrecomputedTextCompat(charSequence, precomputedTextCompat$Params, iArr);
        } finally {
            TraceCompat.endSection();
        }
    }

    private PrecomputedTextCompat(@NonNull CharSequence charSequence, @NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params, @NonNull int[] iArr) {
        this.mText = new SpannableString(charSequence);
        this.mParams = precomputedTextCompat$Params;
        this.mParagraphEnds = iArr;
        this.mWrapped = null;
    }

    @RequiresApi(28)
    private PrecomputedTextCompat(@NonNull PrecomputedText precomputedText, @NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params) {
        this.mText = precomputedText;
        this.mParams = precomputedTextCompat$Params;
        this.mParagraphEnds = null;
        this.mWrapped = precomputedText;
    }

    @RequiresApi(28)
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public PrecomputedText getPrecomputedText() {
        if (this.mText instanceof PrecomputedText) {
            return (PrecomputedText) this.mText;
        }
        return null;
    }

    @NonNull
    public PrecomputedTextCompat$Params getParams() {
        return this.mParams;
    }

    @IntRange(from = 0)
    public int getParagraphCount() {
        if (Build$VERSION.SDK_INT >= 28) {
            return this.mWrapped.getParagraphCount();
        }
        return this.mParagraphEnds.length;
    }

    @IntRange(from = 0)
    public int getParagraphStart(@IntRange(from = 0) int i) {
        Preconditions.checkArgumentInRange(i, 0, getParagraphCount(), "paraIndex");
        if (Build$VERSION.SDK_INT >= 28) {
            return this.mWrapped.getParagraphStart(i);
        }
        if (i == 0) {
            return 0;
        }
        return this.mParagraphEnds[i - 1];
    }

    @IntRange(from = 0)
    public int getParagraphEnd(@IntRange(from = 0) int i) {
        Preconditions.checkArgumentInRange(i, 0, getParagraphCount(), "paraIndex");
        if (Build$VERSION.SDK_INT >= 28) {
            return this.mWrapped.getParagraphEnd(i);
        }
        return this.mParagraphEnds[i];
    }

    private int findParaIndex(@IntRange(from = 0) int i) {
        for (int i2 = 0; i2 < this.mParagraphEnds.length; i2++) {
            if (i < this.mParagraphEnds[i2]) {
                return i2;
            }
        }
        throw new IndexOutOfBoundsException("pos must be less than " + this.mParagraphEnds[this.mParagraphEnds.length - 1] + ", gave " + i);
    }

    @UiThread
    public static Future<PrecomputedTextCompat> getTextFuture(@NonNull CharSequence charSequence, @NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params, @Nullable Executor executor) {
        PrecomputedTextCompat$PrecomputedTextFutureTask precomputedTextCompat$PrecomputedTextFutureTask = new PrecomputedTextCompat$PrecomputedTextFutureTask(precomputedTextCompat$Params, charSequence);
        if (executor == null) {
            synchronized (sLock) {
                if (sExecutor == null) {
                    sExecutor = Executors.newFixedThreadPool(1);
                }
                executor = sExecutor;
            }
        }
        executor.execute(precomputedTextCompat$PrecomputedTextFutureTask);
        return precomputedTextCompat$PrecomputedTextFutureTask;
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build$VERSION.SDK_INT >= 28) {
            this.mWrapped.setSpan(obj, i, i2, i3);
        } else {
            this.mText.setSpan(obj, i, i2, i3);
        }
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build$VERSION.SDK_INT >= 28) {
            this.mWrapped.removeSpan(obj);
        } else {
            this.mText.removeSpan(obj);
        }
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        if (Build$VERSION.SDK_INT >= 28) {
            return (T[]) this.mWrapped.getSpans(i, i2, cls);
        }
        return (T[]) this.mText.getSpans(i, i2, cls);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.mText.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.mText.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.mText.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.mText.nextSpanTransition(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.mText.length();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.mText.charAt(i);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.mText.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.mText.toString();
    }
}
