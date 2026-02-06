package org.apache.commons.imaging.formats.ico;

import java.awt.image.BufferedImage;
import java.io.PrintWriter;
import org.apache.commons.imaging.ImageReadException;

class IcoImageParser$BitmapIconData extends IcoImageParser$IconData {
    public final BufferedImage bufferedImage;
    public final IcoImageParser$BitmapHeader header;

    public IcoImageParser$BitmapIconData(IcoImageParser$IconInfo icoImageParser$IconInfo, IcoImageParser$BitmapHeader icoImageParser$BitmapHeader, BufferedImage bufferedImage) {
        super(icoImageParser$IconInfo);
        this.header = icoImageParser$BitmapHeader;
        this.bufferedImage = bufferedImage;
    }

    @Override // org.apache.commons.imaging.formats.ico.IcoImageParser$IconData
    public BufferedImage readBufferedImage() throws ImageReadException {
        return this.bufferedImage;
    }

    @Override // org.apache.commons.imaging.formats.ico.IcoImageParser$IconData
    protected void dumpSubclass(PrintWriter printWriter) {
        printWriter.println("BitmapIconData");
        this.header.dump(printWriter);
        printWriter.println();
    }
}
