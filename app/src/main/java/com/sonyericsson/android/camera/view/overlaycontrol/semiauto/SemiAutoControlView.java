package com.sonyericsson.android.camera.view.overlaycontrol.semiauto;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver$ScreenAspect;
import com.sonyericsson.cameracommon.utility.ResourceUtil;
import com.sonyericsson.cameracommon.utility.RotationUtil;

public class SemiAutoControlView implements SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener, View$OnClickListener, View$OnTouchListener {
    private static final int SEEK_BAR_BRIGHTNESS = 2131296593;
    private static final int SEEK_BAR_COLORING = 2131296594;
    private static final int SEEK_BAR_MAXIMUM_VALUE = 100;
    private static final int SEEK_BAR_MINIMUM_VALUE = 0;
    private static final int SEMI_AUTO_EXPAND_BUTTON = 2131296588;
    private static final int SEMI_AUTO_RESET_BUTTON = 2131296590;
    public static final String TAG = "SemiAutoControlView";
    private SemiAutoSeekBarView mBrightness;
    private SemiAutoSeekBarView mColor;
    private ImageView mExpand;
    private View mIndicatorView;
    private SemiAutoControlView$OnSemiAutoChangeListener mListener;
    private SemiAutoControlView$OpacityReductionTask mOpacityReductionTask;
    private ImageView mReset;
    private boolean mIsTracking = false;
    private boolean mIsExpanded = false;

    public SemiAutoControlView(ViewGroup viewGroup, LayoutDependencyResolver$ScreenAspect layoutDependencyResolver$ScreenAspect) {
        init(viewGroup, layoutDependencyResolver$ScreenAspect);
    }

