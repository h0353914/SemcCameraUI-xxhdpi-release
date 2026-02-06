package org.apache.commons.imaging.formats.psd.datareaders;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.common.BinaryFileParser;
import org.apache.commons.imaging.formats.psd.ImageContents;

public interface DataReader {
    void readData(InputStream inputStream, BufferedImage bufferedImage, ImageContents imageContents, BinaryFileParser binaryFileParser) throws IOException, ImageReadException;
}
