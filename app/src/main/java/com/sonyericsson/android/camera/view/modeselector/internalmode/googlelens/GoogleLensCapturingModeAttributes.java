package com.sonyericsson.android.camera.view.modeselector.internalmode.googlelens;

import android.content.Context;
import com.sonyericsson.android.camera.view.modeselector.CapturingModeAttributes;
import com.sonyericsson.android.camera.view.modeselector.ResourceUtil;

public class GoogleLensCapturingModeAttributes extends CapturingModeAttributes {
    private Context mContext;

    public GoogleLensCapturingModeAttributes(Context context, CapturingModeAttributes capturingModeAttributes) {
        super(capturingModeAttributes.getPackageName(), capturingModeAttributes.getActivityName(), capturingModeAttributes.getModeName(), capturingModeAttributes.getSelectorIconId(), capturingModeAttributes.getSelectorLabelId(), capturingModeAttributes.getDescriptionLabelId(), capturingModeAttributes.getShortcutIconId(), capturingModeAttributes.getShortcutLabelId(), capturingModeAttributes.getInternalCaptureType(), capturingModeAttributes.isVisibleNormal(), capturingModeAttributes.isVisibleOneshot(), capturingModeAttributes.isVisibleShortcut(), capturingModeAttributes.getTag());
        this.mContext = context;
    }

    @Override // com.sonyericsson.android.camera.view.modeselector.CapturingModeAttributes
    public String getSelectorLabel() {
        return ResourceUtil.getString(this.mContext, getPackageName(), getSelectorLabelId(), "", 100);
    }
}
