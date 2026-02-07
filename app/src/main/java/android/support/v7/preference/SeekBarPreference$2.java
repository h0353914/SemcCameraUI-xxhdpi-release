package android.support.v7.preference;

import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnKeyListener;

/* JADX INFO: loaded from: classes.dex */
class SeekBarPreference$2 implements View$OnKeyListener {
    final /* synthetic */ SeekBarPreference this$0;

    SeekBarPreference$2(SeekBarPreference seekBarPreference) {
        this.this$0 = seekBarPreference;
    }

    @Override // android.view.View$OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        if ((!this.this$0.mAdjustable && (i == 21 || i == 22)) || i == 23 || i == 66) {
            return false;
        }
        if (this.this$0.mSeekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null and hence cannot be adjusted.");
            return false;
        }
        return this.this$0.mSeekBar.onKeyDown(i, keyEvent);
    }
}
