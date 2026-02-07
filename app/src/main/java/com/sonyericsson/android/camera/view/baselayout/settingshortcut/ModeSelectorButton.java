package com.sonyericsson.android.camera.view.baselayout.settingshortcut;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.TextView;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonymobile.cameracommon.font.FontUtil;
import com.sonymobile.cameracommon.font.FontUtil$RobotoFontType;

/* JADX INFO: loaded from: classes.dex */
public class ModeSelectorButton extends TextView {
    private boolean mIsAvailable;
    private int mOrientation;
    private boolean mRequestVisible;

    public ModeSelectorButton(Context context) {
        super(context);
        init();
    }

    public ModeSelectorButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public void setUiOrientation(int i) {
        this.mOrientation = i;
        int width = getWidth();
        int height = getHeight();
        if (width == 0 || height == 0) {
            return;
        }
        float f = width / 4.0f;
        setPivotX((height / 4.0f) + f);
        setPivotY(((3 * height) / 4.0f) - f);
        setRotation(RotationUtil.getAngle(i));
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setUiOrientation(this.mOrientation);
    }

    public void update(boolean z) {
        ModeSelectorButton$Type modeSelectorButton$Type;
        Resources resources = getResources();
        if (z) {
            modeSelectorButton$Type = ModeSelectorButton$Type.RETURN;
        } else {
            modeSelectorButton$Type = ModeSelectorButton$Type.MODE_SELECTOR;
        }
        setBackgroundResource(ModeSelectorButton$Type.access$000(modeSelectorButton$Type));
        setTextResource(ModeSelectorButton$Type.access$100(modeSelectorButton$Type));
        setContentDescription(resources.getString(ModeSelectorButton$Type.access$200(modeSelectorButton$Type)));
        setMinimumWidth(ModeSelectorButton$Type.access$300(modeSelectorButton$Type) != -1 ? resources.getDimensionPixelSize(ModeSelectorButton$Type.access$300(modeSelectorButton$Type)) : 0);
    }

    public void show() {
        this.mRequestVisible = true;
        update();
    }

    public void hide() {
        this.mRequestVisible = false;
        update();
    }

    public void set(boolean z) {
        this.mIsAvailable = z;
        update();
    }

    private void init() {
        this.mIsAvailable = false;
        this.mRequestVisible = false;
        FontUtil.setRobotoFont(this, FontUtil$RobotoFontType.MEDIUM);
        update();
    }

    private void update() {
        if (this.mIsAvailable && this.mRequestVisible) {
            setVisibility(0);
            setClickable(true);
        } else {
            setVisibility(8);
            setClickable(false);
            setPressed(false);
            setSelected(false);
        }
    }

    private void setTextResource(int i) {
        if (-1 == i) {
            super.setText("");
        } else {
            super.setText(getResources().getString(i).toUpperCase());
        }
    }
}
