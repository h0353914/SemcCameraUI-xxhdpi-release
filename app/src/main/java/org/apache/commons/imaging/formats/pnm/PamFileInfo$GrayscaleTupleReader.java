package org.apache.commons.imaging.formats.pnm;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.imaging.ImageInfo$ColorType;

class PamFileInfo$GrayscaleTupleReader extends PamFileInfo$TupleReader {
    private final ImageInfo$ColorType colorType;
    final /* synthetic */ PamFileInfo this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PamFileInfo$GrayscaleTupleReader(PamFileInfo pamFileInfo, ImageInfo$ColorType imageInfo$ColorType) {
        super(pamFileInfo, null);
        this.this$0 = pamFileInfo;
        this.colorType = imageInfo$ColorType;
    }

    @Override // org.apache.commons.imaging.formats.pnm.PamFileInfo$TupleReader
    public ImageInfo$ColorType getColorType() {
        return this.colorType;
    }

    @Override // org.apache.commons.imaging.formats.pnm.PamFileInfo$TupleReader
    public int getRGB(InputStream inputStream) throws IOException {
        int iScaleSample = FileInfo.scaleSample(FileInfo.readSample(inputStream, PamFileInfo.access$200(this.this$0)), PamFileInfo.access$300(this.this$0), PamFileInfo.access$400(this.this$0));
        int iScaleSample2 = PamFileInfo.access$500(this.this$0) ? FileInfo.scaleSample(FileInfo.readSample(inputStream, PamFileInfo.access$200(this.this$0)), PamFileInfo.access$300(this.this$0), PamFileInfo.access$400(this.this$0)) : 255;
        int i = 255 & iScaleSample;
        return ((iScaleSample2 & 255) << 24) | (i << 16) | (i << 8) | (i << 0);
    }
}
