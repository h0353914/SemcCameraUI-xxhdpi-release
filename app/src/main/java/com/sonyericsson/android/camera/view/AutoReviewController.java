package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory$Options;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.ViewGroup$LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView$ScaleType;
import android.widget.RelativeLayout;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.baselayout.BaseLayout;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;
import com.sonyericsson.cameracommon.utility.CameraTimer;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class AutoReviewController implements AutoReviewContent$ContentReceiver {
    private static final String TAG = "AutoReviewController";
    private final CameraActivity mActivity;
    private final BaseLayout mBaseLayout;
    private RelativeLayout mContainer;
    private ImageView mImageView;
    private AutoReviewController$OnAutoReviewEventListener mListener;
    private CameraTimer mTimer;

    static /* synthetic */ AutoReviewController$OnAutoReviewEventListener access$100(AutoReviewController autoReviewController) {
        return autoReviewController.mListener;
    }

    public AutoReviewController(Context context, BaseLayout baseLayout) {
        this.mActivity = (CameraActivity) context;
        this.mBaseLayout = baseLayout;
    }

    public void setup() {
        int dimensionPixelSize;
        if (isTablet(this.mActivity)) {
            if (isPreviewAspectRatio(1, 1)) {
                this.mImageView = (ImageView) this.mActivity.findViewById(2131296310);
                this.mContainer = (RelativeLayout) this.mActivity.findViewById(2131296304);
            } else if (isPreviewAspectRatio(4, 3)) {
                this.mImageView = (ImageView) this.mActivity.findViewById(2131296312);
                this.mContainer = (RelativeLayout) this.mActivity.findViewById(2131296306);
            } else {
                this.mImageView = (ImageView) this.mActivity.findViewById(2131296308);
                this.mContainer = (RelativeLayout) this.mActivity.findViewById(2131296302);
            }
        } else if (isPreviewAspectRatio(1, 1)) {
            this.mImageView = (ImageView) this.mActivity.findViewById(2131296309);
            this.mContainer = (RelativeLayout) this.mActivity.findViewById(2131296303);
        } else if (isPreviewAspectRatio(4, 3)) {
            this.mImageView = (ImageView) this.mActivity.findViewById(2131296311);
            this.mContainer = (RelativeLayout) this.mActivity.findViewById(2131296305);
        } else {
            this.mImageView = (ImageView) this.mActivity.findViewById(2131296307);
            this.mContainer = (RelativeLayout) this.mActivity.findViewById(2131296301);
        }
        Resources resources = this.mActivity.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        if (displayMetrics.densityDpi > DisplayMetrics.DENSITY_DEVICE_STABLE) {
            ViewGroup$LayoutParams layoutParams = this.mImageView.getLayoutParams();
            if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
                dimensionPixelSize = ((displayMetrics.widthPixels - resources.getDimensionPixelSize(2131165285)) / 2) - (resources.getDimensionPixelSize(2131165278) * 2);
            } else {
                dimensionPixelSize = ((displayMetrics.heightPixels - resources.getDimensionPixelSize(2131165285)) / 2) - (resources.getDimensionPixelSize(2131165278) * 2);
            }
            layoutParams.height = dimensionPixelSize;
            if (isPreviewAspectRatio(1, 1)) {
                layoutParams.width = dimensionPixelSize;
            } else if (isPreviewAspectRatio(4, 3)) {
                layoutParams.width = (4 * dimensionPixelSize) / 3;
            } else {
                layoutParams.width = (16 * dimensionPixelSize) / 9;
            }
            this.mImageView.setLayoutParams(layoutParams);
        }
        this.mImageView.setContentDescription(resources.getString(2131689562));
        this.mImageView.setClickable(false);
        this.mBaseLayout.addViewFinderGestureDetectorExclusiveView(this.mImageView);
    }

    public void show(Uri uri, byte[] bArr, boolean z, long j) throws Throwable {
        if (this.mContainer != null) {
            update(uri, bArr, z);
            this.mContainer.setVisibility(0);
            this.mImageView.setClickable(true);
            startTimer(j);
        }
    }

    public void hide() {
        if (this.mContainer != null) {
            this.mContainer.setVisibility(8);
            this.mImageView.setClickable(false);
            stopTimer();
        }
    }

    private void startTimer(long j) {
        stopTimer();
        if (j > 0) {
            this.mTimer = new CameraTimer(j, j, new AutoReviewController$PreviewTimerHandler(this, null), "AutoReviewController", 0L);
            this.mTimer.start();
        }
    }

    private void stopTimer() {
        if (this.mTimer != null) {
            this.mTimer.cancel();
            this.mTimer = null;
        }
    }

    @Override // com.sonyericsson.android.camera.view.AutoReviewContent$ContentReceiver
    public void onReceive(AutoReviewContent autoReviewContent) throws Throwable {
        this.mListener = autoReviewContent.mEventListener;
        this.mImageView.setOnClickListener(autoReviewContent.mClickListener);
        show(autoReviewContent.mUri, autoReviewContent.mData, autoReviewContent.mIsReverse, autoReviewContent.mDuration);
    }

    private void update(Uri uri, byte[] bArr, boolean z) throws Throwable {
        Bitmap bitmapConvertBitmap = convertBitmap(this.mActivity, uri, bArr, z);
        if (bitmapConvertBitmap == null || this.mImageView == null) {
            return;
        }
        this.mImageView.setScaleType(ImageView$ScaleType.FIT_XY);
        this.mImageView.setImageBitmap(bitmapConvertBitmap);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[Catch: all -> 0x005e, Throwable -> 0x0060, SYNTHETIC, TRY_LEAVE, TryCatch #3 {Throwable -> 0x0060, blocks: (B:6:0x000d, B:42:0x005a, B:41:0x0056, B:43:0x005d), top: B:62:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap convertBitmap(Context context, Uri uri, byte[] bArr, boolean z) throws Throwable {
        Throwable th;
        Throwable th2;
        if (bArr == null) {
            try {
                InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                Throwable th3 = null;
                try {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        if (inputStreamOpenInputStream != null) {
                            try {
                                byte[] bArr2 = new byte[1024];
                                while (true) {
                                    int i = inputStreamOpenInputStream.read(bArr2);
                                    if (i == -1) {
                                        break;
                                    }
                                    byteArrayOutputStream.write(bArr2, 0, i);
                                }
                            } catch (Throwable th4) {
                                try {
                                    throw th4;
                                } catch (Throwable th5) {
                                    th = th4;
                                    th2 = th5;
                                    if (byteArrayOutputStream != null) {
                                        throw th2;
                                    }
                                    if (th == null) {
                                        byteArrayOutputStream.close();
                                        throw th2;
                                    }
                                    try {
                                        byteArrayOutputStream.close();
                                        throw th2;
                                    } catch (Throwable th6) {
                                        th.addSuppressed(th6);
                                        throw th2;
                                    }
                                }
                            }
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable th7) {
                                throw th7;
                            }
                        }
                        if (inputStreamOpenInputStream != null) {
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (FileNotFoundException e) {
                                e = e;
                                bArr = byteArray;
                                CamLog.e("load of auto review image is failed " + e);
                            } catch (IOException e2) {
                                e = e2;
                                bArr = byteArray;
                                CamLog.e("load of auto review image is failed " + e);
                            }
                        }
                        bArr = byteArray;
                    } catch (Throwable th8) {
                        throw th8;
                    }
                } catch (Throwable th9) {
                    th = th9;
                }
            } catch (FileNotFoundException e3) {
                e = e3;
                CamLog.e("load of auto review image is failed " + e);
                return getPreviewBmp(context, bArr, z);
            } catch (IOException e4) {
                e = e4;
                CamLog.e("load of auto review image is failed " + e);
                return getPreviewBmp(context, bArr, z);
            }
        }
        return getPreviewBmp(context, bArr, z);
    }

    private static Bitmap getPreviewBmp(Context context, byte[] bArr, boolean z) {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        if (bArr == null) {
            return null;
        }
        BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
        bitmapFactory$Options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, bitmapFactory$Options);
        int i = bitmapFactory$Options.outHeight;
        int i2 = bitmapFactory$Options.outWidth;
        Resources resources = context.getResources();
        if (isTablet(context)) {
            if (isPreviewAspectRatio(1, 1)) {
                dimensionPixelSize = resources.getDimensionPixelSize(2131165270);
                dimensionPixelSize2 = resources.getDimensionPixelSize(2131165272);
            } else if (isPreviewAspectRatio(4, 3)) {
                dimensionPixelSize = resources.getDimensionPixelSize(2131165274);
                dimensionPixelSize2 = resources.getDimensionPixelSize(2131165276);
            } else {
                dimensionPixelSize = resources.getDimensionPixelSize(2131165266);
                dimensionPixelSize2 = resources.getDimensionPixelSize(2131165268);
            }
        } else if (isPreviewAspectRatio(1, 1)) {
            dimensionPixelSize = resources.getDimensionPixelSize(2131165269);
            dimensionPixelSize2 = resources.getDimensionPixelSize(2131165271);
        } else if (isPreviewAspectRatio(4, 3)) {
            dimensionPixelSize = resources.getDimensionPixelSize(2131165273);
            dimensionPixelSize2 = resources.getDimensionPixelSize(2131165275);
        } else {
            dimensionPixelSize = resources.getDimensionPixelSize(2131165265);
            dimensionPixelSize2 = resources.getDimensionPixelSize(2131165267);
        }
        if (i < i2) {
            bitmapFactory$Options.inSampleSize = Math.round(i / dimensionPixelSize);
        } else if (i2 < i) {
            bitmapFactory$Options.inSampleSize = Math.round(i2 / dimensionPixelSize2);
        }
        bitmapFactory$Options.inJustDecodeBounds = false;
        bitmapFactory$Options.inPreferredConfig = Bitmap$Config.RGB_565;
        bitmapFactory$Options.inPurgeable = true;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, bitmapFactory$Options);
        if (bitmapDecodeByteArray != null) {
            return z ? reversePreviewBmp(bitmapDecodeByteArray) : bitmapDecodeByteArray;
        }
        CamLog.e("decodeByteArray failed. mImageData: " + bArr.length + ", outSize: " + bitmapFactory$Options.outWidth + ", " + bitmapFactory$Options.outHeight + ", inSampleSize: " + bitmapFactory$Options.inSampleSize);
        return bitmapDecodeByteArray;
    }

    private static Bitmap reversePreviewBmp(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.setScale(-1.0f, -1.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    private static boolean isPreviewAspectRatio(int i, int i2) {
        Rect previewSize = PositionConverter.getInstance().getPreviewSize();
        if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            if (previewSize.width() * i != previewSize.height() * i2) {
                return false;
            }
        } else if (previewSize.width() * i2 != previewSize.height() * i) {
            return false;
        }
        return true;
    }

    private static boolean isTablet(Context context) {
        return LayoutDependencyResolver.isTablet(context);
    }

    public boolean isShowing() {
        return this.mContainer != null && this.mContainer.getVisibility() == 0;
    }
}
