package com.sonyericsson.android.camera.view.baselayout.settingshortcut;

import com.sonyericsson.android.camera.view.modeselector.CapturingModeAttributes;
import com.sonyericsson.android.camera.view.modeselector.Mode;
import com.sonyericsson.android.camera.view.modeselector.ModeLoader$OnModeListChangeListener;
import java.util.Iterator;
import java.util.List;

class MruButtonContainer$2 implements ModeLoader$OnModeListChangeListener {
    final /* synthetic */ MruButtonContainer this$0;

    MruButtonContainer$2(MruButtonContainer mruButtonContainer) {
        this.this$0 = mruButtonContainer;
    }

    @Override // com.sonyericsson.android.camera.view.modeselector.ModeLoader$OnModeListChangeListener
    public void onModeListChanged(List<Mode> list, List<CapturingModeAttributes> list2) {
        Iterator<Mode> it = list.iterator();
        while (it.hasNext()) {
            it.next().setOnStateChangeListener(MruButtonContainer.access$100(this.this$0));
        }
        MruButtonContainer.access$000(this.this$0).setMode(null);
    }
}
