















package org.apache.commons.imaging.formats.psd.dataparsers;

import org.apache.commons.imaging.formats.psd.ImageContents;

public class DataParserStub extends DataParser {
    @Override // org.apache.commons.imaging.formats.psd.dataparsers.DataParser
    public int getBasicChannelsCount() {
        return 1;
    }

    @Override // org.apache.commons.imaging.formats.psd.dataparsers.DataParser
    protected int getRGB(int[][][] iArr, int i, int i2, ImageContents imageContents) {
        return 0;
    }
}
