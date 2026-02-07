package org.apache.commons.imaging.common;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ImageMetadata {
    List<? extends ImageMetadata$ImageMetadataItem> getItems();

    String toString(String str);
}
