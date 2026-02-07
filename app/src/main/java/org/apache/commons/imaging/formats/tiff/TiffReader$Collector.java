package org.apache.commons.imaging.formats.tiff;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class TiffReader$Collector implements TiffReader$Listener {
    private final List<TiffDirectory> directories;
    private final List<TiffField> fields;
    private final boolean readThumbnails;
    private TiffHeader tiffHeader;

    @Override // org.apache.commons.imaging.formats.tiff.TiffReader$Listener
    public boolean readOffsetDirectories() {
        return true;
    }

    public TiffReader$Collector() {
        this(null);
    }

    public TiffReader$Collector(Map<String, Object> map) {
        this.directories = new ArrayList();
        this.fields = new ArrayList();
        this.readThumbnails = (map == null || !map.containsKey("READ_THUMBNAILS")) ? true : Boolean.TRUE.equals(map.get("READ_THUMBNAILS"));
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffReader$Listener
    public boolean setTiffHeader(TiffHeader tiffHeader) {
        this.tiffHeader = tiffHeader;
        return true;
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffReader$Listener
    public boolean addDirectory(TiffDirectory tiffDirectory) {
        this.directories.add(tiffDirectory);
        return true;
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffReader$Listener
    public boolean addField(TiffField tiffField) {
        this.fields.add(tiffField);
        return true;
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffReader$Listener
    public boolean readImageData() {
        return this.readThumbnails;
    }

    public TiffContents getContents() {
        return new TiffContents(this.tiffHeader, this.directories);
    }
}
