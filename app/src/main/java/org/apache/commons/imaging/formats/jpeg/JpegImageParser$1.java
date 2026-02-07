package org.apache.commons.imaging.formats.jpeg;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.formats.jpeg.segments.App13Segment;
import org.apache.commons.imaging.formats.jpeg.segments.App14Segment;
import org.apache.commons.imaging.formats.jpeg.segments.App2Segment;
import org.apache.commons.imaging.formats.jpeg.segments.ComSegment;
import org.apache.commons.imaging.formats.jpeg.segments.DqtSegment;
import org.apache.commons.imaging.formats.jpeg.segments.JfifSegment;
import org.apache.commons.imaging.formats.jpeg.segments.SofnSegment;
import org.apache.commons.imaging.formats.jpeg.segments.UnknownSegment;

/* JADX INFO: loaded from: classes.dex */
class JpegImageParser$1 implements JpegUtils$Visitor {
    final /* synthetic */ JpegImageParser this$0;
    final /* synthetic */ int[] val$markers;
    final /* synthetic */ JpegImageParser val$parser;
    final /* synthetic */ List val$result;
    final /* synthetic */ boolean val$returnAfterFirst;
    final /* synthetic */ int[] val$sofnSegments;

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public boolean beginSOS() {
        return false;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public void visitSOS(int i, byte[] bArr, byte[] bArr2) {
    }

    JpegImageParser$1(JpegImageParser jpegImageParser, int[] iArr, List list, JpegImageParser jpegImageParser2, int[] iArr2, boolean z) {
        this.this$0 = jpegImageParser;
        this.val$markers = iArr;
        this.val$result = list;
        this.val$parser = jpegImageParser2;
        this.val$sofnSegments = iArr2;
        this.val$returnAfterFirst = z;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public boolean visitSegment(int i, byte[] bArr, int i2, byte[] bArr2, byte[] bArr3) throws IOException, ImageReadException {
        if (i == 65497) {
            return false;
        }
        if (!JpegImageParser.access$000(this.this$0, i, this.val$markers)) {
            return true;
        }
        if (i == 65517) {
            this.val$result.add(new App13Segment(this.val$parser, i, bArr3));
        } else if (i == 65518) {
            this.val$result.add(new App14Segment(i, bArr3));
        } else if (i == 65506) {
            this.val$result.add(new App2Segment(i, bArr3));
        } else if (i == 65504) {
            this.val$result.add(new JfifSegment(i, bArr3));
        } else if (Arrays.binarySearch(this.val$sofnSegments, i) >= 0) {
            this.val$result.add(new SofnSegment(i, bArr3));
        } else if (i == 65499) {
            this.val$result.add(new DqtSegment(i, bArr3));
        } else if (i >= 65505 && i <= 65519) {
            this.val$result.add(new UnknownSegment(i, bArr3));
        } else if (i == 65534) {
            this.val$result.add(new ComSegment(i, bArr3));
        }
        return !this.val$returnAfterFirst;
    }
}
