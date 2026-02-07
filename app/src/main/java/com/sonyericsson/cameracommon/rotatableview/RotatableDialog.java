package com.sonyericsson.cameracommon.rotatableview;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnDismissListener;
import android.content.DialogInterface$OnKeyListener;
import android.content.res.Resources;
import android.content.res.Resources$NotFoundException;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnAttachStateChangeListener;
import android.view.View$OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager$LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;

/* JADX INFO: loaded from: classes.dex */
public class RotatableDialog implements View$OnTouchListener, View$OnAttachStateChangeListener {
    public static final String TAG = "RotatableDialog";
    private final int mAnimationsForLand;
    private final int mAnimationsForPort;
    private AlertDialog mDialog;
    private int mDialogWidthForLand;
    private int mDialogWidthForPort;
    private int mDisplayHeight;
    private int mDisplayWidth;
    private int mHalfDiffBetweenDisplayWidthAndHeight;
    private View mScrollableView;
    private Window mWindow;
    private Rect mTempRect = new Rect();
    private Rect mDefaultPaddingRect = null;
    private int mOrientation = 2;

    private int calculateOutValue(int i, int i2, int i3) {
        if (i < i2) {
            return i - i2;
        }
        if (i3 < i) {
            return i - i3;
        }
        return 0;
    }

    protected RotatableDialog(AlertDialog alertDialog) {
        this.mDialog = alertDialog;
        this.mWindow = alertDialog.getWindow();
        this.mWindow.addFlags(128);
        this.mAnimationsForLand = 2131755416;
        this.mAnimationsForPort = 2131755417;
    }

    private void release() {
        ViewGroup viewGroup = (ViewGroup) this.mWindow.getDecorView();
        viewGroup.removeOnAttachStateChangeListener(this);
        viewGroup.setOnTouchListener(null);
        this.mDialog = null;
        this.mWindow = null;
        this.mScrollableView = null;
    }

    private void setWindowAnimations(int i) {
        if (i == 1) {
            this.mWindow.setWindowAnimations(this.mAnimationsForPort);
        } else {
            this.mWindow.setWindowAnimations(this.mAnimationsForLand);
        }
    }

