package org.apache.commons.imaging.palette;

/* JADX INFO: loaded from: classes.dex */
class PaletteFactory$DivisionCandidate {
    private final ColorSpaceSubset dst_a;
    private final ColorSpaceSubset dst_b;

    static /* synthetic */ ColorSpaceSubset access$000(PaletteFactory$DivisionCandidate paletteFactory$DivisionCandidate) {
        return paletteFactory$DivisionCandidate.dst_a;
    }

    static /* synthetic */ ColorSpaceSubset access$100(PaletteFactory$DivisionCandidate paletteFactory$DivisionCandidate) {
        return paletteFactory$DivisionCandidate.dst_b;
    }

    public PaletteFactory$DivisionCandidate(ColorSpaceSubset colorSpaceSubset, ColorSpaceSubset colorSpaceSubset2) {
        this.dst_a = colorSpaceSubset;
        this.dst_b = colorSpaceSubset2;
    }
}
