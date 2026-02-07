package org.apache.commons.imaging.formats.tiff;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public abstract class TiffElement {
    public static final Comparator<TiffElement> COMPARATOR = new TiffElement$1();
    public final int length;
    public final long offset;

    public abstract String getElementDescription(boolean z);

    public TiffElement(long j, int i) {
        this.offset = j;
        this.length = i;
    }

    public String getElementDescription() {
        return getElementDescription(false);
    }
}
