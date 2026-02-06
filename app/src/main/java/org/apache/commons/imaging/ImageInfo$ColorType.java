package org.apache.commons.imaging;

public enum ImageInfo$ColorType {
    BW("Black and White"),
    GRAYSCALE("Grayscale"),
    RGB("RGB"),
    CMYK("CMYK"),
    YCbCr("YCbCr"),
    YCCK("YCCK"),
    YCC("YCC"),
    OTHER("Other"),
    UNKNOWN("Unknown");

    private String description;

    ImageInfo$ColorType(String str) {
        this.description = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.description;
    }
}
