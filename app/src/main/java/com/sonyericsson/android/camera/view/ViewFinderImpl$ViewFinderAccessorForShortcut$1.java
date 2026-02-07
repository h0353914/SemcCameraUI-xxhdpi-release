package com.sonyericsson.android.camera.view;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$ViewFinderAccessorForShortcut$1 implements Runnable {
    final /* synthetic */ ViewFinderImpl$ViewFinderAccessorForShortcut this$1;

    ViewFinderImpl$ViewFinderAccessorForShortcut$1(ViewFinderImpl$ViewFinderAccessorForShortcut viewFinderImpl$ViewFinderAccessorForShortcut) {
        this.this$1 = viewFinderImpl$ViewFinderAccessorForShortcut;
    }

    @Override // java.lang.Runnable
    public void run() {
        ViewFinderImpl.access$10000(this.this$1.this$0);
        ViewFinderImpl.access$9900(this.this$1.this$0, ViewFinderImpl.access$5700(this.this$1.this$0));
    }
}
