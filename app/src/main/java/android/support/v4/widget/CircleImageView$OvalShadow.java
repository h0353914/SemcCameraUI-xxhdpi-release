package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader$TileMode;
import android.graphics.drawable.shapes.OvalShape;

/* JADX INFO: loaded from: classes.dex */
class CircleImageView$OvalShadow extends OvalShape {
    private RadialGradient mRadialGradient;
    private Paint mShadowPaint = new Paint();
    final /* synthetic */ CircleImageView this$0;

    CircleImageView$OvalShadow(CircleImageView circleImageView, int i) {
        this.this$0 = circleImageView;
        circleImageView.mShadowRadius = i;
        updateRadialGradient((int) rect().width());
    }

    @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
    protected void onResize(float f, float f2) {
        super.onResize(f, f2);
        updateRadialGradient((int) f);
    }

    @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
    public void draw(Canvas canvas, Paint paint) {
        float width = this.this$0.getWidth() / 2;
        float height = this.this$0.getHeight() / 2;
        canvas.drawCircle(width, height, width, this.mShadowPaint);
        canvas.drawCircle(width, height, r0 - this.this$0.mShadowRadius, paint);
    }

    private void updateRadialGradient(int i) {
        float f = i / 2;
        this.mRadialGradient = new RadialGradient(f, f, this.this$0.mShadowRadius, new int[]{1023410176, 0}, (float[]) null, Shader$TileMode.CLAMP);
        this.mShadowPaint.setShader(this.mRadialGradient);
    }
}
