package com.sonyericsson.cameracommon.contentsview;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory$Options;
import android.graphics.Matrix;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class ThumbnailUtil {
    public static final String TAG = "ThumbnailUtil";

    public static RelativeLayout createThumbnailViewFromJpeg(Activity activity, byte[] bArr, int i) {
        RelativeLayout relativeLayout;
        if (CamLog.VERBOSE) {
            CamLog.d("createEarlyThumbnailViewFromJpeg()");
        }
        if (bArr == null) {
            CamLog.e("data is null");
            return null;
        }
        LayoutInflater layoutInflater = activity.getLayoutInflater();
        if (CommonUtility.isCoreCameraApp(activity)) {
            relativeLayout = (RelativeLayout) layoutInflater.inflate(2131492909, (ViewGroup) null);
        } else {
            relativeLayout = (RelativeLayout) layoutInflater.inflate(2131492908, (ViewGroup) null);
        }
        ImageView imageView = (ImageView) relativeLayout.findViewById(2131296390);
        BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
        bitmapFactory$Options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, bitmapFactory$Options);
        int i2 = bitmapFactory$Options.outWidth;
        int i3 = bitmapFactory$Options.outHeight;
        if (i2 > i3) {
            bitmapFactory$Options.inSampleSize = Math.round(i3 / 96.0f);
        } else {
            bitmapFactory$Options.inSampleSize = Math.round(i2 / 96.0f);
        }
        bitmapFactory$Options.inJustDecodeBounds = false;
        bitmapFactory$Options.inPreferredConfig = Bitmap$Config.RGB_565;
        bitmapFactory$Options.inPurgeable = true;
        Bitmap bitmapExtractThumbnail = ThumbnailUtils.extractThumbnail(BitmapFactory.decodeByteArray(bArr, 0, bArr.length, bitmapFactory$Options), 96, 96);
        Bitmap bitmapRotateThumbnail = bitmapExtractThumbnail != null ? rotateThumbnail(bitmapExtractThumbnail, i) : null;
        if (bitmapRotateThumbnail != null) {
            imageView.setImageBitmap(bitmapRotateThumbnail);
        } else {
            imageView.setImageDrawable(null);
        }
        return relativeLayout;
    }

    public static Bitmap rotateThumbnail(Bitmap bitmap, int i) {
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

    public static RelativeLayout createThumbnailViewFromUri(Activity activity, Uri uri) {
        return createThumbnailViewFromUri(activity, uri, 0);
    }

    public static RelativeLayout createThumbnailViewFromUri(Activity activity, Uri uri, int i) {
        RelativeLayout relativeLayout;
        InputStream inputStreamOpenInputStream;
        InputStream inputStreamOpenInputStream2;
        if (CamLog.VERBOSE) {
            CamLog.d("createEarlyThumbnailViewFromUri()");
        }
        if (uri == null) {
            CamLog.e("uri is null");
            return null;
        }
        LayoutInflater layoutInflater = activity.getLayoutInflater();
        if (CommonUtility.isCoreCameraApp(activity)) {
            relativeLayout = (RelativeLayout) layoutInflater.inflate(2131492909, (ViewGroup) null);
        } else {
            relativeLayout = (RelativeLayout) layoutInflater.inflate(2131492908, (ViewGroup) null);
        }
        ImageView imageView = (ImageView) relativeLayout.findViewById(2131296390);
        BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
        bitmapFactory$Options.inJustDecodeBounds = true;
        try {
            inputStreamOpenInputStream = activity.getContentResolver().openInputStream(uri);
        } catch (FileNotFoundException e) {
            CamLog.e("FileNotFoundException :  = " + e);
            inputStreamOpenInputStream = null;
        }
        BitmapFactory.decodeStream(inputStreamOpenInputStream, null, bitmapFactory$Options);
        if (inputStreamOpenInputStream != null) {
            try {
                inputStreamOpenInputStream.close();
            } catch (IOException e2) {
                CamLog.e("IOException :  = " + e2);
            }
        }
        int i2 = bitmapFactory$Options.outWidth;
        int i3 = bitmapFactory$Options.outHeight;
        if (i2 > i3) {
            bitmapFactory$Options.inSampleSize = Math.round(i3 / 96.0f);
        } else {
            bitmapFactory$Options.inSampleSize = Math.round(i2 / 96.0f);
        }
        bitmapFactory$Options.inJustDecodeBounds = false;
        bitmapFactory$Options.inPreferredConfig = Bitmap$Config.RGB_565;
        bitmapFactory$Options.inPurgeable = true;
        try {
            inputStreamOpenInputStream2 = activity.getContentResolver().openInputStream(uri);
        } catch (FileNotFoundException e3) {
            CamLog.e("FileNotFoundException :  = " + e3);
            inputStreamOpenInputStream2 = inputStreamOpenInputStream;
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream2, null, bitmapFactory$Options);
        if (inputStreamOpenInputStream2 != null) {
            try {
                inputStreamOpenInputStream2.close();
            } catch (IOException e4) {
                CamLog.e("IOException :  = " + e4);
            }
        }
        Bitmap bitmapExtractThumbnail = ThumbnailUtils.extractThumbnail(bitmapDecodeStream, 96, 96);
        Bitmap bitmapRotateThumbnail = bitmapExtractThumbnail != null ? rotateThumbnail(bitmapExtractThumbnail, i) : null;
        if (bitmapRotateThumbnail != null) {
            imageView.setImageBitmap(bitmapRotateThumbnail);
        } else {
            imageView.setImageDrawable(null);
        }
        return relativeLayout;
    }
}
