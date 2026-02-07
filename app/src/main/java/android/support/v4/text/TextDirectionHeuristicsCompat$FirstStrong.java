package android.support.v4.text;

/* JADX INFO: loaded from: classes.dex */
class TextDirectionHeuristicsCompat$FirstStrong implements TextDirectionHeuristicsCompat$TextDirectionAlgorithm {
    static final TextDirectionHeuristicsCompat$FirstStrong INSTANCE = new TextDirectionHeuristicsCompat$FirstStrong();

    @Override // android.support.v4.text.TextDirectionHeuristicsCompat$TextDirectionAlgorithm
    public int checkRtl(CharSequence charSequence, int i, int i2) {
        int i3 = i2 + i;
        int iIsRtlTextOrFormat = 2;
        while (i < i3 && iIsRtlTextOrFormat == 2) {
            iIsRtlTextOrFormat = TextDirectionHeuristicsCompat.isRtlTextOrFormat(Character.getDirectionality(charSequence.charAt(i)));
            i++;
        }
        return iIsRtlTextOrFormat;
    }

    private TextDirectionHeuristicsCompat$FirstStrong() {
    }
}
