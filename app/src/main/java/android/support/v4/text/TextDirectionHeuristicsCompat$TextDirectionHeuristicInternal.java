package android.support.v4.text;

class TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal extends TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl {
    private final boolean mDefaultIsRtl;

    TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal(TextDirectionHeuristicsCompat$TextDirectionAlgorithm textDirectionHeuristicsCompat$TextDirectionAlgorithm, boolean z) {
        super(textDirectionHeuristicsCompat$TextDirectionAlgorithm);
        this.mDefaultIsRtl = z;
    }

    @Override // android.support.v4.text.TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl
    protected boolean defaultIsRtl() {
        return this.mDefaultIsRtl;
    }
}
