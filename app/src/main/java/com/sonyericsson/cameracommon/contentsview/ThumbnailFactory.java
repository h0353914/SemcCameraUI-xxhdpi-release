package com.sonyericsson.cameracommon.contentsview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory$Options;
import android.graphics.Matrix;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentInfo;
import java.io.IOException;

public class ThumbnailFactory {
    private static final int MAX_NUM_PIXELS_MICRO_THUMBNAIL = 19200;
    public static final String TAG = "ThumbnailFactory";
    public static final int TARGET_SIZE_MICRO_THUMBNAIL = 96;
    private static final int UNCONSTRAINED = -1;

    public static Bitmap createMicroThumbnail(Content$ContentInfo content$ContentInfo) {
        Bitmap bitmapExtractThumbnail;
        Bitmap bitmapDecodeFile;
        if (CamLog.VERBOSE) {
            CamLog.d("createMicroThumbnail(type:" + content$ContentInfo.mType + ",id;" + content$ContentInfo.mId + ",data:" + content$ContentInfo.mOriginalPath + ")");
        }
        try {
            switch (content$ContentInfo.mType) {
                case 1:
                case 3:
                    BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
                    bitmapFactory$Options.inSampleSize = 1;
                    bitmapFactory$Options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(content$ContentInfo.mOriginalPath, bitmapFactory$Options);
                    if (!bitmapFactory$Options.mCancel && bitmapFactory$Options.outWidth != -1 && bitmapFactory$Options.outHeight != -1) {
                        bitmapFactory$Options.inSampleSize = computeSampleSize(bitmapFactory$Options, 96, 19200);
                        bitmapFactory$Options.inJustDecodeBounds = false;
                        bitmapFactory$Options.inDither = false;
                        bitmapFactory$Options.inPreferredConfig = Bitmap$Config.ARGB_8888;
                        bitmapDecodeFile = BitmapFactory.decodeFile(content$ContentInfo.mOriginalPath, bitmapFactory$Options);
                        break;
                    }
                    return null;
                case 2:
                    bitmapDecodeFile = createVideoThumbnail(content$ContentInfo.mOriginalPath);
                    break;
                default:
                    String[] strArr = new String[1];
                    strArr[0] = "createMicroThumbnail() wrong type:" + content$ContentInfo.mType;
                    CamLog.e(strArr);
                    bitmapDecodeFile = null;
                    break;
            }
            if (bitmapDecodeFile != null) {
                bitmapExtractThumbnail = ThumbnailUtils.extractThumbnail(bitmapDecodeFile, 96, 96);
                try {
                    bitmapDecodeFile.recycle();
                } catch (Exception e) {
                    e = e;
                    CamLog.e("createMicroThumbnail() got exception ex :" + e);
                } catch (OutOfMemoryError e2) {
                    e = e2;
                    CamLog.e(e.toString());
                }
            } else {
                bitmapExtractThumbnail = null;
            }
        } catch (Exception e3) {
            e = e3;
            bitmapExtractThumbnail = null;
        } catch (OutOfMemoryError e4) {
            e = e4;
            bitmapExtractThumbnail = null;
        }
        if (bitmapExtractThumbnail == null) {
            CamLog.e("createMicroThumbnail() can't create a Micro thumbnail.");
            return null;
        }
        return rotateThumbnail(bitmapExtractThumbnail, content$ContentInfo.mOrientation);
    }

    public static boolean tryCreateThumbnail(String str) {
        if (CamLog.VERBOSE) {
            CamLog.d("tryCreateThumbnail(" + str + ")");
        }
        try {
            BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
            bitmapFactory$Options.inSampleSize = 1;
            bitmapFactory$Options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, bitmapFactory$Options);
            if (!bitmapFactory$Options.mCancel && bitmapFactory$Options.outWidth != -1) {
                if (bitmapFactory$Options.outHeight != -1) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            CamLog.e("createMicroThumbnail() : ", e);
            return false;
        }
    }

    private static Bitmap rotateThumbnail(Bitmap bitmap, int i) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (i == 0) {
            return bitmap;
        }
        try {
            Matrix matrix = new Matrix();
            matrix.setRotate(i, width / 2.0f, height / 2.0f);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
            bitmap.recycle();
            return bitmapCreateBitmap;
        } catch (IllegalArgumentException unused) {
            CamLog.e("IllegalArgumentException : width = " + width + ", height = " + height);
            return bitmap;
        } catch (Exception unused2) {
            CamLog.e("Exception : width = " + width + ", height = " + height);
            return bitmap;
        }
    }

    public static Bitmap createVideoThumbnail(String str) throws IOException {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(str);
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(-1L);
                try {
                    mediaMetadataRetriever.release();
                    return frameAtTime;
                } catch (RuntimeException unused) {
                    CamLog.e("Ignore failures while cleaning up.");
                    return frameAtTime;
                }
            } catch (IllegalArgumentException unused2) {
                CamLog.e("Assume this is a corrupt video file.");
                return null;
            } catch (RuntimeException unused3) {
                CamLog.e("Assume this is a corrupt video file.");
                return null;
            }
        } finally {
            try {
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused4) {
                CamLog.e("Ignore failures while cleaning up.");
            }
        }
    }

    public static Bitmap createVideoThumbnail(Context context, Uri uri) throws IOException {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(context, uri);
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(-1L);
                try {
                    mediaMetadataRetriever.release();
                    return frameAtTime;
                } catch (RuntimeException unused) {
                    CamLog.e("Ignore failures while cleaning up.");
                    return frameAtTime;
                }
            } catch (IllegalArgumentException unused2) {
                CamLog.e("Assume this is a corrupt video file.");
                return null;
            } catch (RuntimeException unused3) {
                CamLog.e("Assume this is a corrupt video file.");
                return null;
            }
        } finally {
            try {
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused4) {
                CamLog.e("Ignore failures while cleaning up.");
            }
        }
    }

    public static Bitmap createVideoThumbnail(Context context, Uri uri, int i) {
        return rotateThumbnail(createVideoThumbnail(context, uri), i);
    }

    private static int computeSampleSize(BitmapFactory$Options bitmapFactory$Options, int i, int i2) {
        int iComputeInitialSampleSize = computeInitialSampleSize(bitmapFactory$Options, i, i2);
        if (iComputeInitialSampleSize > 8) {
            return 8 * ((iComputeInitialSampleSize + 7) / 8);
        }
        int i3 = 1;
        while (i3 < iComputeInitialSampleSize) {
            i3 <<= 1;
        }
        return i3;
    }

    private static int computeInitialSampleSize(BitmapFactory$Options bitmapFactory$Options, int i, int i2) {
        int iMin;
        double d = bitmapFactory$Options.outWidth;
        double d2 = bitmapFactory$Options.outHeight;
        int iCeil = i2 == -1 ? 1 : (int) Math.ceil(Math.sqrt((d * d2) / ((double) i2)));
        if (i == -1) {
            iMin = 128;
        } else {
            double d3 = i;
            iMin = (int) Math.min(Math.floor(d / d3), Math.floor(d2 / d3));
        }
        if (iMin < iCeil) {
            return iCeil;
        }
        if (i2 == -1 && i == -1) {
            return 1;
        }
        return i == -1 ? iCeil : iMin;
    }
}
