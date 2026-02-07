package org.apache.commons.imaging.formats.jpeg.exif;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.common.BinaryFileParser;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.common.ByteConversions;
import org.apache.commons.imaging.common.bytesource.ByteSource;
import org.apache.commons.imaging.common.bytesource.ByteSourceArray;
import org.apache.commons.imaging.common.bytesource.ByteSourceFile;
import org.apache.commons.imaging.common.bytesource.ByteSourceInputStream;
import org.apache.commons.imaging.formats.jpeg.JpegConstants;
import org.apache.commons.imaging.formats.jpeg.JpegUtils;
import org.apache.commons.imaging.formats.tiff.write.TiffImageWriterBase;
import org.apache.commons.imaging.formats.tiff.write.TiffImageWriterLossless;
import org.apache.commons.imaging.formats.tiff.write.TiffImageWriterLossy;
import org.apache.commons.imaging.formats.tiff.write.TiffOutputSet;
import org.apache.commons.imaging.util.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class ExifRewriter extends BinaryFileParser {
    public ExifRewriter() {
        this(ByteOrder.BIG_ENDIAN);
    }

    public ExifRewriter(ByteOrder byteOrder) {
        setByteOrder(byteOrder);
    }

    private ExifRewriter$JFIFPieces analyzeJFIF(ByteSource byteSource) throws IOException, ImageReadException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        new JpegUtils().traverseJFIF(byteSource, new ExifRewriter$1(this, arrayList, arrayList2));
        return new ExifRewriter$JFIFPieces(arrayList, arrayList2);
    }

    public void removeExifMetadata(File file, OutputStream outputStream) throws ImageWriteException, IOException, ImageReadException {
        removeExifMetadata(new ByteSourceFile(file), outputStream);
    }

    public void removeExifMetadata(byte[] bArr, OutputStream outputStream) throws ImageWriteException, IOException, ImageReadException {
        removeExifMetadata(new ByteSourceArray(bArr), outputStream);
    }

    public void removeExifMetadata(InputStream inputStream, OutputStream outputStream) throws ImageWriteException, IOException, ImageReadException {
        removeExifMetadata(new ByteSourceInputStream(inputStream, null), outputStream);
    }

    public void removeExifMetadata(ByteSource byteSource, OutputStream outputStream) throws ImageWriteException, IOException, ImageReadException {
        writeSegmentsReplacingExif(outputStream, analyzeJFIF(byteSource).pieces, null);
    }

    public void updateExifMetadataLossless(File file, OutputStream outputStream, TiffOutputSet tiffOutputSet) throws ImageWriteException, IOException, ImageReadException {
        updateExifMetadataLossless(new ByteSourceFile(file), outputStream, tiffOutputSet);
    }

    public void updateExifMetadataLossless(byte[] bArr, OutputStream outputStream, TiffOutputSet tiffOutputSet) throws ImageWriteException, IOException, ImageReadException {
        updateExifMetadataLossless(new ByteSourceArray(bArr), outputStream, tiffOutputSet);
    }

    public void updateExifMetadataLossless(InputStream inputStream, OutputStream outputStream, TiffOutputSet tiffOutputSet) throws ImageWriteException, IOException, ImageReadException {
        updateExifMetadataLossless(new ByteSourceInputStream(inputStream, null), outputStream, tiffOutputSet);
    }

    public void updateExifMetadataLossless(ByteSource byteSource, OutputStream outputStream, TiffOutputSet tiffOutputSet) throws ImageWriteException, IOException, ImageReadException {
        TiffImageWriterBase tiffImageWriterLossy;
        ExifRewriter$JFIFPieces exifRewriter$JFIFPiecesAnalyzeJFIF = analyzeJFIF(byteSource);
        List<ExifRewriter$JFIFPiece> list = exifRewriter$JFIFPiecesAnalyzeJFIF.pieces;
        if (exifRewriter$JFIFPiecesAnalyzeJFIF.exifPieces.size() > 0) {
            tiffImageWriterLossy = new TiffImageWriterLossless(tiffOutputSet.byteOrder, BinaryFunctions.remainingBytes("trimmed exif bytes", ((ExifRewriter$JFIFPieceSegment) exifRewriter$JFIFPiecesAnalyzeJFIF.exifPieces.get(0)).segmentData, 6));
        } else {
            tiffImageWriterLossy = new TiffImageWriterLossy(tiffOutputSet.byteOrder);
        }
        writeSegmentsReplacingExif(outputStream, list, writeExifSegment(tiffImageWriterLossy, tiffOutputSet, true));
    }

    public void updateExifMetadataLossy(byte[] bArr, OutputStream outputStream, TiffOutputSet tiffOutputSet) throws ImageWriteException, IOException, ImageReadException {
        updateExifMetadataLossy(new ByteSourceArray(bArr), outputStream, tiffOutputSet);
    }

    public void updateExifMetadataLossy(InputStream inputStream, OutputStream outputStream, TiffOutputSet tiffOutputSet) throws ImageWriteException, IOException, ImageReadException {
        updateExifMetadataLossy(new ByteSourceInputStream(inputStream, null), outputStream, tiffOutputSet);
    }

    public void updateExifMetadataLossy(File file, OutputStream outputStream, TiffOutputSet tiffOutputSet) throws ImageWriteException, IOException, ImageReadException {
        updateExifMetadataLossy(new ByteSourceFile(file), outputStream, tiffOutputSet);
    }

    public void updateExifMetadataLossy(ByteSource byteSource, OutputStream outputStream, TiffOutputSet tiffOutputSet) throws ImageWriteException, IOException, ImageReadException {
        writeSegmentsReplacingExif(outputStream, analyzeJFIF(byteSource).pieces, writeExifSegment(new TiffImageWriterLossy(tiffOutputSet.byteOrder), tiffOutputSet, true));
    }

    private void writeSegmentsReplacingExif(OutputStream outputStream, List<ExifRewriter$JFIFPiece> list, byte[] bArr) throws ImageWriteException, IOException {
        try {
            JpegConstants.SOI.writeTo(outputStream);
            Iterator<ExifRewriter$JFIFPiece> it = list.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (it.next() instanceof ExifRewriter$JFIFPieceSegmentExif) {
                    z = true;
                }
            }
            if (!z && bArr != null) {
                byte[] bytes = ByteConversions.toBytes((short) -31, getByteOrder());
                if (bArr.length > 65535) {
                    throw new ExifRewriter$ExifOverflowException("APP1 Segment is too long: " + bArr.length);
                }
                list.add(((ExifRewriter$JFIFPieceSegment) list.get(0)).marker == 65504 ? 1 : 0, new ExifRewriter$JFIFPieceSegmentExif(65505, bytes, ByteConversions.toBytes((short) (bArr.length + 2), getByteOrder()), bArr));
            }
            boolean z2 = false;
            for (ExifRewriter$JFIFPiece exifRewriter$JFIFPiece : list) {
                if (!(exifRewriter$JFIFPiece instanceof ExifRewriter$JFIFPieceSegmentExif)) {
                    exifRewriter$JFIFPiece.write(outputStream);
                } else if (!z2) {
                    if (bArr != null) {
                        byte[] bytes2 = ByteConversions.toBytes((short) -31, getByteOrder());
                        if (bArr.length > 65535) {
                            throw new ExifRewriter$ExifOverflowException("APP1 Segment is too long: " + bArr.length);
                        }
                        byte[] bytes3 = ByteConversions.toBytes((short) (bArr.length + 2), getByteOrder());
                        outputStream.write(bytes2);
                        outputStream.write(bytes3);
                        outputStream.write(bArr);
                    }
                    z2 = true;
                }
            }
            IoUtils.closeQuietly(true, outputStream);
        } catch (Throwable th) {
            IoUtils.closeQuietly(false, outputStream);
            throw th;
        }
    }

    private byte[] writeExifSegment(TiffImageWriterBase tiffImageWriterBase, TiffOutputSet tiffOutputSet, boolean z) throws ImageWriteException, IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (z) {
            JpegConstants.EXIF_IDENTIFIER_CODE.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(0);
        }
        tiffImageWriterBase.write(byteArrayOutputStream, tiffOutputSet);
        return byteArrayOutputStream.toByteArray();
    }
}
