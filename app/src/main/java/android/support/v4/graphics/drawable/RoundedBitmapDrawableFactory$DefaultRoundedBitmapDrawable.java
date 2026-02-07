package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.support.v4.graphics.BitmapCompat;
import android.support.v4.view.GravityCompat;

/* JADX INFO: loaded from: classes.dex */
class RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable extends RoundedBitmapDrawable {
    RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable(Resources resources, Bitmap bitmap) {
        super(resources, bitmap);
    }

    @Override // android.support.v4.graphics.drawable.RoundedBitmapDrawable
    public void setMipMap(boolean z) {
        if (this.mBitmap != null) {
            BitmapCompat.setHasMipMap(this.mBitmap, z);
            invalidateSelf();
        }
    }

    @Override // android.support.v4.graphics.drawable.RoundedBitmapDrawable
    public boolean hasMipMap() {
        return this.mBitmap != null && BitmapCompat.hasMipMap(this.mBitmap);
    }

    @Override // android.support.v4.graphics.drawable.RoundedBitmapDrawable
    void gravityCompatApply(int i, int i2, int i3, Rect rect, Rect rect2) {
        GravityCompat.apply(i, i2, i3, rect, rect2, 0);
    }
}
