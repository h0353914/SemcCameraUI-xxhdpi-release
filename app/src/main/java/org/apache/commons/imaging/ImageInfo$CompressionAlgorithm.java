package org.apache.commons.imaging;

/* JADX INFO: loaded from: classes.dex */
public enum ImageInfo$CompressionAlgorithm {
    UNKNOWN("Unknown"),
    NONE("None"),
    LZW("LZW"),
    PACKBITS("PackBits"),
    JPEG("JPEG"),
    RLE("RLE: Run-Length Encoding"),
    ADAPTIVE_RLE("Adaptive RLE"),
    PSD("Photoshop"),
    PNG_FILTER("PNG Filter"),
    CCITT_GROUP_3("CCITT Group 3 1-Dimensional Modified Huffman run-length encoding."),
    CCITT_GROUP_4("CCITT Group 4"),
    CCITT_1D("CCITT 1D");

    private String description;

    ImageInfo$CompressionAlgorithm(String str) {
        this.description = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.description;
    }
}
