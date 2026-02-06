package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.CoordinateUtil;
import com.sonyericsson.android.camera.view.setting.dialog.SettingAdapter$ItemLayoutParams;
import com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItem;
import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonymobile.cameracommon.font.FontUtil;
import com.sonymobile.cameracommon.font.FontUtil$RobotoFontType;
import java.util.Iterator;

abstract class SettingItemSlider extends SettingDialogItem {
    private int mBottomPadding;
    private final Context mContext;
    private int mCurrentPosition;
    private final SettingItemSlider$ViewHolder mHolder;
    private final OnSlideListener mOnSlideListener;
    private final boolean mShowAutoSettingItemAsButton;
    private final boolean mShowMaxMinValue;
    private int mTopPadding;

    protected abstract int getBackgroundImageResource(int i);

    protected int getDefaultSettingItemPosition() {
        return 0;
    }

    protected abstract String getMaxValue();

    protected abstract String getMinValue();

    static /* synthetic */ String access$100(SettingItemSlider settingItemSlider) {
        return settingItemSlider.getTag();
    }

    static /* synthetic */ OnSlideListener access$200(SettingItemSlider settingItemSlider) {
        return settingItemSlider.mOnSlideListener;
    }

    public SettingItemSlider(Context context, SettingItem settingItem, boolean z, boolean z2, OnSlideListener onSlideListener) {
        super(settingItem);
        this.mTopPadding = -1;
        this.mBottomPadding = -1;
        this.mCurrentPosition = -1;
        this.mContext = context;
        this.mShowAutoSettingItemAsButton = z;
        this.mShowMaxMinValue = z2;
        this.mOnSlideListener = onSlideListener;
        this.mHolder = new SettingItemSlider$ViewHolder(null);
        this.mHolder.mContainer = new SettingItemSlider$1(this, context);
        View viewInflate = LayoutInflater.from(context).inflate(2131493006, (ViewGroup) null);
        this.mHolder.mContainer.addView(viewInflate);
        this.mHolder.mBackground = viewInflate.findViewById(2131296316);
        this.mHolder.mBackground.setOnTouchListener(new SettingItemSlider$2(this));
        this.mHolder.mIndicator = (ImageView) viewInflate.findViewById(2131296429);
        this.mHolder.mIndicator.setVisibility(0);
        if (this.mShowAutoSettingItemAsButton) {
            this.mHolder.mAutoButton = (ImageView) viewInflate.findViewById(2131296296);
            this.mHolder.mAutoButton.setVisibility(0);
            this.mHolder.mAutoButton.setOnClickListener(new SettingItemSlider$3(this));
        }
        if (this.mShowMaxMinValue) {
            this.mHolder.mMaxValue = (TextView) viewInflate.findViewById(2131296461);
            this.mHolder.mMinValue = (TextView) viewInflate.findViewById(2131296466);
            if (this.mContext.getResources().getDisplayMetrics().densityDpi > DisplayMetrics.DENSITY_DEVICE_STABLE) {
                float f = (DisplayMetrics.DENSITY_DEVICE_STABLE * 1.0f) / 160.0f;
                FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mHolder.mMaxValue.getLayoutParams();
                FrameLayout$LayoutParams frameLayout$LayoutParams2 = (FrameLayout$LayoutParams) this.mHolder.mMinValue.getLayoutParams();
                frameLayout$LayoutParams.setMargins(0, (int) (CoordinateUtil.convertPx2Dip(this.mContext, frameLayout$LayoutParams.leftMargin) * f), 0, 0);
                frameLayout$LayoutParams2.setMargins(0, 0, 0, (int) (CoordinateUtil.convertPx2Dip(this.mContext, frameLayout$LayoutParams2.leftMargin) * f));
                frameLayout$LayoutParams.height = (int) (CoordinateUtil.convertPx2Dip(this.mContext, frameLayout$LayoutParams.height) * f);
                frameLayout$LayoutParams2.height = (int) (CoordinateUtil.convertPx2Dip(this.mContext, frameLayout$LayoutParams2.height) * f);
                this.mHolder.mMaxValue.setLayoutParams(frameLayout$LayoutParams);
                this.mHolder.mMinValue.setLayoutParams(frameLayout$LayoutParams2);
            }
            FontUtil.setRobotoFont(this.mHolder.mMaxValue, FontUtil$RobotoFontType.MEDIUM);
            FontUtil.setRobotoFont(this.mHolder.mMinValue, FontUtil$RobotoFontType.MEDIUM);
            this.mHolder.mMaxValue.setText(getMaxValue());
            this.mHolder.mMinValue.setText(getMinValue());
            this.mHolder.mMaxValue.setVisibility(0);
            this.mHolder.mMinValue.setVisibility(0);
        }
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public void reset() {
        int defaultSettingItemPosition;
        if (this.mShowAutoSettingItemAsButton) {
            defaultSettingItemPosition = getAutoSettingItemPosition();
        } else {
            defaultSettingItemPosition = getDefaultSettingItemPosition();
        }
        updateIndicator(defaultSettingItemPosition, true);
    }

    protected void onAutoCheckedChanged(boolean z) {
        int defaultSettingItemPosition;
        if (z) {
            defaultSettingItemPosition = getAutoSettingItemPosition();
        } else {
            defaultSettingItemPosition = getDefaultSettingItemPosition();
        }
        updateIndicator(defaultSettingItemPosition, true);
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public void refresh() {
        int selectedSettingItemPosition = getSelectedSettingItemPosition();
        if (CamLog.VERBOSE) {
            CamLog.d(getTag(), "refresh: position = " + selectedSettingItemPosition);
        }
        updateIndicator(selectedSettingItemPosition, false);
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public void update(ViewGroup viewGroup, SettingAdapter$ItemLayoutParams settingAdapter$ItemLayoutParams) {
        refresh();
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public View getView() {
        return this.mHolder.mContainer;
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public void setUiOrientation(int i) {
        this.mHolder.mBackground.setBackgroundResource(getBackgroundImageResource(i));
        float angle = RotationUtil.getAngle(i);
        if (this.mShowAutoSettingItemAsButton) {
            this.mHolder.mAutoButton.setRotation(angle);
        }
        if (this.mShowMaxMinValue) {
            this.mHolder.mMaxValue.setRotation(angle);
            this.mHolder.mMinValue.setRotation(angle);
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getCurrentPosition() {
        return this.mCurrentPosition;
    }

    protected void update(float f) {
        if (CamLog.VERBOSE) {
            CamLog.d(getTag(), "update: y = " + f);
        }
        updateIndicator(Math.min(Math.max((int) ((f - getTopPadding()) / getMemoryStepSize()), 0), getMemoryStepCount()), true);
    }

    protected void updateIndicator(int i, boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d(getTag(), "updateIndicator: position = " + i);
        }
        if (i >= 0 && i <= getMemoryStepCount()) {
            this.mHolder.mIndicator.setVisibility(0);
            this.mHolder.mIndicator.setY(((getMemoryStepSize() * i) + getTopPadding()) - (this.mHolder.mIndicator.getMeasuredHeight() / 2.0f));
            if (CamLog.VERBOSE) {
                CamLog.d(getTag(), "updateIndicator: setY = " + this.mHolder.mIndicator.getY());
            }
            this.mHolder.mIndicator.setImageResource(getIndicatorImageResource(i));
            this.mHolder.mIndicator.setContentDescription(getIndicatorContentDescription(i));
        }
        if (this.mShowAutoSettingItemAsButton) {
            if (i == getAutoSettingItemPosition()) {
                this.mHolder.mIndicator.setVisibility(4);
                this.mHolder.mAutoButton.setSelected(true);
                this.mHolder.mAutoButton.setContentDescription(getAutoButtonContentDescription(true));
            } else {
                this.mHolder.mAutoButton.setSelected(false);
                this.mHolder.mAutoButton.setContentDescription(getAutoButtonContentDescription(false));
            }
        }
        if (i != this.mCurrentPosition) {
            updateSelectedSettingItem(i, z);
            this.mCurrentPosition = i;
        }
    }

    protected String getAutoButtonContentDescription(boolean z) {
        return getString(z ? 2131689576 : 2131689575);
    }

    protected String getIndicatorContentDescription(int i) {
        return getItem().getChildren().get(indexOf(i)).getContentDescription(this.mContext.getResources());
    }

    protected int getIndicatorImageResource(int i) {
        return (this.mShowAutoSettingItemAsButton || i != getDefaultSettingItemPosition()) ? 2131231540 : 2131231541;
    }

    protected void updateSelectedSettingItem(int i, boolean z) {
        Iterator<SettingItem> it = getItem().getChildren().iterator();
        while (it.hasNext()) {
            it.next().setSelected(false);
        }
        int iIndexOf = indexOf(i);
        if (CamLog.VERBOSE) {
            CamLog.d(getTag(), "updateSelectedSettingItem: position = " + i);
            CamLog.d(getTag(), "updateSelectedSettingItem:    index = " + iIndexOf);
        }
        SettingItem settingItem = getItem().getChildren().get(iIndexOf);
        settingItem.setSelected(true);
        if (z) {
            if (CamLog.VERBOSE) {
                CamLog.d(getTag(), "updateSelectedSettingItem: apply " + ((TypedSettingItem) settingItem).getData());
            }
            settingItem.select();
        }
    }

    protected int getSelectedSettingItemPosition() {
        int memoryStepCount = getMemoryStepCount() + (this.mShowAutoSettingItemAsButton ? 2 : 1);
        for (int i = 0; i < memoryStepCount; i++) {
            int iIndexOf = indexOf(i);
            if (getItem().getChildren().get(iIndexOf).isSelected()) {
                if (CamLog.VERBOSE) {
                    CamLog.d(getTag(), "getSelectedSettingItemPosition: position = " + i);
                    CamLog.d(getTag(), "getSelectedSettingItemPosition:    index = " + iIndexOf);
                }
                return i;
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d(getTag(), "getSelectedSettingItemPosition: position = 0");
            CamLog.d(getTag(), "getSelectedSettingItemPosition:    index = " + indexOf(0));
        }
        return 0;
    }

    protected float getMemoryStepSize() {
        return ((this.mHolder.mBackground.getMeasuredHeight() - getTopPadding()) - getBottomPadding()) / getMemoryStepCount();
    }

    protected int getMemoryStepCount() {
        int size = getItem().getChildren().size();
        if (this.mShowAutoSettingItemAsButton) {
            if (size <= 2) {
                throw new IllegalStateException("This method should be overwritten for your use case");
            }
        } else if (size <= 1) {
            throw new IllegalStateException("This method should be overwritten for your use case");
        }
        return size - (this.mShowAutoSettingItemAsButton ? 2 : 1);
    }

    protected int indexOf(int i) {
        if (i < 0 || i >= getItem().getChildren().size()) {
            throw new IllegalStateException("This method should be overwritten for your use case");
        }
        return (getItem().getChildren().size() - 1) - i;
    }

    protected int getAutoSettingItemPosition() {
        if (!this.mShowAutoSettingItemAsButton) {
            throw new IllegalStateException("This method should not be called when auto is unsupported");
        }
        return getMemoryStepCount() + 1;
    }

    protected int getTopPadding() {
        if (this.mTopPadding == -1) {
            this.mTopPadding = getDimension(2131165630);
            if (this.mContext.getResources().getDisplayMetrics().densityDpi > DisplayMetrics.DENSITY_DEVICE_STABLE) {
                this.mTopPadding = (int) (CoordinateUtil.convertPx2Dip(this.mContext, this.mTopPadding) * ((DisplayMetrics.DENSITY_DEVICE_STABLE * 1.0f) / 160.0f));
            }
        }
        return this.mTopPadding;
    }

    protected int getBottomPadding() {
        if (this.mBottomPadding == -1) {
            if (!this.mShowAutoSettingItemAsButton) {
                this.mBottomPadding = getDimension(2131165629);
            } else {
                this.mBottomPadding = getDimension(2131165628);
            }
            if (this.mContext.getResources().getDisplayMetrics().densityDpi > DisplayMetrics.DENSITY_DEVICE_STABLE) {
                this.mBottomPadding = (int) (CoordinateUtil.convertPx2Dip(this.mContext, this.mBottomPadding) * ((DisplayMetrics.DENSITY_DEVICE_STABLE * 1.0f) / 160.0f));
            }
        }
        return this.mBottomPadding;
    }

    protected String getString(int i) {
        return this.mContext.getResources().getString(i);
    }

    protected int getDimension(int i) {
        return this.mContext.getResources().getDimensionPixelSize(i);
    }

    private String getTag() {
        return getClass().getSimpleName();
    }
}
