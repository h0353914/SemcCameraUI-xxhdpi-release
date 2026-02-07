package android.support.v4.text;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
class TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale extends TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl {
    static final TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale INSTANCE = new TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale();

    TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale() {
        super(null);
    }

    @Override // android.support.v4.text.TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl
    protected boolean defaultIsRtl() {
        return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }
}
