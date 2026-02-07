package org.apache.commons.imaging.formats.png.scanlinefilters;

import java.io.IOException;
import org.apache.commons.imaging.ImageReadException;

/* JADX INFO: loaded from: classes.dex */
public interface ScanlineFilter {
    void unfilter(byte[] bArr, byte[] bArr2, byte[] bArr3) throws IOException, ImageReadException;
}
