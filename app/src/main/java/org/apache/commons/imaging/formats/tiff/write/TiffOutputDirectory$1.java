package org.apache.commons.imaging.formats.tiff.write;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class TiffOutputDirectory$1 implements Comparator<TiffOutputDirectory> {
    TiffOutputDirectory$1() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(TiffOutputDirectory tiffOutputDirectory, TiffOutputDirectory tiffOutputDirectory2) {
        return compare2(tiffOutputDirectory, tiffOutputDirectory2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(TiffOutputDirectory tiffOutputDirectory, TiffOutputDirectory tiffOutputDirectory2) {
        if (tiffOutputDirectory.type < tiffOutputDirectory2.type) {
            return -1;
        }
        return tiffOutputDirectory.type > tiffOutputDirectory2.type ? 1 : 0;
    }
}
