package android.support.v7.widget;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class Toolbar$3 implements View$OnClickListener {
    final /* synthetic */ Toolbar this$0;

    Toolbar$3(Toolbar toolbar) {
        this.this$0 = toolbar;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        this.this$0.collapseActionView();
    }
}
