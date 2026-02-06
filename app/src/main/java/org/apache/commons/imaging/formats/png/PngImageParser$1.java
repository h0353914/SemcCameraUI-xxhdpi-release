package org.apache.commons.imaging.formats.png;

/* synthetic */ class PngImageParser$1 {
    static final /* synthetic */ int[] $SwitchMap$org$apache$commons$imaging$formats$png$InterlaceMethod = new int[InterlaceMethod.values().length];
    static final /* synthetic */ int[] $SwitchMap$org$apache$commons$imaging$formats$png$PngColorType;

    static {
        try {
            $SwitchMap$org$apache$commons$imaging$formats$png$InterlaceMethod[InterlaceMethod.NONE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$org$apache$commons$imaging$formats$png$InterlaceMethod[InterlaceMethod.ADAM7.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        $SwitchMap$org$apache$commons$imaging$formats$png$PngColorType = new int[PngColorType.values().length];
        try {
            $SwitchMap$org$apache$commons$imaging$formats$png$PngColorType[PngColorType.GREYSCALE.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            $SwitchMap$org$apache$commons$imaging$formats$png$PngColorType[PngColorType.TRUE_COLOR.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            $SwitchMap$org$apache$commons$imaging$formats$png$PngColorType[PngColorType.INDEXED_COLOR.ordinal()] = 3;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            $SwitchMap$org$apache$commons$imaging$formats$png$PngColorType[PngColorType.GREYSCALE_WITH_ALPHA.ordinal()] = 4;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            $SwitchMap$org$apache$commons$imaging$formats$png$PngColorType[PngColorType.TRUE_COLOR_WITH_ALPHA.ordinal()] = 5;
        } catch (NoSuchFieldError unused7) {
        }
    }
}
