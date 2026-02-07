package org.apache.commons.imaging.formats.pnm;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import org.apache.commons.imaging.ImageWriteException;

/* JADX INFO: loaded from: classes.dex */
interface PnmWriter {
    void writeImage(BufferedImage bufferedImage, OutputStream outputStream, Map<String, Object> map) throws ImageWriteException, IOException;
}
