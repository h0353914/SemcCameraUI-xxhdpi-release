package org.apache.commons.imaging.formats.psd.datareaders;
import java.io.IOException;

import org.apache.commons.imaging.ImageReadException;

import java.awt.image.BufferedImage;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.ByteOrder;
import org.apache.commons.imaging.common.BinaryFileParser;
import org.apache.commons.imaging.common.mylzw.BitsToByteInputStream;
import org.apache.commons.imaging.common.mylzw.MyBitInputStream;
import org.apache.commons.imaging.formats.psd.ImageContents;
import org.apache.commons.imaging.formats.psd.PsdHeaderInfo;
import org.apache.commons.imaging.formats.psd.dataparsers.DataParser;
import org.apache.commons.imaging.util.IoUtils;

public class UncompressedDataReader implements DataReader {
    private DataParser dataParser;

    public UncompressedDataReader(DataParser dataParser) {
        this.dataParser = dataParser;
    }

    @Override
    public void readData(InputStream inputStream, BufferedImage bufferedImage, ImageContents imageContents, BinaryFileParser binaryFileParser) throws IOException, ImageReadException {
        PsdHeaderInfo psdHeaderInfo = imageContents.header;
        int width = psdHeaderInfo.columns;
        int height = psdHeaderInfo.rows;
        binaryFileParser.setDebug(false);
        int basicChannelsCount = this.dataParser.getBasicChannelsCount();
        int depth = psdHeaderInfo.depth;
        
        BitsToByteInputStream bitsToByteInputStream = new BitsToByteInputStream(new MyBitInputStream(inputStream, ByteOrder.BIG_ENDIAN), 8);
        try {
            int[][][] data = (int[][][]) Array.newInstance(int.class, basicChannelsCount, height, width);
            for (int channel = 0; channel < basicChannelsCount; channel++) {
                for (int y = 0; y < height; y++) {
                    for (int x = 0; x < width; x++) {
                        data[channel][y][x] = (int) bitsToByteInputStream.readBits(depth);
                    }
                }
            }
            this.dataParser.parseData(data, bufferedImage, imageContents);
        } finally {
            IoUtils.closeQuietly(true, bitsToByteInputStream);
        }
    }
}
