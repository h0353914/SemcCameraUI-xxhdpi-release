package org.apache.commons.imaging.formats.png;

public abstract class PngText {
    public final String keyword;
    public final String text;

    public PngText(String str, String str2) {
        this.keyword = str;
        this.text = str2;
    }
}
