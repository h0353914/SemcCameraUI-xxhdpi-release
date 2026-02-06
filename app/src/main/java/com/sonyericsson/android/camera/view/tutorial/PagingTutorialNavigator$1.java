package com.sonyericsson.android.camera.view.tutorial;

import android.view.View;
import android.view.View$OnClickListener;

class PagingTutorialNavigator$1 implements View$OnClickListener {
    final /* synthetic */ PagingTutorialNavigator this$0;

    PagingTutorialNavigator$1(PagingTutorialNavigator pagingTutorialNavigator) {
        this.this$0 = pagingTutorialNavigator;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (PagingTutorialNavigator.access$000(this.this$0) == null) {
        }
        switch (view.getId()) {
            case 2131296487:
            case 2131296491:
            case 2131296676:
            case 2131296684:
                PagingTutorialNavigator.access$000(this.this$0).closeTutorial(view);
                break;
            case 2131296488:
                PagingTutorialNavigator.access$000(this.this$0).movePageToNext();
                break;
            case 2131296490:
                PagingTutorialNavigator.access$000(this.this$0).movePageToBack();
                break;
        }
    }
}
