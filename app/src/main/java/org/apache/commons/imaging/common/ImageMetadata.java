package org.apache.commons.imaging.common;

import java.util.List;

public interface ImageMetadata {
    List<? extends ImageMetadata$ImageMetadataItem> getItems();

    String toString(String str);
}