    private void init(ViewGroup viewGroup, LayoutDependencyResolver$ScreenAspect layoutDependencyResolver$ScreenAspect) {
        Context context = viewGroup.getContext();
        ViewStub viewStub = (ViewStub) viewGroup.findViewById(2131296587);
        if (viewStub != null) {
            Rect viewFinderSize = LayoutDependencyResolver.getViewFinderSize(context);
            int iMin = Math.min(viewFinderSize.width(), viewFinderSize.height());
            int iMax = Math.max(viewFinderSize.width(), viewFinderSize.height());
            FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(-2, -1);
            frameLayout$LayoutParams.gravity = 5;
            frameLayout$LayoutParams.setMargins(0, 0, (iMax - ((iMin * 4) / 3)) - (layoutDependencyResolver$ScreenAspect == LayoutDependencyResolver$ScreenAspect.EIGHTEEN_NINE ? ResourceUtil.getDimensionPixelSize(context, context.getPackageName(), 2131165428) : 0), 0);
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131165568);
            if (iMin > dimensionPixelSize) {
                frameLayout$LayoutParams.height = dimensionPixelSize;
                frameLayout$LayoutParams.gravity |= 16;
            }
            this.mIndicatorView = viewStub.inflate();
            this.mIndicatorView.setLayoutParams(frameLayout$LayoutParams);
        } else {
            this.mIndicatorView = viewGroup.findViewById(2131296589);
        }
        this.mIndicatorView.setOnTouchListener(this);
        this.mOpacityReductionTask = new SemiAutoControlView$OpacityReductionTask(this.mIndicatorView);
        this.mBrightness = (SemiAutoSeekBarView) this.mIndicatorView.findViewById(2131296593);
        this.mColor = (SemiAutoSeekBarView) this.mIndicatorView.findViewById(2131296594);
        this.mReset = (ImageView) this.mIndicatorView.findViewById(2131296590);
        this.mExpand = (ImageView) this.mIndicatorView.findViewById(2131296588);
        this.mBrightness.hide();
        this.mColor.hide();
        this.mReset.setOnClickListener(this);
        this.mExpand.setOnClickListener(this);
        this.mBrightness.setSeekBarResource(2131231536);
        this.mColor.setSeekBarResource(2131231538);
        this.mBrightness.setTextForAccessibility(2131690173);
        this.mColor.setTextForAccessibility(2131690174);
        this.mBrightness.setMinimum(0);
        this.mBrightness.setMaximum(100);
        this.mColor.setMinimum(0);
        this.mColor.setMaximum(100);
        setDefaultPosition();
        this.mBrightness.setAscending(false);
        this.mColor.setAscending(false);
        this.mBrightness.setOnSemiAutoSeekBarChangeListener(this);
        this.mColor.setOnSemiAutoSeekBarChangeListener(this);
    }

    private void setDefaultPosition() {
        this.mBrightness.moveToCenterProgress();
        this.mColor.moveToCenterProgress();
    }

    public void release() {
        setOnSemiAutoChangeListener(null);
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.semiauto.SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener
    public void onProgressChanged(SemiAutoSeekBarView semiAutoSeekBarView, int i, boolean z) {
        switch (semiAutoSeekBarView.getId()) {
            case 2131296593:
                if (this.mListener != null) {
                    this.mListener.onBrightnessChanged(i);
                    return;
                }
                return;
            case 2131296594:
                if (this.mListener != null) {
                    this.mListener.onAmberBlueColorChanged(i);
                    return;
                }
                return;
            default:
                throw new IllegalArgumentException();
        }
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.semiauto.SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener
    public void onStartTrackingTouch(SemiAutoSeekBarView semiAutoSeekBarView, int i) {
        this.mIsTracking = true;
        this.mOpacityReductionTask.stop(true);
        if (this.mListener != null) {
            this.mListener.onSemiAutoControlStarted();
        }
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.semiauto.SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener
    public void onStopTrackingTouch(SemiAutoSeekBarView semiAutoSeekBarView, int i) {
        this.mIsTracking = false;
        this.mOpacityReductionTask.start();
        if (this.mListener != null) {
            this.mListener.onSemiAutoControlStopped();
        }
    }

    public void setOnSemiAutoChangeListener(SemiAutoControlView$OnSemiAutoChangeListener semiAutoControlView$OnSemiAutoChangeListener) {
        this.mListener = semiAutoControlView$OnSemiAutoChangeListener;
    }

    public void setExpanded(boolean z) {
        this.mIsExpanded = z;
    }

    public void enable() {
        this.mIndicatorView.setAlpha(1.0f);
        show(true, this.mIsExpanded);
        this.mOpacityReductionTask.start();
        if (this.mListener != null) {
            this.mListener.onSemiAutoEnabled();
        }
    }

    public void disable() {
        hide();
        setDefaultPosition();
        this.mOpacityReductionTask.stop(false);
        if (this.mListener != null) {
            this.mListener.onSemiAutoDisabled();
        }
    }

    public void setVisibility(int i) {
        if (this.mIndicatorView != null) {
            this.mIndicatorView.setVisibility(i);
        }
    }

    private void hide() {
        this.mBrightness.hide();
        this.mColor.hide();
        this.mReset.setVisibility(4);
        this.mReset.setOnClickListener(null);
        this.mExpand.setVisibility(4);
        this.mExpand.setOnClickListener(null);
    }

    private void show(boolean z, boolean z2) {
        if (!this.mIndicatorView.isShown()) {
            this.mIndicatorView.setVisibility(0);
        }
        if (this.mIsTracking) {
            return;
        }
        this.mBrightness.show(z);
        if (z2) {
            this.mColor.show(z);
        } else if (this.mColor.getVisibility() != 0) {
            this.mExpand.setVisibility(0);
            this.mExpand.setOnClickListener(this);
        }
        if (this.mReset.getVisibility() != 0) {
            this.mReset.setVisibility(0);
            this.mReset.setOnClickListener(this);
        }
    }

    public void setOrientation(int i) {
        this.mReset.setRotation(RotationUtil.getAngle(i));
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != 2131296588) {
            if (id == 2131296590) {
                if (this.mListener != null) {
                    this.mListener.onSemiAutoReset();
                }
            } else {
                throw new IllegalArgumentException();
            }
        } else if (this.mColor != null && this.mColor.getVisibility() != 0) {
            this.mColor.show(true);
            this.mExpand.setVisibility(4);
            this.mIsExpanded = true;
        }
        this.mOpacityReductionTask.start();
    }

    @Override // android.view.View$OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z = this.mReset.getVisibility() == 0;
        if (z) {
            this.mIndicatorView.getParent().requestDisallowInterceptTouchEvent(true);
        }
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            this.mIndicatorView.getParent().requestDisallowInterceptTouchEvent(false);
        }
        return z;
    }
}
