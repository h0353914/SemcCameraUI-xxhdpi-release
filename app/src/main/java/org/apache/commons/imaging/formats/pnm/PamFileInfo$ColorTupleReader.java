package org.apache.commons.imaging.formats.pnm;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.imaging.ImageInfo$ColorType;

/* JADX INFO: loaded from: classes.dex */
class PamFileInfo$ColorTupleReader extends PamFileInfo$TupleReader {
    final /* synthetic */ PamFileInfo this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private PamFileInfo$ColorTupleReader(PamFileInfo pamFileInfo) {
        super(pamFileInfo, null);
        this.this$0 = pamFileInfo;
    }

    /* synthetic */ PamFileInfo$ColorTupleReader(PamFileInfo pamFileInfo, PamFileInfo$1 pamFileInfo$1) {
        this(pamFileInfo);
    }

    @Override // org.apache.commons.imaging.formats.pnm.PamFileInfo$TupleReader
    public ImageInfo$ColorType getColorType() {
        return ImageInfo$ColorType.RGB;
    }

    @Override // org.apache.commons.imaging.formats.pnm.PamFileInfo$TupleReader
    public int getRGB(InputStream inputStream) throws IOException {
        int sample = FileInfo.readSample(inputStream, PamFileInfo.access$200(this.this$0));
        int sample2 = FileInfo.readSample(inputStream, PamFileInfo.access$200(this.this$0));
        int sample3 = FileInfo.readSample(inputStream, PamFileInfo.access$200(this.this$0));
        return (((PamFileInfo.access$500(this.this$0) ? FileInfo.scaleSample(FileInfo.readSample(inputStream, PamFileInfo.access$200(this.this$0)), PamFileInfo.access$300(this.this$0), PamFileInfo.access$400(this.this$0)) : 255) & 255) << 24) | ((255 & FileInfo.scaleSample(sample, PamFileInfo.access$300(this.this$0), PamFileInfo.access$400(this.this$0))) << 16) | ((255 & FileInfo.scaleSample(sample2, PamFileInfo.access$300(this.this$0), PamFileInfo.access$400(this.this$0))) << 8) | ((255 & FileInfo.scaleSample(sample3, PamFileInfo.access$300(this.this$0), PamFileInfo.access$400(this.this$0))) << 0);
    }
}
