package com.sonyericsson.android.camera.view.baselayout.settingshortcut;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.sonyericsson.android.camera.view.modeselector.InternalMode;
import com.sonyericsson.android.camera.view.modeselector.Mode;
import com.sonyericsson.android.camera.view.modeselector.Mode$OnStateChangeListener;
import com.sonyericsson.android.camera.view.modeselector.ModeLoader;
import com.sonyericsson.android.camera.view.modeselector.ModeLoader$OnModeListChangeListener;
import com.sonyericsson.android.camera.view.selectabledialog.ModeSelector$OnModeSelectListener;

public class MruButtonContainer extends FrameLayout {
    private boolean mIsAvailable;
    private Mode$OnStateChangeListener mModeChangeListener;
    private ModeLoader$OnModeListChangeListener mModeListChangeListener;
    private ModeLoader mModeLoader;
    private ModeSelector$OnModeSelectListener mModeSelectListener;
    private MruButtonContainer$MruButton mMruButton;
    private boolean mRequestVisible;

    static /* synthetic */ MruButtonContainer$MruButton access$000(MruButtonContainer mruButtonContainer) {
        return mruButtonContainer.mMruButton;
    }

    static /* synthetic */ Mode$OnStateChangeListener access$100(MruButtonContainer mruButtonContainer) {
        return mruButtonContainer.mModeChangeListener;
    }

    static /* synthetic */ ModeSelector$OnModeSelectListener access$300(MruButtonContainer mruButtonContainer) {
        return mruButtonContainer.mModeSelectListener;
    }

    static /* synthetic */ ModeLoader access$400(MruButtonContainer mruButtonContainer) {
        return mruButtonContainer.mModeLoader;
    }

    public MruButtonContainer(@NonNull Context context) {
        super(context);
        this.mModeChangeListener = new MruButtonContainer$1(this);
        this.mModeListChangeListener = new MruButtonContainer$2(this);
        init();
    }

    public MruButtonContainer(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mModeChangeListener = new MruButtonContainer$1(this);
        this.mModeListChangeListener = new MruButtonContainer$2(this);
        init();
    }

    public MruButtonContainer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mModeChangeListener = new MruButtonContainer$1(this);
        this.mModeListChangeListener = new MruButtonContainer$2(this);
        init();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mMruButton = new MruButtonContainer$MruSmallModeButton(this, null);
    }

    private void init() {
        this.mIsAvailable = false;
        this.mRequestVisible = false;
        update();
    }

    public void setup(ModeLoader modeLoader) {
        this.mModeLoader = modeLoader;
        this.mModeLoader.addModeChangeListener(this.mModeListChangeListener);
    }

    public void show() {
        this.mRequestVisible = true;
        update();
    }

    public void hide() {
        this.mRequestVisible = false;
        update();
    }

    public void setAvailability(boolean z) {
        this.mIsAvailable = z;
        update();
    }

    public void update() {
        if (this.mIsAvailable && this.mRequestVisible) {
            if (this.mMruButton != null) {
                this.mMruButton.setClickable(true);
            }
            setVisibility(0);
        } else {
            if (this.mMruButton != null) {
                this.mMruButton.setClickable(false);
            }
            setVisibility(8);
        }
    }

    public void setOnModeSelectListener(ModeSelector$OnModeSelectListener modeSelector$OnModeSelectListener) {
        this.mModeSelectListener = modeSelector$OnModeSelectListener;
    }

    public void setMode(Mode mode) {
        this.mMruButton.setMode(mode);
    }

    public boolean hasInternalMode() {
        if (this.mMruButton.getMode() == null) {
            return false;
        }
        return InternalMode.class.isAssignableFrom(this.mMruButton.getMode().getClass());
    }
}
