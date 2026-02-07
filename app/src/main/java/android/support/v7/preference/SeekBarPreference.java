package android.support.v7.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View$OnKeyListener;
import android.widget.SeekBar;
import android.widget.SeekBar$OnSeekBarChangeListener;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class SeekBarPreference extends Preference {
    private static final String TAG = "SeekBarPreference";
    boolean mAdjustable;
    private int mMax;
    int mMin;
    SeekBar mSeekBar;
    private SeekBar$OnSeekBarChangeListener mSeekBarChangeListener;
    private int mSeekBarIncrement;
    private View$OnKeyListener mSeekBarKeyListener;
    int mSeekBarValue;
    private TextView mSeekBarValueTextView;
    private boolean mShowSeekBarValue;
    boolean mTrackingTouch;

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mSeekBarChangeListener = new SeekBarPreference$1(this);
        this.mSeekBarKeyListener = new SeekBarPreference$2(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SeekBarPreference, i, i2);
        this.mMin = typedArrayObtainStyledAttributes.getInt(R$styleable.SeekBarPreference_min, 0);
        setMax(typedArrayObtainStyledAttributes.getInt(R$styleable.SeekBarPreference_android_max, 100));
        setSeekBarIncrement(typedArrayObtainStyledAttributes.getInt(R$styleable.SeekBarPreference_seekBarIncrement, 0));
        this.mAdjustable = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SeekBarPreference_adjustable, true);
        this.mShowSeekBarValue = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SeekBarPreference_showSeekBarValue, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.seekBarPreferenceStyle);
    }

    public SeekBarPreference(Context context) {
        this(context, null);
    }

    @Override // android.support.v7.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        preferenceViewHolder.itemView.setOnKeyListener(this.mSeekBarKeyListener);
        this.mSeekBar = (SeekBar) preferenceViewHolder.findViewById(R$id.seekbar);
        this.mSeekBarValueTextView = (TextView) preferenceViewHolder.findViewById(R$id.seekbar_value);
        if (this.mShowSeekBarValue) {
            this.mSeekBarValueTextView.setVisibility(0);
        } else {
            this.mSeekBarValueTextView.setVisibility(8);
            this.mSeekBarValueTextView = null;
        }
        if (this.mSeekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
            return;
        }
        this.mSeekBar.setOnSeekBarChangeListener(this.mSeekBarChangeListener);
        this.mSeekBar.setMax(this.mMax - this.mMin);
        if (this.mSeekBarIncrement != 0) {
            this.mSeekBar.setKeyProgressIncrement(this.mSeekBarIncrement);
        } else {
            this.mSeekBarIncrement = this.mSeekBar.getKeyProgressIncrement();
        }
        this.mSeekBar.setProgress(this.mSeekBarValue - this.mMin);
        if (this.mSeekBarValueTextView != null) {
            this.mSeekBarValueTextView.setText(String.valueOf(this.mSeekBarValue));
        }
        this.mSeekBar.setEnabled(isEnabled());
    }

    @Override // android.support.v7.preference.Preference
    protected void onSetInitialValue(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        setValue(getPersistedInt(((Integer) obj).intValue()));
    }

    @Override // android.support.v7.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    public void setMin(int i) {
        if (i > this.mMax) {
            i = this.mMax;
        }
        if (i != this.mMin) {
            this.mMin = i;
            notifyChanged();
        }
    }

    public int getMin() {
        return this.mMin;
    }

    public final void setMax(int i) {
        if (i < this.mMin) {
            i = this.mMin;
        }
        if (i != this.mMax) {
            this.mMax = i;
            notifyChanged();
        }
    }

    public final int getSeekBarIncrement() {
        return this.mSeekBarIncrement;
    }

    public final void setSeekBarIncrement(int i) {
        if (i != this.mSeekBarIncrement) {
            this.mSeekBarIncrement = Math.min(this.mMax - this.mMin, Math.abs(i));
            notifyChanged();
        }
    }

    public int getMax() {
        return this.mMax;
    }

    public void setAdjustable(boolean z) {
        this.mAdjustable = z;
    }

    public boolean isAdjustable() {
        return this.mAdjustable;
    }

    public void setValue(int i) {
        setValueInternal(i, true);
    }

    private void setValueInternal(int i, boolean z) {
        if (i < this.mMin) {
            i = this.mMin;
        }
        if (i > this.mMax) {
            i = this.mMax;
        }
        if (i != this.mSeekBarValue) {
            this.mSeekBarValue = i;
            if (this.mSeekBarValueTextView != null) {
                this.mSeekBarValueTextView.setText(String.valueOf(this.mSeekBarValue));
            }
            persistInt(i);
            if (z) {
                notifyChanged();
            }
        }
    }

    public int getValue() {
        return this.mSeekBarValue;
    }

    void syncValueInternal(SeekBar seekBar) {
        int progress = this.mMin + seekBar.getProgress();
        if (progress != this.mSeekBarValue) {
            if (callChangeListener(Integer.valueOf(progress))) {
                setValueInternal(progress, false);
            } else {
                seekBar.setProgress(this.mSeekBarValue - this.mMin);
            }
        }
    }

    @Override // android.support.v7.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SeekBarPreference$SavedState seekBarPreference$SavedState = new SeekBarPreference$SavedState(parcelableOnSaveInstanceState);
        seekBarPreference$SavedState.seekBarValue = this.mSeekBarValue;
        seekBarPreference$SavedState.min = this.mMin;
        seekBarPreference$SavedState.max = this.mMax;
        return seekBarPreference$SavedState;
    }

    @Override // android.support.v7.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SeekBarPreference$SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SeekBarPreference$SavedState seekBarPreference$SavedState = (SeekBarPreference$SavedState) parcelable;
        super.onRestoreInstanceState(seekBarPreference$SavedState.getSuperState());
        this.mSeekBarValue = seekBarPreference$SavedState.seekBarValue;
        this.mMin = seekBarPreference$SavedState.min;
        this.mMax = seekBarPreference$SavedState.max;
        notifyChanged();
    }
}
