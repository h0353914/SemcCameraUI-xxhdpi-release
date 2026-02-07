package android.support.v4.text;

/* JADX INFO: loaded from: classes.dex */
public final class TextDirectionHeuristicsCompat {
    private static final int STATE_FALSE = 1;
    private static final int STATE_TRUE = 0;
    private static final int STATE_UNKNOWN = 2;
    public static final TextDirectionHeuristicCompat LTR = new TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal(null, false);
    public static final TextDirectionHeuristicCompat RTL = new TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal(null, true);
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_LTR = new TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal(TextDirectionHeuristicsCompat$FirstStrong.INSTANCE, false);
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_RTL = new TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal(TextDirectionHeuristicsCompat$FirstStrong.INSTANCE, true);
    public static final TextDirectionHeuristicCompat ANYRTL_LTR = new TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal(TextDirectionHeuristicsCompat$AnyStrong.INSTANCE_RTL, false);
    public static final TextDirectionHeuristicCompat LOCALE = TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale.INSTANCE;

    static int isRtlText(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
            case 2:
                return 0;
            default:
                return 2;
        }
    }

    static int isRtlTextOrFormat(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
            case 2:
                return 0;
            default:
                switch (i) {
                    case 14:
                    case 15:
                        return 1;
                    case 16:
                    case 17:
                        return 0;
                    default:
                        return 2;
                }
        }
    }

    private TextDirectionHeuristicsCompat() {
    }
}
