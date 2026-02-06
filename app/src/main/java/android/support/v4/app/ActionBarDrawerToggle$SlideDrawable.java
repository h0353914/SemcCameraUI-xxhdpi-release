package android.support.v4.app;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$Callback;
import android.graphics.drawable.InsetDrawable;
import android.os.Build$VERSION;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;

class ActionBarDrawerToggle$SlideDrawable extends InsetDrawable implements Drawable$Callback {
    private final boolean mHasMirroring;
    private float mOffset;
    private float mPosition;
    private final Rect mTmpRect;
    final /* synthetic */ ActionBarDrawerToggle this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ActionBarDrawerToggle$SlideDrawable(ActionBarDrawerToggle actionBarDrawerToggle, Drawable drawable) {
        super(drawable, 0);
        this.this$0 = actionBarDrawerToggle;
        this.mHasMirroring = Build$VERSION.SDK_INT > 18;
        this.mTmpRect = new Rect();
    }

    public void setPosition(float f) {
        this.mPosition = f;
        invalidateSelf();
    }

    public float getPosition() {
        return this.mPosition;
    }

    public void setOffset(float f) {
        this.mOffset = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        copyBounds(this.mTmpRect);
        canvas.save();
        boolean z = ViewCompat.getLayoutDirection(this.this$0.mActivity.getWindow().getDecorView()) == 1;
        int i = z ? -1 : 1;
        float fWidth = this.mTmpRect.width();
        canvas.translate((-this.mOffset) * fWidth * this.mPosition * i, 0.0f);
        if (z && !this.mHasMirroring) {
            canvas.translate(fWidth, 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        super.draw(canvas);
        canvas.restore();
    }
}
