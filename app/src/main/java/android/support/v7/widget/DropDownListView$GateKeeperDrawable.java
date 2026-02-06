package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v7.graphics.drawable.DrawableWrapper;

class DropDownListView$GateKeeperDrawable extends DrawableWrapper {
    private boolean mEnabled;

    DropDownListView$GateKeeperDrawable(Drawable drawable) {
        super(drawable);
        this.mEnabled = true;
    }

    void setEnabled(boolean z) {
        this.mEnabled = z;
    }

    @Override // android.support.v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        if (this.mEnabled) {
            return super.setState(iArr);
        }
        return false;
    }

    @Override // android.support.v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mEnabled) {
            super.draw(canvas);
        }
    }

    @Override // android.support.v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        if (this.mEnabled) {
            super.setHotspot(f, f2);
        }
    }

    @Override // android.support.v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        if (this.mEnabled) {
            super.setHotspotBounds(i, i2, i3, i4);
        }
    }

    @Override // android.support.v7.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        if (this.mEnabled) {
            return super.setVisible(z, z2);
        }
        return false;
    }
}
