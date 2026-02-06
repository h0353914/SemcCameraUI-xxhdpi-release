package org.apache.commons.imaging.icc;

import java.io.IOException;
import org.apache.commons.imaging.ImageReadException;

interface IccTagDataType {
    void dump(String str, byte[] bArr) throws IOException, ImageReadException;

    String getName();

    int getSignature();
}
