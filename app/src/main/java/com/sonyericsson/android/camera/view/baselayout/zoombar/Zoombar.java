package com.sonyericsson.android.camera.view.baselayout.zoombar;

import android.animation.Animator$AnimatorListener;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonymobile.cameracommon.research.ResearchUtil;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Zoombar extends FrameLayout {
    private static final boolean DEBUG = false;
    public static final int DELAY_ZOOMBAR_HIDE = 1000;
    private static final long IMMEDIATE_ANIMATION_DURATION_IN_MILLIS = 0;
    private static final float INVISIBLE_ALPHA = 0.0f;
    private static final long INVISIBLE_ANIMATION_DURATION_IN_MILLIS = 100;
    public static final int MIN_VALUE = 0;
    public static final String TAG = "Zoombar";
    private static final float VISIBLE_ALPHA = 1.0f;
    private static final long VISIBLE_ANIMATION_DURATION_IN_MILLIS = 100;
    private Animator$AnimatorListener mHideAnimationlistener;
    private final Runnable mHideEvent;
    private ImageView mLeftIndicator;
    private ImageView mRightIndicator;
    private TextView mValueIndicator;
    private List<Integer> mZoomRatios;
    private Zoombar$ZoombarDisplayChangedListener mZoombarDisplayChangedListener;

    static /* synthetic */ Zoombar$ZoombarDisplayChangedListener access$000(Zoombar zoombar) {
        return zoombar.mZoombarDisplayChangedListener;
    }

    static /* synthetic */ void access$100(Zoombar zoombar, boolean z) {
        zoombar.hideWithAnimation(z);
    }

    public void setZoombarDisplayChangedListener(Zoombar$ZoombarDisplayChangedListener zoombar$ZoombarDisplayChangedListener) {
        this.mZoombarDisplayChangedListener = zoombar$ZoombarDisplayChangedListener;
    }

    public Zoombar(Context context) {
        this(context, null);
    }

    public Zoombar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Zoombar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mZoombarDisplayChangedListener = null;
        this.mHideAnimationlistener = new Zoombar$1(this);
        this.mHideEvent = new Zoombar$2(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mLeftIndicator = (ImageView) findViewById(2131296444);
        this.mRightIndicator = (ImageView) findViewById(2131296536);
        this.mValueIndicator = (TextView) findViewById(2131296692);
    }

    public void setZoomRatios(List<Integer> list) {
        this.mZoomRatios = list;
    }

    public List<Integer> getZoomRatios() {
        return this.mZoomRatios;
    }

    public int zoom(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("zoom() current:" + i + " maxZoom:120 zoomRatios:" + this.mZoomRatios);
        }
        if (!validateZoomParameters(i)) {
            hideImmediately();
            return i;
        }
        if (i < 0) {
            i = 0;
        }
        if (i > 120) {
            i = 120;
        }
        Integer num = this.mZoomRatios.get(i);
        int dimension = (int) getResources().getDimension(2131165435);
        int intrinsicWidth = this.mLeftIndicator.getDrawable().getIntrinsicWidth();
        int i2 = (((dimension - intrinsicWidth) * (120 - i)) / 120) + intrinsicWidth;
        String str = String.format(Locale.getDefault(), "%.1f", Float.valueOf(num.intValue() / 100.0f));
        this.mLeftIndicator.getLayoutParams().width = i2;
        this.mRightIndicator.getLayoutParams().width = i2;
        this.mValueIndicator.setText(str);
        this.mLeftIndicator.requestLayout();
        this.mRightIndicator.requestLayout();
        if (CamLog.VERBOSE) {
            CamLog.d("zoom() position:" + i2 + " srPosition:0");
        }
        ResearchUtil.getInstance().setZoomRatio(Float.parseFloat(String.format(Locale.US, "%.1f", Float.valueOf(num.intValue() / 100.0f))));
        return i;
    }

    public void setSensorOrientation(int i) {
        this.mValueIndicator.setRotation(RotationUtil.getAngle(i));
    }

    public void show() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.mHideEvent);
        }
        showWithAnimation(true);
    }

    public void showImmediately() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.mHideEvent);
        }
        showWithAnimation(false);
    }

    public void hideDelayed() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.postDelayed(this.mHideEvent, 1000L);
        }
    }

    public void hideImmediately() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.mHideEvent);
        }
        hideWithAnimation(false);
    }

    private void showWithAnimation(boolean z) {
        if (this.mZoombarDisplayChangedListener != null) {
            this.mZoombarDisplayChangedListener.onShowZoombar();
        }
        animate().setListener(null).alpha(1.0f).setDuration(z ? 100L : 0L).start();
    }

    private void hideWithAnimation(boolean z) {
        animate().alpha(0.0f).setDuration(z ? 100L : 0L).setListener(this.mHideAnimationlistener).start();
    }

    private boolean validateZoomParameters(int i) {
        Integer num;
        return (this.mZoomRatios == null || (num = this.mZoomRatios.get(i)) == null || num.intValue() < 0) ? false : true;
    }
}
