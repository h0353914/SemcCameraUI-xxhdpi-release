package org.apache.commons.imaging.formats.ico;

import java.awt.image.BufferedImage;
import java.io.PrintWriter;

class IcoImageParser$PNGIconData extends IcoImageParser$IconData {
    public final BufferedImage bufferedImage;

    public IcoImageParser$PNGIconData(IcoImageParser$IconInfo icoImageParser$IconInfo, BufferedImage bufferedImage) {
        super(icoImageParser$IconInfo);
        this.bufferedImage = bufferedImage;
    }

    @Override // org.apache.commons.imaging.formats.ico.IcoImageParser$IconData
    public BufferedImage readBufferedImage() {
        return this.bufferedImage;
    }

    @Override // org.apache.commons.imaging.formats.ico.IcoImageParser$IconData
    protected void dumpSubclass(PrintWriter printWriter) {
        printWriter.println("PNGIconData");
        printWriter.println();
    }
}
