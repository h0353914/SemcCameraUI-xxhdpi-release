package android.support.v4.text;

import java.nio.CharBuffer;

/* JADX INFO: loaded from: classes.dex */
abstract class TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl implements TextDirectionHeuristicCompat {
    private final TextDirectionHeuristicsCompat$TextDirectionAlgorithm mAlgorithm;

    protected abstract boolean defaultIsRtl();

    TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl(TextDirectionHeuristicsCompat$TextDirectionAlgorithm textDirectionHeuristicsCompat$TextDirectionAlgorithm) {
        this.mAlgorithm = textDirectionHeuristicsCompat$TextDirectionAlgorithm;
    }

    @Override // android.support.v4.text.TextDirectionHeuristicCompat
    public boolean isRtl(char[] cArr, int i, int i2) {
        return isRtl(CharBuffer.wrap(cArr), i, i2);
    }

    @Override // android.support.v4.text.TextDirectionHeuristicCompat
    public boolean isRtl(CharSequence charSequence, int i, int i2) {
        if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
            throw new IllegalArgumentException();
        }
        if (this.mAlgorithm == null) {
            return defaultIsRtl();
        }
        return doCheck(charSequence, i, i2);
    }

    private boolean doCheck(CharSequence charSequence, int i, int i2) {
        switch (this.mAlgorithm.checkRtl(charSequence, i, i2)) {
            case 0:
                return true;
            case 1:
                return false;
            default:
                return defaultIsRtl();
        }
    }
}
