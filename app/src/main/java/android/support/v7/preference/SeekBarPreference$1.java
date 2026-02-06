package android.support.v7.preference;

import android.widget.SeekBar;
import android.widget.SeekBar$OnSeekBarChangeListener;

class SeekBarPreference$1 implements SeekBar$OnSeekBarChangeListener {
    final /* synthetic */ SeekBarPreference this$0;

    SeekBarPreference$1(SeekBarPreference seekBarPreference) {
        this.this$0 = seekBarPreference;
    }

    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (!z || this.this$0.mTrackingTouch) {
            return;
        }
        this.this$0.syncValueInternal(seekBar);
    }

    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.this$0.mTrackingTouch = true;
    }

    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.this$0.mTrackingTouch = false;
        if (seekBar.getProgress() + this.this$0.mMin != this.this$0.mSeekBarValue) {
            this.this$0.syncValueInternal(seekBar);
        }
    }
}
