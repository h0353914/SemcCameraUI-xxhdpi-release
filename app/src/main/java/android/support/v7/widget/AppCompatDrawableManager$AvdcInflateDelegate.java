package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources$Theme;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.graphics.drawable.AnimatedVectorDrawableCompat;
import android.util.AttributeSet;
import android.util.Log;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDrawableManager$AvdcInflateDelegate implements AppCompatDrawableManager$InflateDelegate {
    AppCompatDrawableManager$AvdcInflateDelegate() {
    }

    @Override // android.support.v7.widget.AppCompatDrawableManager$InflateDelegate
    public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources$Theme resources$Theme) {
        try {
            return AnimatedVectorDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, resources$Theme);
        } catch (Exception e) {
            Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
            return null;
        }
    }
}
