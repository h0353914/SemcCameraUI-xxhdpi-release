package org.apache.commons.imaging.formats.ico;

import java.awt.image.BufferedImage;
import java.io.PrintWriter;
import org.apache.commons.imaging.ImageReadException;

abstract class IcoImageParser$IconData {
    public final IcoImageParser$IconInfo iconInfo;

    protected abstract void dumpSubclass(PrintWriter printWriter);

    public abstract BufferedImage readBufferedImage() throws ImageReadException;

    public IcoImageParser$IconData(IcoImageParser$IconInfo icoImageParser$IconInfo) {
        this.iconInfo = icoImageParser$IconInfo;
    }

    public void dump(PrintWriter printWriter) {
        this.iconInfo.dump(printWriter);
        printWriter.println();
        dumpSubclass(printWriter);
    }
}
