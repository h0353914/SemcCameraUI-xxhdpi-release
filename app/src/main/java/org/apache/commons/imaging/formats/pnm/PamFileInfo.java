package org.apache.commons.imaging.formats.pnm;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.imaging.ImageFormat;
import org.apache.commons.imaging.ImageFormats;
import org.apache.commons.imaging.ImageInfo$ColorType;
import org.apache.commons.imaging.ImageReadException;

class PamFileInfo extends FileInfo {
    private final int bytesPerSample;
    private final int depth;
    private final boolean hasAlpha;
    private final int maxval;
    private final float scale;
    private final PamFileInfo$TupleReader tupleReader;

    @Override // org.apache.commons.imaging.formats.pnm.FileInfo
    public String getImageTypeDescription() {
        return "PAM: portable arbitrary map file format";
    }

    @Override // org.apache.commons.imaging.formats.pnm.FileInfo
    public String getMIMEType() {
        return "image/x-portable-arbitrary-map";
    }

    static /* synthetic */ int access$200(PamFileInfo pamFileInfo) {
        return pamFileInfo.bytesPerSample;
    }

    static /* synthetic */ float access$300(PamFileInfo pamFileInfo) {
        return pamFileInfo.scale;
    }

    static /* synthetic */ int access$400(PamFileInfo pamFileInfo) {
        return pamFileInfo.maxval;
    }

    static /* synthetic */ boolean access$500(PamFileInfo pamFileInfo) {
        return pamFileInfo.hasAlpha;
    }

    PamFileInfo(int i, int i2, int i3, int i4, String str) throws ImageReadException {
        super(i, i2, true);
        this.depth = i3;
        this.maxval = i4;
        if (i4 <= 0) {
            throw new ImageReadException("PAM maxVal " + i4 + " is out of range [1;65535]");
        }
        if (i4 <= 255) {
            this.scale = 255.0f;
            this.bytesPerSample = 1;
        } else if (i4 <= 65535) {
            this.scale = 65535.0f;
            this.bytesPerSample = 2;
        } else {
            throw new ImageReadException("PAM maxVal " + i4 + " is out of range [1;65535]");
        }
        this.hasAlpha = str.endsWith("_ALPHA");
        if ("BLACKANDWHITE".equals(str) || "BLACKANDWHITE_ALPHA".equals(str)) {
            this.tupleReader = new PamFileInfo$GrayscaleTupleReader(this, ImageInfo$ColorType.BW);
            return;
        }
        if ("GRAYSCALE".equals(str) || "GRAYSCALE_ALPHA".equals(str)) {
            this.tupleReader = new PamFileInfo$GrayscaleTupleReader(this, ImageInfo$ColorType.GRAYSCALE);
            return;
        }
        if ("RGB".equals(str) || "RGB_ALPHA".equals(str)) {
            this.tupleReader = new PamFileInfo$ColorTupleReader(this, null);
            return;
        }
        throw new ImageReadException("Unknown PAM tupletype '" + str + "'");
    }

    @Override // org.apache.commons.imaging.formats.pnm.FileInfo
    public boolean hasAlpha() {
        return this.hasAlpha;
    }

    @Override // org.apache.commons.imaging.formats.pnm.FileInfo
    public int getNumComponents() {
        return this.depth;
    }

    @Override // org.apache.commons.imaging.formats.pnm.FileInfo
    public int getBitDepth() {
        return this.maxval;
    }

    @Override // org.apache.commons.imaging.formats.pnm.FileInfo
    public ImageFormat getImageType() {
        return ImageFormats.PAM;
    }

    @Override // org.apache.commons.imaging.formats.pnm.FileInfo
    public ImageInfo$ColorType getColorType() {
        return this.tupleReader.getColorType();
    }

    @Override // org.apache.commons.imaging.formats.pnm.FileInfo
    public int getRGB(WhiteSpaceReader whiteSpaceReader) throws IOException {
        throw new UnsupportedOperationException("PAM files are only ever binary");
    }

    @Override // org.apache.commons.imaging.formats.pnm.FileInfo
    public int getRGB(InputStream inputStream) throws IOException {
        return this.tupleReader.getRGB(inputStream);
    }
}
