package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.Path;
import android.net.Uri;
import android.widget.ImageView;

/* loaded from: /home/h/tmp/SemcCameraUI-xxhdpi-release/SemcCameraUI-xxhdpi-release/build/apk/classes.dex */
public final class zzlu extends ImageView {
    public zzlu(android.content.Context context) {
        super(context);
    }
    private int zzaeA;
    private zza zzaeB;
    private int zzaeC;
    private float zzaeD;
    private Uri zzaey;
    private int zzaez;

    public interface zza {
        Path zzk(int i, int i2);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.zzaeB != null) {
            canvas.clipPath(this.zzaeB.zzk(getWidth(), getHeight()));
        }
        super.onDraw(canvas);
        if (this.zzaeA != 0) {
            canvas.drawColor(this.zzaeA);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        int measuredWidth;
        super.onMeasure(i, i2);
        switch (this.zzaeC) {
            case 1:
                measuredHeight = getMeasuredHeight();
                measuredWidth = (int) (measuredHeight * this.zzaeD);
                break;
            case 2:
                measuredWidth = getMeasuredWidth();
                measuredHeight = (int) (measuredWidth / this.zzaeD);
                break;
            default:
                return;
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
    }

    public void zzbA(int i) {
        this.zzaez = i;
    }

    public void zzj(Uri uri) {
        this.zzaey = uri;
    }

    public int zzoH() {
        return this.zzaez;
    }
}
