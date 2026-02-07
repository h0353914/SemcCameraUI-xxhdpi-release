package org.apache.commons.imaging.formats.tiff.write;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class TiffOutputDirectory$2 implements Comparator<TiffOutputField> {
    final /* synthetic */ TiffOutputDirectory this$0;

    TiffOutputDirectory$2(TiffOutputDirectory tiffOutputDirectory) {
        this.this$0 = tiffOutputDirectory;
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(TiffOutputField tiffOutputField, TiffOutputField tiffOutputField2) {
        return compare2(tiffOutputField, tiffOutputField2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(TiffOutputField tiffOutputField, TiffOutputField tiffOutputField2) {
        if (tiffOutputField.tag != tiffOutputField2.tag) {
            return tiffOutputField.tag - tiffOutputField2.tag;
        }
        return tiffOutputField.getSortHint() - tiffOutputField2.getSortHint();
    }
}
