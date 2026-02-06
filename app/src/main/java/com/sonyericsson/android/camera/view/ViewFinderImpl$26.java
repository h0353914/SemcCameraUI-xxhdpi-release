package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.view.tutorial.TutorialController$SystemUiAccessor;

class ViewFinderImpl$26 implements TutorialController$SystemUiAccessor {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$26(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialController$SystemUiAccessor
    public void onAddFlags(int i) {
        ViewFinderImpl.access$500(this.this$0).getWindow().addFlags(i);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialController$SystemUiAccessor
    public void onClearFlags(int i) {
        ViewFinderImpl.access$500(this.this$0).getWindow().clearFlags(i);
    }
}
