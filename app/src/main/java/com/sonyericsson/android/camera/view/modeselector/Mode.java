package com.sonyericsson.android.camera.view.modeselector;

import android.content.Context;
import android.support.annotation.NonNull;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public abstract class Mode {
    public static final int INVALID_ID = 0;
    protected final Context mContext;
    protected String mId;
    protected Mode$OnStateChangeListener mStateChangeListener;

    protected abstract String generateSmallIconMappingName();

    protected abstract String getModeName();

    public abstract int getSelectorIconResId();

    public boolean isAvailable() {
        return true;
    }

    protected Mode(@NonNull Context context, @NonNull String str) {
        this.mContext = context;
        this.mId = str;
    }

    public String getId() {
        return this.mId;
    }

    public void setOnStateChangeListener(Mode$OnStateChangeListener mode$OnStateChangeListener) {
        this.mStateChangeListener = mode$OnStateChangeListener;
    }

    public void loadSmallIcon(@NonNull ImageView imageView) {
        String strGenerateSmallIconMappingName = generateSmallIconMappingName();
        int identifier = this.mContext.getResources().getIdentifier(strGenerateSmallIconMappingName, "drawable", this.mContext.getPackageName());
        if (identifier != 0) {
            imageView.setPadding(0, 0, 0, 0);
            imageView.setImageResource(identifier);
        } else {
            int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(2131165452);
            imageView.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
            int selectorIconResId = getSelectorIconResId();
            int dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(2131165451);
            imageView.setImageBitmap(ResourceUtil.getBitmap(this.mContext, strGenerateSmallIconMappingName, selectorIconResId, dimensionPixelSize2, dimensionPixelSize2));
        }
        String modeName = getModeName();
        if (modeName != null) {
            imageView.setContentDescription(modeName);
        }
    }

    public boolean compare(Mode mode) {
        if (mode == null) {
            return false;
        }
        return mode.getId().equals(getId());
    }
}
