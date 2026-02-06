package com.sonyericsson.android.camera.view.tutorial;

import android.view.View;

protected final class PagingTutorialContentView$PagingTutorialController {
    final /* synthetic */ PagingTutorialContentView this$0;

    protected PagingTutorialContentView$PagingTutorialController(PagingTutorialContentView pagingTutorialContentView) {
        this.this$0 = pagingTutorialContentView;
    }

    public void closeTutorial(View view) {
        this.this$0.notifyOnDoneClicked(view);
    }

    public void movePageToBack() {
        PagingTutorialContentView.access$1100(this.this$0).setCurrentItem(PagingTutorialContentView.access$000(this.this$0).mPageIndex - 1);
    }

    public void movePageToNext() {
        PagingTutorialContentView.access$1100(this.this$0).setCurrentItem(PagingTutorialContentView.access$000(this.this$0).mPageIndex + 1);
    }
}
