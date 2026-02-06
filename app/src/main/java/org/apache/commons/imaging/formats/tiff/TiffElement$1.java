package org.apache.commons.imaging.formats.tiff;

import java.util.Comparator;

class TiffElement$1 implements Comparator<TiffElement> {
    TiffElement$1() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(TiffElement tiffElement, TiffElement tiffElement2) {
        return compare2(tiffElement, tiffElement2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(TiffElement tiffElement, TiffElement tiffElement2) {
        if (tiffElement.offset < tiffElement2.offset) {
            return -1;
        }
        return tiffElement.offset > tiffElement2.offset ? 1 : 0;
    }
}