    private void initialize() {
        ViewGroup viewGroup = (ViewGroup) this.mWindow.getDecorView();
        viewGroup.addOnAttachStateChangeListener(this);
        viewGroup.setOnTouchListener(this);
        setWindowAnimations(this.mOrientation);
        Rect rect = new Rect();
        this.mWindow.getWindowManager().getDefaultDisplay().getRectSize(rect);
        if (rect.width() > rect.height()) {
            this.mDisplayWidth = rect.width();
            this.mDisplayHeight = rect.height();
        } else {
            this.mDisplayWidth = rect.height();
            this.mDisplayHeight = rect.width();
        }
        this.mHalfDiffBetweenDisplayWidthAndHeight = (this.mDisplayWidth - this.mDisplayHeight) / 2;
        try {
            Resources resources = this.mDialog.getContext().getResources();
            String string = resources.getString(17104899);
            String string2 = resources.getString(17104900);
            String strReplace = string.replace("%", "");
            String strReplace2 = string2.replace("%", "");
            float f = Float.parseFloat(strReplace) / 100.0f;
            float f2 = Float.parseFloat(strReplace2) / 100.0f;
            this.mDialogWidthForLand = (int) (this.mDisplayWidth * f);
            this.mDialogWidthForPort = (int) (this.mDisplayHeight * f2);
        } catch (Resources$NotFoundException e) {
            CamLog.e("Fail to get width of dialog for each orientation.", e);
        } catch (NullPointerException e2) {
            CamLog.e("Fail to get width of dialog for each orientation.", e2);
        } catch (NumberFormatException e3) {
            CamLog.e("Fail to get width of dialog for each orientation.", e3);
        }
        attachScrollableView();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void attachScrollableView() {
        View viewFindViewById;
        ScrollView scrollView;
        if (this.mScrollableView == null || (viewFindViewById = this.mWindow.findViewById(16908299)) == null) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(this.mWindow.getContext());
        frameLayout.setPadding(viewFindViewById.getPaddingLeft(), viewFindViewById.getPaddingTop(), viewFindViewById.getPaddingRight(), viewFindViewById.getPaddingBottom());
        frameLayout.addView(this.mScrollableView, viewFindViewById.getLayoutParams().width, viewFindViewById.getLayoutParams().height);
        ViewParent parent = viewFindViewById.getParent();
        if (parent instanceof LinearLayout) {
            viewFindViewById = (View) parent;
            scrollView = (ScrollView) parent.getParent();
        } else {
            scrollView = (ScrollView) parent;
        }
        scrollView.removeView(viewFindViewById);
        scrollView.addView(frameLayout, -1, -1);
    }

    private void updateLayout(int i) {
        if (isShowing()) {
            setWindowAnimations(i);
            ViewGroup viewGroup = (ViewGroup) this.mWindow.getDecorView();
            WindowManager$LayoutParams windowManager$LayoutParams = (WindowManager$LayoutParams) viewGroup.getLayoutParams();
            View childAt = viewGroup.getChildAt(0);
            FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) childAt.getLayoutParams();
            if (this.mDefaultPaddingRect == null) {
                this.mDefaultPaddingRect = new Rect();
                this.mDefaultPaddingRect.left = viewGroup.getPaddingLeft();
                this.mDefaultPaddingRect.top = viewGroup.getPaddingTop();
                this.mDefaultPaddingRect.right = viewGroup.getPaddingRight();
                this.mDefaultPaddingRect.bottom = viewGroup.getPaddingBottom();
            }
            frameLayout$LayoutParams.height = -2;
            frameLayout$LayoutParams.gravity = 17;
            if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
                windowManager$LayoutParams.height = this.mDisplayWidth;
                if (i == 1) {
                    viewGroup.setPadding(this.mDefaultPaddingRect.left, this.mDefaultPaddingRect.top, this.mDefaultPaddingRect.right, this.mDefaultPaddingRect.bottom);
                    childAt.setRotation(0.0f);
                    childAt.setTranslationX(0.0f);
                    frameLayout$LayoutParams.width = this.mDialogWidthForPort;
                    windowManager$LayoutParams.width = this.mDisplayHeight;
                } else {
                    childAt.setRotation(90.0f);
                    childAt.setTranslationX(-this.mHalfDiffBetweenDisplayWidthAndHeight);
                    if (this.mDialogWidthForLand > this.mDisplayHeight) {
                        frameLayout$LayoutParams.width = this.mDisplayHeight;
                    } else {
                        frameLayout$LayoutParams.width = this.mDialogWidthForLand;
                    }
                    int i2 = this.mHalfDiffBetweenDisplayWidthAndHeight;
                    viewGroup.setPadding(0, i2, 0, i2);
                    windowManager$LayoutParams.width = this.mDisplayWidth;
                }
            } else {
                windowManager$LayoutParams.width = this.mDisplayWidth;
                if (i == 1) {
                    viewGroup.setPadding(this.mDefaultPaddingRect.left, this.mDefaultPaddingRect.top, this.mDefaultPaddingRect.right, this.mDefaultPaddingRect.bottom);
                    childAt.setRotation(270.0f);
                    childAt.setTranslationY(-this.mHalfDiffBetweenDisplayWidthAndHeight);
                    frameLayout$LayoutParams.width = this.mDialogWidthForPort;
                    windowManager$LayoutParams.height = this.mDisplayWidth;
                } else {
                    viewGroup.setPadding(0, 0, 0, 0);
                    childAt.setRotation(0.0f);
                    childAt.setTranslationY(0.0f);
                    if (this.mDialogWidthForLand > this.mDisplayHeight) {
                        frameLayout$LayoutParams.width = this.mDisplayHeight;
                    } else {
                        frameLayout$LayoutParams.width = this.mDialogWidthForLand;
                    }
                    windowManager$LayoutParams.height = this.mDisplayHeight;
                }
            }
            this.mWindow.getWindowManager().updateViewLayout(viewGroup, windowManager$LayoutParams);
            childAt.setLayoutParams(frameLayout$LayoutParams);
        }
    }

    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        ViewGroup viewGroup = (ViewGroup) this.mWindow.getDecorView();
        viewGroup.findViewById(16908290).setBackground(viewGroup.getBackground());
        viewGroup.setBackground(null);
        updateLayout(this.mOrientation);
        this.mDialog.getWindow().clearFlags(131072);
    }

    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        release();
    }

    @Override // android.view.View$OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        ViewGroup viewGroup = (ViewGroup) view;
        viewGroup.getChildAt(0).getGlobalVisibleRect(this.mTempRect);
        int iCalculateOutValue = calculateOutValue((int) motionEvent.getRawX(), this.mTempRect.left, this.mTempRect.right);
        int iCalculateOutValue2 = calculateOutValue((int) motionEvent.getRawY(), this.mTempRect.top, this.mTempRect.bottom);
        if (iCalculateOutValue != 0 || iCalculateOutValue2 != 0) {
            if (iCalculateOutValue > 0) {
                iCalculateOutValue += viewGroup.getWidth();
            }
            if (iCalculateOutValue2 > 0) {
                iCalculateOutValue2 += viewGroup.getHeight();
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.setLocation(iCalculateOutValue, iCalculateOutValue2);
            if (isShowing()) {
                this.mDialog.onTouchEvent(motionEventObtain);
            }
            motionEventObtain.recycle();
        }
        return false;
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
        updateLayout(i);
    }

    public void setViewAsScrollable(View view) {
        this.mScrollableView = view;
        if (this.mScrollableView != null) {
            this.mDialog.setMessage("");
        }
    }

    public void show() {
        if (this.mDialog != null) {
            if (CamLog.VERBOSE) {
                CamLog.d("Show Dialog: " + this.mDialog);
            }
            this.mDialog.show();
            initialize();
        }
    }

    public void hide() {
        if (this.mDialog != null) {
            if (CamLog.VERBOSE) {
                CamLog.d("Hide Dialog: " + this.mDialog);
            }
            this.mDialog.hide();
        }
    }

    public void dismiss() {
        if (this.mDialog != null) {
            if (CamLog.VERBOSE) {
                CamLog.d("Dismiss Dialog: " + this.mDialog);
            }
            this.mDialog.dismiss();
        }
    }

    public void cancel() {
        if (this.mDialog != null) {
            if (CamLog.VERBOSE) {
                CamLog.d("Cancel Dialog: " + this.mDialog);
            }
            this.mDialog.cancel();
        }
    }

    public void setCancelable(boolean z) {
        if (this.mDialog != null) {
            this.mDialog.setCancelable(z);
        }
    }

    public void setCanceledOnTouchOutside(boolean z) {
        if (this.mDialog != null) {
            this.mDialog.setCanceledOnTouchOutside(z);
        }
    }

    public void setOnKeyListener(DialogInterface$OnKeyListener dialogInterface$OnKeyListener) {
        if (this.mDialog != null) {
            this.mDialog.setOnKeyListener(dialogInterface$OnKeyListener);
        }
    }

    public void setOnCancelListener(DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        if (this.mDialog != null) {
            this.mDialog.setOnCancelListener(dialogInterface$OnCancelListener);
        }
    }

    public void setOnDismissListener(DialogInterface$OnDismissListener dialogInterface$OnDismissListener) {
        if (this.mDialog != null) {
            this.mDialog.setOnDismissListener(dialogInterface$OnDismissListener);
        }
    }

    public boolean isShowing() {
        if (this.mDialog != null) {
            return this.mDialog.isShowing();
        }
        return false;
    }

    public void setPositiveButtonEnabled(boolean z) {
        Button button;
        if (this.mDialog == null || (button = this.mDialog.getButton(-1)) == null) {
            return;
        }
        button.setEnabled(z);
    }

    public boolean isShown(DialogInterface dialogInterface) {
        return this.mDialog == dialogInterface;
    }
}
