package org.apache.commons.imaging.formats.tiff;

/* JADX INFO: loaded from: classes.dex */
class TiffReader$FirstDirectoryCollector extends TiffReader$Collector {
    private final boolean readImageData;

    public TiffReader$FirstDirectoryCollector(boolean z) {
        this.readImageData = z;
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffReader$Collector, org.apache.commons.imaging.formats.tiff.TiffReader$Listener
    public boolean addDirectory(TiffDirectory tiffDirectory) {
        super.addDirectory(tiffDirectory);
        return false;
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffReader$Collector, org.apache.commons.imaging.formats.tiff.TiffReader$Listener
    public boolean readImageData() {
        return this.readImageData;
    }
}
