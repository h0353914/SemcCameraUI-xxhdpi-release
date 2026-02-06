package org.apache.commons.imaging.formats.psd.dataparsers;

import org.apache.commons.imaging.formats.psd.ImageContents;

public class DataParserRgb extends DataParser {
    @Override // org.apache.commons.imaging.formats.psd.dataparsers.DataParser
    public int getBasicChannelsCount() {
        return 3;
    }

    @Override // org.apache.commons.imaging.formats.psd.dataparsers.DataParser
    protected int getRGB(int[][][] iArr, int i, int i2, ImageContents imageContents) {
        int i3 = iArr[0][i2][i] & 255;
        int i4 = iArr[1][i2][i] & 255;
        return (((iArr[2][i2][i] & 255) & 255) << 0) | ((255 & i3) << 16) | (-16777216) | ((255 & i4) << 8);
    }
}
