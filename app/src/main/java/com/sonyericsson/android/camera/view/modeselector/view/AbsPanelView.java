package com.sonyericsson.android.camera.view.modeselector.view;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.sonymobile.cameracommon.font.FontUtil;
import com.sonymobile.cameracommon.font.FontUtil$RobotoFontType;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbsPanelView extends FrameLayout {
    public static final Typeface REGULAR_ROBOTO = FontUtil.createTypeface(FontUtil$RobotoFontType.REGULAR);

    public int getAppIconHeight() {
        return 0;
    }

    public ImageView getAppIconView() {
        return null;
    }

    public int getAppIconWidth() {
        return 0;
    }

    public void setItem(AbsPanelView$PanelAttributes absPanelView$PanelAttributes) {
    }

    public void setUiOrientation(int i) {
    }

    public AbsPanelView(Context context) {
        super(context);
    }

    public AbsPanelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
