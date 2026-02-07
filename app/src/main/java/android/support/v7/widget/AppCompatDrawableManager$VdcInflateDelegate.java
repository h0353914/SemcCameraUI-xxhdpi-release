package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources$Theme;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.graphics.drawable.VectorDrawableCompat;
import android.util.AttributeSet;
import android.util.Log;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDrawableManager$VdcInflateDelegate implements AppCompatDrawableManager$InflateDelegate {
    AppCompatDrawableManager$VdcInflateDelegate() {
    }

    @Override // android.support.v7.widget.AppCompatDrawableManager$InflateDelegate
    public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources$Theme resources$Theme) {
        try {
            return VectorDrawableCompat.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, resources$Theme);
        } catch (Exception e) {
            Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
            return null;
        }
    }
}
