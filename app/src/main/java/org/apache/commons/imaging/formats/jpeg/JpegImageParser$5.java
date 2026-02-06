package org.apache.commons.imaging.formats.jpeg;

import java.io.IOException;
import java.util.List;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.formats.jpeg.xmp.JpegXmpParser;

class JpegImageParser$5 implements JpegUtils$Visitor {
    final /* synthetic */ JpegImageParser this$0;
    final /* synthetic */ List val$result;

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public boolean beginSOS() {
        return false;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public void visitSOS(int i, byte[] bArr, byte[] bArr2) {
    }

    JpegImageParser$5(JpegImageParser jpegImageParser, List list) {
        this.this$0 = jpegImageParser;
        this.val$result = list;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public boolean visitSegment(int i, byte[] bArr, int i2, byte[] bArr2, byte[] bArr3) throws IOException, ImageReadException {
        if (i == 65497) {
            return false;
        }
        if (i != 65505 || !new JpegXmpParser().isXmpJpegSegment(bArr3)) {
            return true;
        }
        this.val$result.add(new JpegXmpParser().parseXmpJpegSegment(bArr3));
        return false;
    }
}
