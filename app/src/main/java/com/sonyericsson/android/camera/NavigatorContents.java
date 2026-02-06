package com.sonyericsson.android.camera;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;

public enum NavigatorContents {
    SUPERIOR_AUTO(2131230936, 2131230937, 2131689668),
    VIDEO(2131230938, 2131230939, 2131689631);

    private final int mIconId;
    private final int mLargeIconId;
    private final int mTextId;

    NavigatorContents(int i, int i2, int i3) {
        this.mIconId = i;
        this.mLargeIconId = i2;
        this.mTextId = i3;
    }

    public int getIconId() {
        return this.mIconId;
    }

    public int getLargeIconId() {
        return this.mLargeIconId;
    }

    public int getTextId() {
        return this.mTextId;
    }

    public String getText(Context context) {
        return context.getResources().getString(this.mTextId).toUpperCase();
    }

    public boolean hasPrevious() {
        return indexOf(this) > 0;
    }

    public boolean hasNext() {
        return indexOf(this) < values().length - 1;
    }

    public NavigatorContents next() {
        return next(1);
    }

    public NavigatorContents previous() {
        return previous(1);
    }

    public NavigatorContents next(int i) {
        int iIndexOf = indexOf(this) + i;
        if (iIndexOf < values().length) {
            return values()[iIndexOf];
        }
        return values()[values().length - 1];
    }

    public NavigatorContents previous(int i) {
        int iIndexOf = indexOf(this) - i;
        if (iIndexOf >= 0) {
            return values()[iIndexOf];
        }
        return values()[0];
    }

    public static int indexOf(NavigatorContents navigatorContents) {
        for (int i = 0; i < values().length; i++) {
            if (navigatorContents.equals(values()[i])) {
                return i;
            }
        }
        throw new IllegalArgumentException(navigatorContents.name() + " is not NavigatorContents.");
    }

    public static NavigatorContents valueOf(CapturingMode capturingMode) {
        switch (capturingMode) {
        }
        return SUPERIOR_AUTO;
    }
}
