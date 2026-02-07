package org.apache.commons.imaging.formats.jpeg.xmp;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.common.BinaryFileParser;
import org.apache.commons.imaging.common.bytesource.ByteSource;
import org.apache.commons.imaging.formats.jpeg.JpegConstants;
import org.apache.commons.imaging.formats.jpeg.JpegUtils;
import org.apache.commons.imaging.util.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class JpegRewriter extends BinaryFileParser {
    private static final ByteOrder JPEG_BYTE_ORDER = ByteOrder.BIG_ENDIAN;
    private static final JpegRewriter$SegmentFilter EXIF_SEGMENT_FILTER = new JpegRewriter$1();
    private static final JpegRewriter$SegmentFilter XMP_SEGMENT_FILTER = new JpegRewriter$2();
    private static final JpegRewriter$SegmentFilter PHOTOSHOP_APP13_SEGMENT_FILTER = new JpegRewriter$3();

    static /* synthetic */ ByteOrder access$000() {
        return JPEG_BYTE_ORDER;
    }

    public JpegRewriter() {
        setByteOrder(JPEG_BYTE_ORDER);
    }

    protected JpegRewriter$JFIFPieces analyzeJFIF(ByteSource byteSource) throws IOException, ImageReadException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        new JpegUtils().traverseJFIF(byteSource, new JpegRewriter$4(this, arrayList, arrayList2));
        return new JpegRewriter$JFIFPieces(arrayList, arrayList2);
    }

    protected <T extends JpegRewriter$JFIFPiece> List<T> removeXmpSegments(List<T> list) {
        return filterSegments(list, XMP_SEGMENT_FILTER);
    }

    protected <T extends JpegRewriter$JFIFPiece> List<T> removePhotoshopApp13Segments(List<T> list) {
        return filterSegments(list, PHOTOSHOP_APP13_SEGMENT_FILTER);
    }

    protected <T extends JpegRewriter$JFIFPiece> List<T> findPhotoshopApp13Segments(List<T> list) {
        return filterSegments(list, PHOTOSHOP_APP13_SEGMENT_FILTER, true);
    }

    protected <T extends JpegRewriter$JFIFPiece> List<T> removeExifSegments(List<T> list) {
        return filterSegments(list, EXIF_SEGMENT_FILTER);
    }

    protected <T extends JpegRewriter$JFIFPiece> List<T> filterSegments(List<T> list, JpegRewriter$SegmentFilter jpegRewriter$SegmentFilter) {
        return filterSegments(list, jpegRewriter$SegmentFilter, false);
    }

    protected <T extends JpegRewriter$JFIFPiece> List<T> filterSegments(List<T> list, JpegRewriter$SegmentFilter jpegRewriter$SegmentFilter, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (T t : list) {
            if (t instanceof JpegRewriter$JFIFPieceSegment) {
                if (jpegRewriter$SegmentFilter.filter((JpegRewriter$JFIFPieceSegment) t) ^ (!z)) {
                    arrayList.add(t);
                }
            } else if (!z) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    protected <T extends JpegRewriter$JFIFPiece, U extends JpegRewriter$JFIFPiece> List<JpegRewriter$JFIFPiece> insertBeforeFirstAppSegments(List<T> list, List<U> list2) throws ImageWriteException {
        int i = -1;
        for (int i2 = 0; i2 < list.size(); i2++) {
            T t = list.get(i2);
            if ((t instanceof JpegRewriter$JFIFPieceSegment) && ((JpegRewriter$JFIFPieceSegment) t).isAppSegment() && i == -1) {
                i = i2;
            }
        }
        ArrayList arrayList = new ArrayList(list);
        if (i == -1) {
            throw new ImageWriteException("JPEG file has no APP segments.");
        }
        arrayList.addAll(i, list2);
        return arrayList;
    }

    protected <T extends JpegRewriter$JFIFPiece, U extends JpegRewriter$JFIFPiece> List<JpegRewriter$JFIFPiece> insertAfterLastAppSegments(List<T> list, List<U> list2) throws ImageWriteException {
        int i = -1;
        for (int i2 = 0; i2 < list.size(); i2++) {
            T t = list.get(i2);
            if ((t instanceof JpegRewriter$JFIFPieceSegment) && ((JpegRewriter$JFIFPieceSegment) t).isAppSegment()) {
                i = i2;
            }
        }
        ArrayList arrayList = new ArrayList(list);
        if (i == -1) {
            if (list.size() < 1) {
                throw new ImageWriteException("JPEG file has no APP segments.");
            }
            arrayList.addAll(1, list2);
        } else {
            arrayList.addAll(i + 1, list2);
        }
        return arrayList;
    }

    protected void writeSegments(OutputStream outputStream, List<? extends JpegRewriter$JFIFPiece> list) throws IOException {
        try {
            JpegConstants.SOI.writeTo(outputStream);
            Iterator<? extends JpegRewriter$JFIFPiece> it = list.iterator();
            while (it.hasNext()) {
                it.next().write(outputStream);
            }
            IoUtils.closeQuietly(true, outputStream);
        } catch (Throwable th) {
            IoUtils.closeQuietly(false, outputStream);
            throw th;
        }
    }
}
