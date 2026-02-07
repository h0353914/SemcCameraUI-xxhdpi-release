package com.sonyericsson.android.camera.view.selectabledialog;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout$LayoutParams;
import com.sonyericsson.android.camera.view.modeselector.view.AbsAppsUiSelectorAdapter;
import com.sonyericsson.android.camera.view.modeselector.view.AbsPanelView;
import com.sonyericsson.android.camera.view.modeselector.view.CapturingModePanelView;

/* JADX INFO: loaded from: classes.dex */
class ModeSelector$CapturingModeSelectorAdapter extends AbsAppsUiSelectorAdapter {
    final /* synthetic */ ModeSelector this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModeSelector$CapturingModeSelectorAdapter(ModeSelector modeSelector, Context context) {
        super(context, -1, null);
        this.this$0 = modeSelector;
    }

    @Override // com.sonyericsson.android.camera.view.modeselector.view.AbsAppsUiSelectorAdapter
    public View onCreateItemView(int i, ViewGroup viewGroup) {
        return getLayoutInflater().inflate(2131492940, (ViewGroup) null);
    }

    @Override // com.sonyericsson.android.camera.view.modeselector.view.AbsAppsUiSelectorAdapter
    public View onPrepareItemView(int i, AbsPanelView absPanelView, ViewGroup viewGroup) {
        CapturingModePanelView capturingModePanelView = (CapturingModePanelView) absPanelView;
        if (capturingModePanelView.getLayoutParams() == null) {
            capturingModePanelView.setLayoutParams(new LinearLayout$LayoutParams(this.this$0.mParams.itemWidth, this.this$0.mParams.itemHeight));
        }
        return super.onPrepareItemView(i, absPanelView, viewGroup);
    }
}
