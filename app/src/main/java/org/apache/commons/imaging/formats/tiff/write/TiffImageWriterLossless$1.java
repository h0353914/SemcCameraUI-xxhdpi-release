package org.apache.commons.imaging.formats.tiff.write;

import java.util.Comparator;
import org.apache.commons.imaging.formats.tiff.TiffElement;

/* JADX INFO: loaded from: classes.dex */
class TiffImageWriterLossless$1 implements Comparator<TiffElement> {
    TiffImageWriterLossless$1() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(TiffElement tiffElement, TiffElement tiffElement2) {
        return compare2(tiffElement, tiffElement2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(TiffElement tiffElement, TiffElement tiffElement2) {
        return tiffElement.length - tiffElement2.length;
    }
}
