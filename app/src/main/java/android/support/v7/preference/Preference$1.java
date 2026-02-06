package android.support.v7.preference;

import android.view.View;
import android.view.View$OnClickListener;

class Preference$1 implements View$OnClickListener {
    final /* synthetic */ Preference this$0;

    Preference$1(Preference preference) {
        this.this$0 = preference;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        this.this$0.performClick(view);
    }
}
