package android.support.v4.text;

class TextDirectionHeuristicsCompat$AnyStrong implements TextDirectionHeuristicsCompat$TextDirectionAlgorithm {
    private final boolean mLookForRtl;
    static final TextDirectionHeuristicsCompat$AnyStrong INSTANCE_RTL = new TextDirectionHeuristicsCompat$AnyStrong(true);
    static final TextDirectionHeuristicsCompat$AnyStrong INSTANCE_LTR = new TextDirectionHeuristicsCompat$AnyStrong(false);

    @Override // android.support.v4.text.TextDirectionHeuristicsCompat$TextDirectionAlgorithm
    public int checkRtl(CharSequence charSequence, int i, int i2) {
        int i3 = i2 + i;
        boolean z = false;
        while (i < i3) {
            switch (TextDirectionHeuristicsCompat.isRtlText(Character.getDirectionality(charSequence.charAt(i)))) {
                case 0:
                    if (this.mLookForRtl) {
                        return 0;
                    }
                    z = true;
                    i++;
                    z = z;
                    break;
                case 1:
                    if (!this.mLookForRtl) {
                        return 1;
                    }
                    z = true;
                    i++;
                    z = z;
                    break;
                default:
                    i++;
                    z = z;
                    break;
            }
        }
        if (z) {
            return this.mLookForRtl ? 1 : 0;
        }
        return 2;
    }

    private TextDirectionHeuristicsCompat$AnyStrong(boolean z) {
        this.mLookForRtl = z;
    }
}
