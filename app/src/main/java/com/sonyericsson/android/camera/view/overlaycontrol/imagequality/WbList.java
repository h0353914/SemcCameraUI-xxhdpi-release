package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.CoordinateUtil;
import com.sonyericsson.android.camera.view.setting.dialog.SettingAdapter$ItemLayoutParams;
import com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.utility.RotationUtil;

/* JADX INFO: loaded from: classes.dex */
class WbList extends SettingDialogItem {
    private final Context mContext;
    private final WbList$ViewHolder mHolder;

    static /* synthetic */ void access$100(WbList wbList, SettingItem settingItem) {
        wbList.updateSelected(settingItem);
    }

    public WbList(Context context, SettingItem settingItem) {
        super(settingItem);
        this.mContext = context;
        this.mHolder = new WbList$ViewHolder(null);
        this.mHolder.mContainer = (ViewGroup) LayoutInflater.from(context).inflate(2131493005, (ViewGroup) null);
        this.mHolder.mList = (LinearLayout) this.mHolder.mContainer.findViewById(2131296452);
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public void update(ViewGroup viewGroup, SettingAdapter$ItemLayoutParams settingAdapter$ItemLayoutParams) {
        if (CamLog.VERBOSE) {
            CamLog.d("update()");
        }
        Resources resources = this.mContext.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(2131165384);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(2131165382);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(2131165383);
        int dimensionPixelSize4 = resources.getDimensionPixelSize(2131165369) - dimensionPixelSize2;
        if (resources.getDisplayMetrics().densityDpi > DisplayMetrics.DENSITY_DEVICE_STABLE) {
            float f = (DisplayMetrics.DENSITY_DEVICE_STABLE * 1.0f) / 160.0f;
            dimensionPixelSize = (int) (CoordinateUtil.convertPx2Dip(this.mContext, dimensionPixelSize) * f);
            dimensionPixelSize2 = (int) (CoordinateUtil.convertPx2Dip(this.mContext, dimensionPixelSize2) * f);
            dimensionPixelSize3 = (int) (CoordinateUtil.convertPx2Dip(this.mContext, dimensionPixelSize3) * f);
            dimensionPixelSize4 = (int) (CoordinateUtil.convertPx2Dip(this.mContext, dimensionPixelSize4) * f);
        }
        this.mHolder.mList.removeAllViews();
        for (int i = 0; i < getItem().getChildren().size(); i++) {
            ImageView imageViewCreateIcon = createIcon(getItem().getChildren().get(i));
            this.mHolder.mList.addView(imageViewCreateIcon);
            LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) imageViewCreateIcon.getLayoutParams();
            linearLayout$LayoutParams.width = dimensionPixelSize;
            linearLayout$LayoutParams.height = dimensionPixelSize2;
            linearLayout$LayoutParams.setMargins(dimensionPixelSize4, dimensionPixelSize4, dimensionPixelSize4, dimensionPixelSize4);
            if (i != getItem().getChildren().size() - 1) {
                linearLayout$LayoutParams.bottomMargin = dimensionPixelSize3;
            }
        }
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public View getView() {
        return this.mHolder.mContainer;
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public void setUiOrientation(int i) {
        float angle = RotationUtil.getAngle(i);
        for (int i2 = 0; i2 < this.mHolder.mList.getChildCount(); i2++) {
            this.mHolder.mList.getChildAt(i2).setRotation(angle);
        }
    }

    private void updateSelected(SettingItem settingItem) {
        for (SettingItem settingItem2 : getItem().getChildren()) {
            if (settingItem2 != settingItem) {
                settingItem2.setSelected(false);
            }
        }
        settingItem.select();
        for (int i = 0; i < this.mHolder.mList.getChildCount(); i++) {
            View childAt = this.mHolder.mList.getChildAt(i);
            if (childAt.getTag() == settingItem) {
                childAt.setSelected(true);
            } else {
                childAt.setSelected(false);
            }
        }
    }

    private ImageView createIcon(SettingItem settingItem) {
        Context context = this.mHolder.mContainer.getContext();
        ImageView imageView = new ImageView(context);
        imageView.setTag(settingItem);
        imageView.setSelected(settingItem.isSelected());
        imageView.setImageResource(settingItem.getIconId());
        imageView.setBackgroundResource(2131231544);
        imageView.setScaleType(ImageView$ScaleType.CENTER);
        imageView.setContentDescription(settingItem.getContentDescription(context.getResources()));
        imageView.setClickable(true);
        imageView.setOnClickListener(new WbList$1(this, settingItem));
        return imageView;
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public void reset() {
        updateSelected(getItem().getChildren().get(WhiteBalance.AUTO.ordinal()));
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public void refresh() {
        for (int i = 0; i < this.mHolder.mList.getChildCount(); i++) {
            View childAt = this.mHolder.mList.getChildAt(i);
            if (((SettingItem) childAt.getTag()).isSelected()) {
                childAt.setSelected(true);
            } else {
                childAt.setSelected(false);
            }
        }
    }
}
