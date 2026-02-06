package org.apache.commons.imaging.formats.png.chunks;

import org.apache.commons.imaging.formats.png.PngText;

public abstract class PngTextChunk extends PngChunk {
    public abstract PngText getContents();

    public abstract String getKeyword();

    public abstract String getText();

    public PngTextChunk(int i, int i2, int i3, byte[] bArr) {
        super(i, i2, i3, bArr);
    }
}
