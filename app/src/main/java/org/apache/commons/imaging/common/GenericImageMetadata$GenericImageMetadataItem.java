package org.apache.commons.imaging.common;

public class GenericImageMetadata$GenericImageMetadataItem implements ImageMetadata$ImageMetadataItem {
    private final String keyword;
    private final String text;

    public GenericImageMetadata$GenericImageMetadataItem(String str, String str2) {
        this.keyword = str;
        this.text = str2;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public String getText() {
        return this.text;
    }

    @Override // org.apache.commons.imaging.common.ImageMetadata$ImageMetadataItem
    public String toString() {
        return toString(null);
    }

    @Override // org.apache.commons.imaging.common.ImageMetadata$ImageMetadataItem
    public String toString(String str) {
        String str2 = this.keyword + ": " + this.text;
        if (str == null) {
            return str2;
        }
        return str + str2;
    }
}
