package org.apache.commons.imaging.formats.png;

import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.palette.Palette;

class PngWriter$TransparentPalette implements Palette {
    private final Palette palette;

    PngWriter$TransparentPalette(Palette palette) {
        this.palette = palette;
    }

    @Override // org.apache.commons.imaging.palette.Palette
    public int getEntry(int i) {
        if (i == 0) {
            return 0;
        }
        return this.palette.getEntry(i - 1);
    }

    @Override // org.apache.commons.imaging.palette.Palette
    public int length() {
        return 1 + this.palette.length();
    }

    @Override // org.apache.commons.imaging.palette.Palette
    public int getPaletteIndex(int i) throws ImageWriteException {
        if (i == 0) {
            return 0;
        }
        int paletteIndex = this.palette.getPaletteIndex(i);
        return paletteIndex >= 0 ? 1 + paletteIndex : paletteIndex;
    }
}
