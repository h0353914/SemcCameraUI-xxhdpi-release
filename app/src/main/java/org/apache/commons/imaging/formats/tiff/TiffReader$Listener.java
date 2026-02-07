package org.apache.commons.imaging.formats.tiff;

/* JADX INFO: loaded from: classes.dex */
public interface TiffReader$Listener {
    boolean addDirectory(TiffDirectory tiffDirectory);

    boolean addField(TiffField tiffField);

    boolean readImageData();

    boolean readOffsetDirectories();

    boolean setTiffHeader(TiffHeader tiffHeader);
}
