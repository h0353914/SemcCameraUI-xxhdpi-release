package com.sonyericsson.cameracommon.contentsview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.sonyericsson.android.camera.util.CamLog;

public class ThumbnailFactory {
    private static final int MAX_NUM_PIXELS_MICRO_THUMBNAIL = 19200;
    public static final String TAG = "ThumbnailFactory";
    public static final int TARGET_SIZE_MICRO_THUMBNAIL = 96;
    private static final int UNCONSTRAINED = -1;

    public static Bitmap createMicroThumbnail(Context context, com.sonyericsson.cameracommon.contentsview.contents.Content.ContentInfo contentInfo) {
        Bitmap bitmap;
        if (CamLog.VERBOSE) {
            CamLog.d("createMicroThumbnail(type:" + contentInfo.mType + ",id;" + contentInfo.mId + ",data:" + contentInfo.mOriginalPath + ")");
        }
        Bitmap bitmap2 = null;
        try {
            int i = contentInfo.mType;
            if (i == 1 || i == 3) {
                bitmap = decodeBitmapFromUri(context, contentInfo.mOriginalUri);
                if (bitmap == null) {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inSampleSize = 1;
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(contentInfo.mOriginalPath, options);
                    if (options.mCancel || options.outWidth == -1 || options.outHeight == -1) {
                        return null;
                    }
                    options.inSampleSize = computeSampleSize(options, TARGET_SIZE_MICRO_THUMBNAIL, MAX_NUM_PIXELS_MICRO_THUMBNAIL);
                    options.inJustDecodeBounds = false;
                    options.inDither = false;
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    bitmap = BitmapFactory.decodeFile(contentInfo.mOriginalPath, options);
                }
            } else if (i == 2) {
                bitmap = (context == null || contentInfo.mOriginalUri == null) ? null : createVideoThumbnail(context, contentInfo.mOriginalUri);
                if (bitmap == null) {
                    bitmap = createVideoThumbnail(contentInfo.mOriginalPath);
                }
            } else {
                CamLog.e("createMicroThumbnail() wrong type:" + contentInfo.mType);
                bitmap = null;
            }
            if (bitmap != null) {
                bitmap2 = android.media.ThumbnailUtils.extractThumbnail(bitmap, TARGET_SIZE_MICRO_THUMBNAIL, TARGET_SIZE_MICRO_THUMBNAIL);
                bitmap.recycle();
            }
        } catch (Exception e) {
            CamLog.e("createMicroThumbnail() got exception ex :" + e);
        } catch (OutOfMemoryError e2) {
            CamLog.e(e2.toString());
        }
        if (bitmap2 == null) {
            CamLog.e("createMicroThumbnail() can't create a Micro thumbnail.");
            return null;
        }
        return rotateThumbnail(bitmap2, contentInfo.mOrientation);
    }

    private static Bitmap decodeBitmapFromUri(Context context, Uri uri) {
        if (context == null || uri == null) {
            return null;
        }
        try (ParcelFileDescriptor pfd = context.getContentResolver().openFileDescriptor(uri, "r")) {
            if (pfd == null) {
                return null;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFileDescriptor(pfd.getFileDescriptor(), null, options);
            if (options.outWidth <= 0 || options.outHeight <= 0) {
                return null;
            }
            options.inSampleSize = computeSampleSize(options, TARGET_SIZE_MICRO_THUMBNAIL, MAX_NUM_PIXELS_MICRO_THUMBNAIL);
            options.inJustDecodeBounds = false;
            options.inDither = false;
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return BitmapFactory.decodeFileDescriptor(pfd.getFileDescriptor(), null, options);
        } catch (Exception e) {
            CamLog.e("decodeBitmapFromUri() decode failed for uri:" + uri + ", ex:" + e);
            return null;
        }
    }

    public static boolean tryCreateThumbnail(String str) {
        if (CamLog.VERBOSE) {
            CamLog.d("tryCreateThumbnail(" + str + ")");
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = 1;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            if (!options.mCancel && options.outWidth != -1) {
                if (options.outHeight != -1) {
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

    public static Bitmap createVideoThumbnail(String str) {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(str);
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(-1L);
                try {
                    mediaMetadataRetriever.release();
                    return frameAtTime;
                } catch (Exception unused) {
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
            } catch (Exception unused4) {
                CamLog.e("Ignore failures while cleaning up.");
            }
        }
    }

    public static Bitmap createVideoThumbnail(Context context, Uri uri) {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(context, uri);
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(-1L);
                try {
                    mediaMetadataRetriever.release();
                    return frameAtTime;
                } catch (Exception unused) {
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
            } catch (Exception unused4) {
                CamLog.e("Ignore failures while cleaning up.");
            }
        }
    }

    public static Bitmap createVideoThumbnail(Context context, Uri uri, int i) {
        return rotateThumbnail(createVideoThumbnail(context, uri), i);
    }

    private static int computeSampleSize(BitmapFactory.Options options, int i, int i2) {
        int iComputeInitialSampleSize = computeInitialSampleSize(options, i, i2);
        if (iComputeInitialSampleSize > 8) {
            return 8 * ((iComputeInitialSampleSize + 7) / 8);
        }
        int i3 = 1;
        while (i3 < iComputeInitialSampleSize) {
            i3 <<= 1;
        }
        return i3;
    }

    private static int computeInitialSampleSize(BitmapFactory.Options options, int i, int i2) {
        int iMin;
        double d = options.outWidth;
        double d2 = options.outHeight;
        int iCeil = i2 == -1 ? 1 : (int) Math.ceil(Math.sqrt((d * d2) / i2));
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
