package com.sonyericsson.android.camera.view.selectabledialog;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout$LayoutParams;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;
import com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;
import com.sonyericsson.cameracommon.utility.RotationUtil;

public class SettingMenuView extends AbsDialogScrollView {
    private final boolean mIsSettingMenu;
    private final AbsSelectableDialog$SelectableDialogType mMenuDialogType;

    static /* synthetic */ boolean access$000(SettingMenuView settingMenuView) {
        return settingMenuView.mIsSettingMenu;
    }

    public SettingMenuView(@NonNull Context context, AbsSelectableDialog$SelectableDialogType absSelectableDialog$SelectableDialogType) {
        super(context);
        this.mMenuDialogType = absSelectableDialog$SelectableDialogType;
        this.mIsSettingMenu = absSelectableDialog$SelectableDialogType == AbsSelectableDialog$SelectableDialogType.SETTING_MENU;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView
    public void updateDefaultScrollPosition() {
        if (this.mIsSettingMenu) {
            super.updateDefaultScrollPosition();
        }
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView
    protected void addContent(String str, ArrayAdapter arrayAdapter) {
        SettingMenuView$ListArrange settingMenuView$ListArrange = new SettingMenuView$ListArrange(this, str, arrayAdapter, this.mArranges.isEmpty());
        this.mArranges.add(settingMenuView$ListArrange);
        addContentView(settingMenuView$ListArrange.getView());
        settingMenuView$ListArrange.getView().getLayoutParams().width = -1;
        settingMenuView$ListArrange.getView().getLayoutParams().height = -2;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView
    protected int getScrollableContentLength() {
        if (this.mArranges.isEmpty()) {
            return 0;
        }
        int iComputeArrangeHeight = 0;
        for (int i = 0; i < this.mArranges.size(); i++) {
            iComputeArrangeHeight += this.mArranges.get(i).computeArrangeHeight();
        }
        return iComputeArrangeHeight;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView
    public void selectTagItem(Object obj) {
        SettingDialogItem settingDialogItemFindItemWith = findItemWith(obj);
        if (settingDialogItemFindItemWith != null) {
            post(new SettingMenuView$1(this, obj, settingDialogItemFindItemWith));
        }
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView
    public void updateRotatableLayout(ViewGroup viewGroup, int i, int i2) {
        if (this.mMenuDialogType == AbsSelectableDialog$SelectableDialogType.SETTING_MONOCHROME) {
            adjustMonochromeLayout(i, i2);
            return;
        }
        if (((FrameLayout$LayoutParams) this.mBackground.getLayoutParams()).gravity == 48) {
            adjustRotatableLayoutGravityTop(viewGroup, i, i2);
        } else {
            adjustRotatableLayoutGravityBottom(viewGroup, i, i2);
        }
        setPivotX(getLayoutParams().width / 2.0f);
        setPivotY(getLayoutParams().height - (getLayoutParams().width / 2.0f));
        setRotation(RotationUtil.getAngle(this.mOrientation));
        requestLayout();
    }

    private void adjustRotatableLayoutGravityBottom(ViewGroup viewGroup, int i, int i2) {
        if (this.mIsSettingMenu) {
            FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mSomcScroller.getLayoutParams();
            if (isPortrait()) {
                frameLayout$LayoutParams.height = this.mParams.maxHeightPortrait;
            } else {
                frameLayout$LayoutParams.height = this.mParams.maxHeightLandscape;
            }
            this.mSomcScroller.setOrientation(this.mOrientation);
        }
        int i3 = getLayoutParams().height;
        int i4 = getLayoutParams().width;
        int i5 = i3 - (isPortrait() ? this.mParams.maxHeightPortrait : this.mParams.maxHeightLandscape);
        setPadding(0, i5, 0, Math.max(0, Math.min(this.mBottomMarginHint, i3 - (i5 + i2))));
        FrameLayout$LayoutParams frameLayout$LayoutParams2 = (FrameLayout$LayoutParams) getLayoutParams();
        if (isPortrait()) {
            frameLayout$LayoutParams2.setMargins(this.mParams.leftMarginPortrait, 0, this.mParams.rightMarginPortrait, this.mParams.bottomMarginPortrait);
            if (this.mIsSettingMenu && this.mSomcScroller.getCurrentStatus() != ScrollContainer$Status.FULLSCREEN) {
                this.mSomcScroller.setViewMargin(this.mParams.maxHeightPortrait - getInitialDisplayHeight());
            }
        } else {
            frameLayout$LayoutParams2.setMargins(this.mParams.leftMarginLandscape, 0, (viewGroup.getMeasuredWidth() - viewGroup.getMeasuredHeight()) / 2, this.mParams.bottomMarginLandscape);
            if (this.mIsSettingMenu && this.mSomcScroller.getCurrentStatus() != ScrollContainer$Status.FULLSCREEN) {
                this.mSomcScroller.setViewMargin(this.mParams.maxHeightLandscape - getInitialDisplayHeight());
            }
        }
        if (SettingMenuView$2.$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$AbsSelectableDialog$HorizontalGravity[this.mParams.horizontalGavity.ordinal()] != 1) {
            return;
        }
        if (isPortrait()) {
            setTranslationX(i2 - i4);
        } else {
            setTranslationX(0.0f);
        }
    }

    private void adjustRotatableLayoutGravityTop(ViewGroup viewGroup, int i, int i2) {
        int i3;
        Rect rect = new Rect();
        if (viewGroup.getGlobalVisibleRect(rect)) {
            if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
                rect = new Rect(0, 0, rect.height(), rect.width());
            }
            int iDimenToPixel = dimenToPixel(2131165584);
            int iDimenToPixel2 = dimenToPixel(2131165584);
            int iDimenToPixel3 = dimenToPixel(2131165584);
            int iDimenToPixel4 = dimenToPixel(2131165610);
            int i4 = getLayoutParams().height;
            int i5 = getLayoutParams().width;
            int i6 = isPortrait() ? ((i5 - i) - iDimenToPixel2) + iDimenToPixel4 : i5 - i;
            int i7 = isPortrait() ? this.mParams.maxHeightPortrait : this.mParams.maxHeightLandscape;
            int i8 = isPortrait() ? rect.right : rect.bottom;
            int i9 = isPortrait() ? 0 : i4 - rect.bottom;
            if (this.mIsExpandedWhenOpened) {
                if (this.mTopMarginHint + i2 < (iDimenToPixel4 * 2) + i8) {
                    i3 = ((this.mTopMarginHint - iDimenToPixel4) - iDimenToPixel) + i9;
                } else {
                    int i10 = (-i2) + i8 + i9;
                    i3 = i2 == i7 ? i10 - iDimenToPixel : i10 + iDimenToPixel;
                }
            } else if (this.mTopMarginHint + i2 < rect.right + (iDimenToPixel4 * 2)) {
                i3 = (this.mTopMarginHint - iDimenToPixel4) - iDimenToPixel;
            } else {
                int i11 = (-i2) + rect.right;
                i3 = i2 == i7 ? i11 - iDimenToPixel : i11 + iDimenToPixel;
            }
            setPadding(i6, i3, 0, -iDimenToPixel3);
            FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) getLayoutParams();
            if (!isPortrait()) {
                frameLayout$LayoutParams.setMargins(this.mParams.leftMarginLandscape, 0, ((viewGroup.getMeasuredWidth() - viewGroup.getMeasuredHeight()) / 2) - iDimenToPixel2, this.mParams.bottomMarginLandscape);
            } else {
                frameLayout$LayoutParams.setMargins(this.mParams.leftMarginLandscape, 0, this.mParams.rightMarginLandscape, this.mParams.bottomMarginLandscape);
            }
        }
    }

    private void adjustMonochromeLayout(int i, int i2) {
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) getLayoutParams();
        float angle = RotationUtil.getAngle(this.mOrientation);
        int navigationBarMargin = LayoutDependencyResolver.getNavigationBarMargin(getContext());
        int i3 = getLayoutParams().height;
        int i4 = getLayoutParams().width;
        int iDimenToPixel = dimenToPixel(2131165451);
        int iDimenToPixel2 = dimenToPixel(2131165450);
        if (isPortrait()) {
            if (angle != getRotation()) {
                float f = i4 / 2.0f;
                setPivotX(f);
                setPivotY(i3 - f);
                setRotation(angle);
                if (this.mBottomMarginHint == 0) {
                    frameLayout$LayoutParams.leftMargin = ((((i3 - i4) - this.mTopMarginHint) - iDimenToPixel) - navigationBarMargin) - iDimenToPixel2;
                    frameLayout$LayoutParams.bottomMargin = iDimenToPixel2;
                } else {
                    int i5 = (this.mTopMarginHint - (i4 - i2)) + iDimenToPixel2;
                    if (i2 + i5 < i4) {
                        frameLayout$LayoutParams.leftMargin = i5;
                    } else {
                        frameLayout$LayoutParams.leftMargin = ((i3 - i4) - iDimenToPixel2) - navigationBarMargin;
                    }
                    frameLayout$LayoutParams.bottomMargin = (i4 - i) / 2;
                }
            }
        } else if (angle != getRotation()) {
            float f2 = i4 / 2.0f;
            setPivotX(f2);
            setPivotY(i3 - f2);
            setRotation(angle);
            if (this.mBottomMarginHint == 0) {
                frameLayout$LayoutParams.leftMargin = ((i3 - this.mTopMarginHint) - i) - navigationBarMargin;
                frameLayout$LayoutParams.bottomMargin = (iDimenToPixel2 * 2) + iDimenToPixel;
            } else {
                frameLayout$LayoutParams.leftMargin = ((i3 - this.mBottomMarginHint) + ((this.mBottomMarginHint - i) / 2)) - navigationBarMargin;
                if (this.mTopMarginHint > i2 + iDimenToPixel2) {
                    frameLayout$LayoutParams.bottomMargin = (this.mTopMarginHint - i2) - iDimenToPixel2;
                } else {
                    frameLayout$LayoutParams.bottomMargin = iDimenToPixel2;
                }
            }
        } else if (this.mBottomMarginHint == 0) {
            frameLayout$LayoutParams.leftMargin = ((i3 - this.mTopMarginHint) - i) - navigationBarMargin;
            frameLayout$LayoutParams.bottomMargin = (iDimenToPixel2 * 2) + iDimenToPixel;
        } else {
            frameLayout$LayoutParams.leftMargin = (i3 - this.mBottomMarginHint) + (((this.mBottomMarginHint - i) - navigationBarMargin) / 2);
            if (this.mTopMarginHint > i2 + iDimenToPixel2) {
                frameLayout$LayoutParams.bottomMargin = (this.mTopMarginHint - i2) - iDimenToPixel2;
            } else {
                frameLayout$LayoutParams.bottomMargin = iDimenToPixel2;
            }
        }
        setLayoutParams(frameLayout$LayoutParams);
    }

    private SettingDialogItem findItemWith(Object obj) {
        View viewFindItemViewWithTag = findItemViewWithTag(obj);
        if (viewFindItemViewWithTag == null || !(viewFindItemViewWithTag.getTag() instanceof SettingDialogItem)) {
            return null;
        }
        return (SettingDialogItem) viewFindItemViewWithTag.getTag();
    }
}
