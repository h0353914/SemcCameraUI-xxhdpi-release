package com.sonyericsson.android.camera.view.baselayout.settingshortcut;

import com.sonyericsson.android.camera.setting.SharedPreferencesAccessor;
import com.sonyericsson.android.camera.view.modeselector.Mode;
import com.sonyericsson.android.camera.view.modeselector.internalmode.googlelens.GoogleLensMode;

/* JADX INFO: loaded from: classes.dex */
class MruButtonContainer$MruSmallModeButton extends MruButtonContainer$MruButton {
    private SharedPreferencesAccessor mPreferenceAccessor;
    final /* synthetic */ MruButtonContainer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private MruButtonContainer$MruSmallModeButton(MruButtonContainer mruButtonContainer) {
        super(mruButtonContainer);
        this.this$0 = mruButtonContainer;
    }

    /* synthetic */ MruButtonContainer$MruSmallModeButton(MruButtonContainer mruButtonContainer, MruButtonContainer$1 mruButtonContainer$1) {
        this(mruButtonContainer);
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.settingshortcut.MruButtonContainer$MruButton
    void setMode(Mode mode) {
        if (this.mPreferenceAccessor == null) {
            this.mPreferenceAccessor = new SharedPreferencesAccessor(this.this$0.getContext(), "mode-shortcut");
        }
        if (mode == null) {
            String string = this.mPreferenceAccessor.readString("MODE_SHORTCUT_ID", null);
            if (string == null) {
                string = GoogleLensMode.generateId(this.this$0.getContext().getPackageName(), "GOOGLE_LENS");
            }
            mode = MruButtonContainer.access$400(this.this$0).findById(string);
        }
        super.setMode(mode);
        if (mode != null) {
            this.mPreferenceAccessor.writeString("MODE_SHORTCUT_ID", mode.getId(), false);
            this.mPreferenceAccessor.apply();
        }
    }
}
