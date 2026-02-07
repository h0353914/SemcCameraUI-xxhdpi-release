package com.sonyericsson.android.camera.view.selectabledialog;

import android.animation.Animator;
import android.content.Context;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.setting.SettingDialogStack;
import com.sonyericsson.android.camera.view.setting.dialog.SettingDialogInterface;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbsSelectableDialog implements SettingDialogInterface, ScrollContainer$OnScrollListener {
    private Animator mAnimation;
    protected final Context mContext;
    protected AbsDialogScrollView mDialogScrollView;
    protected AbsSelectableDialog$SelectableDialogType mDialogType;
    protected boolean mIsExpandedWhenOpened;
    protected int mOrientation;
    protected final AbsSelectableDialog$Params mParams;
    protected FrameLayout mParent;
    protected SettingDialogStack mSettingDialogStack = null;
    protected int mBottomMarginHint = 0;

    @Override // com.sonyericsson.android.camera.view.setting.dialog.SettingDialogInterface
    public boolean hitTest(int i, int i2) {
        return false;
    }

    public boolean isOperationAcceptable() {
        return true;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.ScrollContainer$OnScrollListener
    public void onScrollFinished(ScrollContainer$Status scrollContainer$Status) {
    }

    static /* synthetic */ Animator access$002(AbsSelectableDialog absSelectableDialog, Animator animator) {
        absSelectableDialog.mAnimation = animator;
        return animator;
    }

    public AbsSelectableDialog(Context context, AbsSelectableDialog$Params absSelectableDialog$Params, boolean z) {
        this.mContext = context;
        this.mParams = new AbsSelectableDialog$Params(absSelectableDialog$Params);
        this.mIsExpandedWhenOpened = z;
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialog.SettingDialogInterface
    public void close() {
        if (this.mParent == null) {
            return;
        }
        if (this.mDialogScrollView.getScrollStatus() == ScrollContainer$Status.EXIT) {
            closeImmediate();
        } else {
            startCloseAnimation();
        }
    }

    public void closeImmediate() {
        if (this.mParent == null) {
            return;
        }
        this.mParent.removeView(this.mDialogScrollView);
        this.mParent = null;
        if (this.mAnimation != null) {
            this.mAnimation.cancel();
        }
        this.mDialogScrollView = null;
        this.mSettingDialogStack = null;
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialog.SettingDialogInterface
    public void setSensorOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            if (this.mDialogScrollView != null) {
                onOrientationChanged(i);
            }
        }
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialog.SettingDialogInterface
    public void setEnabled(boolean z) {
        if (this.mDialogScrollView != null) {
            this.mDialogScrollView.setEnabled(z);
        }
    }

    protected boolean isPortrait() {
        return this.mOrientation == 1;
    }

    protected void onOrientationChanged(int i) {
        this.mDialogScrollView.setUiOrientation(i);
        updateRotatableLayout();
    }

    protected void adjustLayout() {
        this.mDialogScrollView.updateDefaultScrollPosition();
        updateRotatableLayout();
    }

    private void updateRotatableLayout() {
        if (this.mParent == null) {
            return;
        }
        this.mDialogScrollView.updateRotatableLayout(this.mParent, computeWidth(), computeHeight());
    }

    public void addPanel(String str, ArrayAdapter arrayAdapter) {
        this.mDialogScrollView.addContent(str, arrayAdapter);
    }

    public void addPanel(ArrayAdapter arrayAdapter) {
        addPanel(null, arrayAdapter);
    }

    public void setSettingDialogStack(SettingDialogStack settingDialogStack) {
        this.mSettingDialogStack = settingDialogStack;
    }

    public void setBottomMarginHint(int i) {
        this.mDialogScrollView.setBottomMarginHint(i);
    }

    public void setTopMarginHint(int i) {
        this.mDialogScrollView.setTopMarginHint(i);
    }

    protected void startOpenAnimation() {
        this.mDialogScrollView.startOpenAnimation(computeWidth(), computeHeight(), new AbsSelectableDialog$1(this));
    }

    protected void startCloseAnimation() {
        setEnabled(false);
        this.mDialogScrollView.startCloseAnimation(computeWidth(), computeHeight(), new AbsSelectableDialog$2(this));
    }

    protected int computeWidth() {
        return this.mParams.itemWidth + getSideEdgeMargin();
    }

    protected int computeHeight() {
        return Math.min(computeContentsHeight() + getSideEdgeMargin(), isPortrait() ? this.mParams.maxHeightPortrait : this.mParams.maxHeightLandscape);
    }

    private int getSideEdgeMargin() {
        return this.mParams.dropShadowSpace * 2;
    }

    private int computeContentsHeight() {
        if (this.mIsExpandedWhenOpened) {
            return this.mDialogScrollView.getTotalArrangeHeight();
        }
        return this.mDialogScrollView.getArrangeHeightAtIndex(0);
    }

    public boolean isExpanded() {
        return this.mIsExpandedWhenOpened;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.ScrollContainer$OnScrollListener
    public void onScrollProgressChanged(float f) {
        if (CamLog.VERBOSE) {
            CamLog.d("scrollcontainer currentProgress:" + f);
        }
        if (f == 1.0f) {
            this.mIsExpandedWhenOpened = true;
        } else {
            this.mIsExpandedWhenOpened = false;
        }
    }
}
