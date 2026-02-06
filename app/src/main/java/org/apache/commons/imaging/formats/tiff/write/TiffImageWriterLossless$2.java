package org.apache.commons.imaging.formats.tiff.write;

import java.util.Comparator;

class TiffImageWriterLossless$2 implements Comparator<TiffOutputItem> {
    TiffImageWriterLossless$2() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(TiffOutputItem tiffOutputItem, TiffOutputItem tiffOutputItem2) {
        return compare2(tiffOutputItem, tiffOutputItem2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(TiffOutputItem tiffOutputItem, TiffOutputItem tiffOutputItem2) {
        return tiffOutputItem.getItemLength() - tiffOutputItem2.getItemLength();
    }
}
