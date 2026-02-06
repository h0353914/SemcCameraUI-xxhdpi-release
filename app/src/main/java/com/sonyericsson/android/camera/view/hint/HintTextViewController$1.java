package com.sonyericsson.android.camera.view.hint;

import android.view.View;
import android.view.View$OnClickListener;

class HintTextViewController$1 implements View$OnClickListener {
    final /* synthetic */ HintTextViewController this$0;

    HintTextViewController$1(HintTextViewController hintTextViewController) {
        this.this$0 = hintTextViewController;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        HintTextContent hintTextContentAccess$000 = HintTextViewController.access$000(this.this$0);
        if (hintTextContentAccess$000 != null) {
            HintTextViewController.access$100(this.this$0).onContentButtonClick(this.this$0, hintTextContentAccess$000);
        }
    }
}
