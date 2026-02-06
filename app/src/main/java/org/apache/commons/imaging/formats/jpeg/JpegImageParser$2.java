package org.apache.commons.imaging.formats.jpeg;

import java.io.IOException;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.common.BinaryFunctions;

class JpegImageParser$2 implements JpegUtils$Visitor {
    final /* synthetic */ JpegImageParser this$0;
    final /* synthetic */ boolean[] val$result;

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public boolean beginSOS() {
        return false;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public void visitSOS(int i, byte[] bArr, byte[] bArr2) {
    }

    JpegImageParser$2(JpegImageParser jpegImageParser, boolean[] zArr) {
        this.this$0 = jpegImageParser;
        this.val$result = zArr;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public boolean visitSegment(int i, byte[] bArr, int i2, byte[] bArr2, byte[] bArr3) throws IOException, ImageReadException {
        if (i == 65497) {
            return false;
        }
        if (i != 65505 || !BinaryFunctions.startsWith(bArr3, JpegConstants.EXIF_IDENTIFIER_CODE)) {
            return true;
        }
        this.val$result[0] = true;
        return false;
    }
}
