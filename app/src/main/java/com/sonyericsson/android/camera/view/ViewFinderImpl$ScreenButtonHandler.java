package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonGroup$Item;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory$ButtonType;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$ScreenButtonHandler {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$ScreenButtonHandler(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$ScreenButtonHandler(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    static /* synthetic */ void access$4600(ViewFinderImpl$ScreenButtonHandler viewFinderImpl$ScreenButtonHandler) {
        viewFinderImpl$ScreenButtonHandler.refreshButton();
    }

    static /* synthetic */ void access$5300(ViewFinderImpl$ScreenButtonHandler viewFinderImpl$ScreenButtonHandler) {
        viewFinderImpl$ScreenButtonHandler.clearMain();
    }

    static /* synthetic */ void access$5400(ViewFinderImpl$ScreenButtonHandler viewFinderImpl$ScreenButtonHandler, int i, boolean z) {
        viewFinderImpl$ScreenButtonHandler.setMainRotatability(i, z);
    }

    static /* synthetic */ void access$5500(ViewFinderImpl$ScreenButtonHandler viewFinderImpl$ScreenButtonHandler) {
        viewFinderImpl$ScreenButtonHandler.clearOption1();
    }

    static /* synthetic */ void access$5600(ViewFinderImpl$ScreenButtonHandler viewFinderImpl$ScreenButtonHandler) {
        viewFinderImpl$ScreenButtonHandler.clearOption2();
    }

    static /* synthetic */ void access$7300(ViewFinderImpl$ScreenButtonHandler viewFinderImpl$ScreenButtonHandler) {
        viewFinderImpl$ScreenButtonHandler.clearAllButton();
    }

    protected void setMain(OnScreenButtonItemFactory$ButtonType onScreenButtonItemFactory$ButtonType, int i, boolean z) {
        setMain(onScreenButtonItemFactory$ButtonType, i, z, true);
    }

    protected void setMain(OnScreenButtonItemFactory$ButtonType onScreenButtonItemFactory$ButtonType, int i, boolean z, boolean z2) {
        ViewFinderImpl.access$700(this.this$0).getOnScreenButtonGroup().setMain(OnScreenButtonItemFactory.createButton(onScreenButtonItemFactory$ButtonType, z2 ? new ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl(this, onScreenButtonItemFactory$ButtonType) : null), i, z);
    }

    protected void setOption1(OnScreenButtonItemFactory$ButtonType onScreenButtonItemFactory$ButtonType, int i, boolean z) {
        ViewFinderImpl.access$700(this.this$0).getOnScreenButtonGroup().setOption1(OnScreenButtonItemFactory.createButton(onScreenButtonItemFactory$ButtonType, new ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl(this, onScreenButtonItemFactory$ButtonType)), i, z);
    }

    protected void setOption1(OnScreenButtonGroup$Item onScreenButtonGroup$Item, int i, boolean z) {
        ViewFinderImpl.access$700(this.this$0).getOnScreenButtonGroup().setOption1(onScreenButtonGroup$Item, i, z);
    }

    public void setOption2(OnScreenButtonItemFactory$ButtonType onScreenButtonItemFactory$ButtonType, int i, boolean z) {
        ViewFinderImpl.access$700(this.this$0).getOnScreenButtonGroup().setOption2(OnScreenButtonItemFactory.createButton(onScreenButtonItemFactory$ButtonType, new ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl(this, onScreenButtonItemFactory$ButtonType)), i, z);
    }

    public void setOption2(OnScreenButtonGroup$Item onScreenButtonGroup$Item, int i, boolean z) {
        ViewFinderImpl.access$700(this.this$0).getOnScreenButtonGroup().setOption2(onScreenButtonGroup$Item, i, z);
    }

    private void clearMain() {
        ViewFinderImpl.access$700(this.this$0).getOnScreenButtonGroup().clearMain();
    }

    private void clearOption1() {
        ViewFinderImpl.access$700(this.this$0).getOnScreenButtonGroup().clearOption1();
    }

    private void clearOption2() {
        ViewFinderImpl.access$700(this.this$0).getOnScreenButtonGroup().clearOption2();
    }

    private void clearAllButton() {
        clearOption1();
        clearOption2();
        clearMain();
    }

    private void refreshButton() {
        clearOption1();
        clearOption2();
        ViewFinderImpl.access$700(this.this$0).getOnScreenButtonGroup().show();
    }

    private void setMainRotatability(int i, boolean z) {
        ViewFinderImpl.access$700(this.this$0).getOnScreenButtonGroup().setMainRotatability(i, z);
    }
}
