package com.sonyericsson.android.camera.view.setting.dialogitem;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.SettingUtil;
import com.sonyericsson.android.camera.view.setting.dialog.SettingAdapter$ItemLayoutParams;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItem;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItem$Selectability;
import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonyericsson.cameracommon.widget.CategorySwitch;

class SettingButton extends SettingDialogItem {
    private static final int DISABLED_FILTER = 2131099706;
    private final SettingButton$ViewHolder mHolder;
    private final boolean mIsDeviceInSecurityLock;
    private final CompoundButton$OnCheckedChangeListener mOnCheckedChangeListener;
    private final View$OnClickListener mOnClickListener;
    private final Resources mResources;

    static /* synthetic */ SettingButton$ViewHolder access$100(SettingButton settingButton) {
        return settingButton.mHolder;
    }

    static /* synthetic */ SettingItem access$200(SettingButton settingButton) {
        return settingButton.getOnItem();
    }

    static /* synthetic */ SettingItem access$300(SettingButton settingButton) {
        return settingButton.getOffItem();
    }

    static /* synthetic */ void access$400(SettingButton settingButton, boolean z) {
        settingButton.updateContentDescription(z);
    }

    public SettingButton(Context context, SettingItem settingItem, boolean z) {
        super(settingItem);
        this.mOnClickListener = new SettingButton$1(this);
        this.mOnCheckedChangeListener = new SettingButton$SwitchOnCheckedChangeListener(this, null);
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mHolder = new SettingButton$ViewHolder(null);
        this.mHolder.mContainer = layoutInflater.inflate(2131492999, (ViewGroup) null);
        this.mResources = this.mHolder.mContainer.getContext().getResources();
        this.mHolder.mBackground = (CategorySwitch) this.mHolder.mContainer.findViewById(2131296316);
        this.mHolder.mImage = (ImageView) this.mHolder.mContainer.findViewById(2131296423);
        this.mHolder.mText = (TextView) this.mHolder.mContainer.findViewById(2131296648);
        this.mHolder.mValue = (TextView) this.mHolder.mContainer.findViewById(2131296689);
        this.mHolder.mSwitch = (FrameLayout) this.mHolder.mContainer.findViewById(2131296638);
        this.mHolder.mText.setTextSize(1, 16.0f);
        this.mHolder.mValue.setTextSize(1, 14.0f);
        this.mIsDeviceInSecurityLock = z;
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public void update(ViewGroup viewGroup, SettingAdapter$ItemLayoutParams settingAdapter$ItemLayoutParams) {
        if (getItem().getSelectability() != SettingItem$Selectability.RESTRICTED) {
            switch (getItem().getDialogItemType()) {
                case 1:
                    changeToButtonFormat(viewGroup, settingAdapter$ItemLayoutParams);
                    break;
                case 2:
                    changeToValueButtonFormat(viewGroup, settingAdapter$ItemLayoutParams);
                    break;
                case 3:
                    changeToCategoryButtonFormat(viewGroup, settingAdapter$ItemLayoutParams);
                    break;
                case 4:
                    changeToCategorySwitchFormat(viewGroup, settingAdapter$ItemLayoutParams);
                    break;
            }
            setTextColorGrayOrNot();
            setIconColorGrayOrNot();
        } else {
            changeToRestrictFormat(viewGroup, settingAdapter$ItemLayoutParams);
        }
        if (CommonUtility.isMirroringRequired(this.mHolder.mContainer.getContext())) {
            this.mHolder.mText.setGravity(21);
            this.mHolder.mValue.setGravity(19);
        } else {
            this.mHolder.mText.setGravity(19);
            this.mHolder.mValue.setGravity(21);
        }
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public View getView() {
        return this.mHolder.mContainer;
    }

    private SettingItem getSelectedItem() {
        for (SettingItem settingItem : getItem().getChildren()) {
            if (settingItem.isSelectable() && settingItem.isSelected()) {
                return settingItem;
            }
        }
        return null;
    }

    private void setTextColorGrayOrNot() {
        if (getItem().isSelectable()) {
            this.mHolder.mText.setTextColor(this.mResources.getColor(2131099700));
            this.mHolder.mValue.setTextColor(this.mResources.getColor(2131099759));
        } else {
            this.mHolder.mText.setTextColor(this.mResources.getColor(2131099711));
            this.mHolder.mValue.setTextColor(this.mResources.getColor(2131099760));
        }
    }

    private void setIconColorGrayOrNot() {
        if (getItem().isSelectable()) {
            this.mHolder.mImage.clearColorFilter();
        } else {
            this.mHolder.mImage.setColorFilter(2131099706);
        }
    }

    private void changeToButtonFormat(ViewGroup viewGroup, SettingAdapter$ItemLayoutParams settingAdapter$ItemLayoutParams) {
        setText();
        setImage();
        this.mHolder.mBackground.setOnClickListener(this.mOnClickListener);
        this.mHolder.mBackground.setSelected(getItem().isSelected());
        this.mHolder.mBackground.setContentDescription(getItem().getContentDescription(this.mResources));
    }

    private void changeToCategoryButtonFormat(ViewGroup viewGroup, SettingAdapter$ItemLayoutParams settingAdapter$ItemLayoutParams) {
        int i;
        setText();
        setImage();
        setValue();
        if (this.mHolder.mImage.getVisibility() == 0) {
            i = this.mHolder.mValue.getVisibility() == 0 ? 2131165609 : 2131165605;
        } else {
            i = this.mHolder.mValue.getVisibility() == 0 ? 2131165608 : 2131165604;
        }
        this.mHolder.mText.setMaxWidth(this.mResources.getDimensionPixelSize(i));
        this.mHolder.mBackground.setOnClickListener(this.mOnClickListener);
        this.mHolder.mBackground.setContentDescription(getItem().getContentDescription(this.mResources));
    }

    private void changeToValueButtonFormat(ViewGroup viewGroup, SettingAdapter$ItemLayoutParams settingAdapter$ItemLayoutParams) {
        setText();
        setImage();
        this.mHolder.mBackground.setOnClickListener(this.mOnClickListener);
        this.mHolder.mBackground.setSelected(getItem().isSelected());
        this.mHolder.mBackground.setContentDescription(getItem().getContentDescription(this.mResources));
    }

    private void changeToCategorySwitchFormat(ViewGroup viewGroup, SettingAdapter$ItemLayoutParams settingAdapter$ItemLayoutParams) {
        setText();
        setImage();
        this.mHolder.mText.setMaxWidth(this.mResources.getDimensionPixelSize(this.mHolder.mImage.getVisibility() == 0 ? 2131165607 : 2131165606));
        updateContentDescription(getOnItem().isSelected());
        this.mHolder.mBackground.setOnCheckedChangeListener(null);
        this.mHolder.mBackground.setChecked(getOnItem().isSelected());
        if (this.mIsDeviceInSecurityLock && (getItem().compareData(UserSettingKey.GEO_TAG) || (!SettingUtil.isSideSenseEnabled(true) && getItem().compareData(UserSettingKey.SIDE_SENSE)))) {
            this.mHolder.mBackground.setOnClickListener(this.mOnClickListener);
        } else {
            this.mHolder.mBackground.setOnCheckedChangeListener(this.mOnCheckedChangeListener);
        }
        this.mHolder.mSwitch.setVisibility(0);
    }

    private void changeToRestrictFormat(ViewGroup viewGroup, SettingAdapter$ItemLayoutParams settingAdapter$ItemLayoutParams) {
        setText();
        setImage();
        if (getSelectedItem() == null) {
            this.mHolder.mValue.setText(2131690038);
        } else {
            setValue();
        }
        this.mHolder.mValue.setVisibility(0);
        this.mHolder.mBackground.setOnClickListener(this.mOnClickListener);
        this.mHolder.mBackground.setSelected(getItem().isSelected());
        this.mHolder.mBackground.setContentDescription(getItem().getContentDescription(this.mResources));
    }

    private SettingItem getOnItem() {
        return getItem().getChildren().get(0);
    }

    private SettingItem getOffItem() {
        return getItem().getChildren().get(1);
    }

    private void updateContentDescription(boolean z) {
        String str;
        String text = getItem().getText(this.mResources);
        if (z) {
            str = text + " " + getOnItem().getContentDescription(this.mResources);
        } else {
            str = text + " " + getOffItem().getContentDescription(this.mResources);
        }
        this.mHolder.mContainer.setContentDescription(str);
    }

    private void setText() {
        this.mHolder.mText.setText(getItem().getText(this.mResources));
        this.mHolder.mText.setVisibility(0);
    }

    private void setImage() {
        if (getItem().getIconId() != -1) {
            this.mHolder.mImage.setImageResource(getItem().getIconId());
            this.mHolder.mImage.setVisibility(0);
        } else {
            this.mHolder.mImage.setVisibility(8);
        }
    }

    private void setValue() {
        SettingItem selectedItem = getSelectedItem();
        if (selectedItem != null) {
            this.mHolder.mValue.setText(selectedItem.getText(this.mResources));
            this.mHolder.mValue.setVisibility(0);
            return;
        }
        SettingItem item = getItem();
        if (item instanceof TypedSettingItem) {
            String valueText = ((TypedSettingItem) item).getValueText();
            if (valueText != null && valueText.length() > 0) {
                this.mHolder.mValue.setText(valueText);
                this.mHolder.mValue.setVisibility(0);
                return;
            } else {
                this.mHolder.mValue.setVisibility(8);
                return;
            }
        }
        this.mHolder.mValue.setVisibility(8);
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem
    public void setClickable(boolean z) {
        this.mHolder.mBackground.setClickable(z);
    }
}
