package org.apache.commons.imaging.common;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GenericImageMetadata implements ImageMetadata {
    private static final String NEWLINE = System.getProperty("line.separator");
    private final List<ImageMetadata$ImageMetadataItem> items = new ArrayList();

    public void add(String str, String str2) {
        add(new GenericImageMetadata$GenericImageMetadataItem(str, str2));
    }

    public void add(ImageMetadata$ImageMetadataItem imageMetadata$ImageMetadataItem) {
        this.items.add(imageMetadata$ImageMetadataItem);
    }

    @Override // org.apache.commons.imaging.common.ImageMetadata
    public List<? extends ImageMetadata$ImageMetadataItem> getItems() {
        return new ArrayList(this.items);
    }

    public String toString() {
        return toString(null);
    }

    @Override // org.apache.commons.imaging.common.ImageMetadata
    public String toString(String str) {
        if (str == null) {
            str = "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.items.size(); i++) {
            if (i > 0) {
                sb.append(NEWLINE);
            }
            sb.append(this.items.get(i).toString(str + "\t"));
        }
        return sb.toString();
    }
}
