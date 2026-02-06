package org.apache.commons.imaging.formats.pnm;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.imaging.ImageInfo$ColorType;

abstract class PamFileInfo$TupleReader {
    final /* synthetic */ PamFileInfo this$0;

    public abstract ImageInfo$ColorType getColorType();

    public abstract int getRGB(InputStream inputStream) throws IOException;

    private PamFileInfo$TupleReader(PamFileInfo pamFileInfo) {
        this.this$0 = pamFileInfo;
    }

    /* synthetic */ PamFileInfo$TupleReader(PamFileInfo pamFileInfo, PamFileInfo$1 pamFileInfo$1) {
        this(pamFileInfo);
    }
}
