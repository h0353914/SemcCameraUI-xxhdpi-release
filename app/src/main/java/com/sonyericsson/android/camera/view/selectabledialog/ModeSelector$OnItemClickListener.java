package com.sonyericsson.android.camera.view.selectabledialog;

import android.view.View;
import android.view.View$OnClickListener;
import com.sonyericsson.android.camera.view.modeselector.AddonMode;
import com.sonyericsson.android.camera.view.modeselector.InternalMode;
import com.sonyericsson.android.camera.view.modeselector.Mode;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.android.camera.view.modeselector.view.CapturingModePanelAttributes;

/* JADX INFO: loaded from: classes.dex */
class ModeSelector$OnItemClickListener implements View$OnClickListener {
    final /* synthetic */ ModeSelector this$0;

    private ModeSelector$OnItemClickListener(ModeSelector modeSelector) {
        this.this$0 = modeSelector;
    }

    /* synthetic */ ModeSelector$OnItemClickListener(ModeSelector modeSelector, ModeSelector$1 modeSelector$1) {
        this(modeSelector);
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (view.getTag() == null || !CapturingModePanelAttributes.class.isAssignableFrom(view.getTag().getClass())) {
            return;
        }
        CapturingModePanelAttributes capturingModePanelAttributes = (CapturingModePanelAttributes) view.getTag();
        Mode modeFindById = null;
        ModeSelectorInternalMode[] modeSelectorInternalModeArrValues = ModeSelectorInternalMode.values();
        int length = modeSelectorInternalModeArrValues.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            ModeSelectorInternalMode modeSelectorInternalMode = modeSelectorInternalModeArrValues[i];
            if (modeSelectorInternalMode.name().equals(capturingModePanelAttributes.getModeName())) {
                modeFindById = ModeSelector.access$000(this.this$0).findById(InternalMode.generateId(this.this$0.mContext, modeSelectorInternalMode));
                if (modeSelectorInternalMode != ModeSelectorInternalMode.DUAL_MONOCHROME) {
                    this.this$0.mSettingDialogStack.closeAllSettingDialogs();
                }
            } else {
                i++;
            }
        }
        if (modeFindById == null) {
            modeFindById = ModeSelector.access$000(this.this$0).findById(AddonMode.generateId(capturingModePanelAttributes.getPackageName(), capturingModePanelAttributes.getModeName()));
        }
        if (ModeSelector.access$100(this.this$0) != null) {
            ModeSelector.access$100(this.this$0).onModeSelected(modeFindById, false);
        }
    }
}
