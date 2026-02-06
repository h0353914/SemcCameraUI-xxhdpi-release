package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources$Theme;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v7.graphics.drawable.AnimatedStateListDrawableCompat;
import android.util.AttributeSet;
import android.util.Log;
import org.xmlpull.v1.XmlPullParser;

@RequiresApi(11)
class AppCompatDrawableManager$AsldcInflateDelegate implements AppCompatDrawableManager$InflateDelegate {
    AppCompatDrawableManager$AsldcInflateDelegate() {
    }

    @Override // android.support.v7.widget.AppCompatDrawableManager$InflateDelegate
    public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources$Theme resources$Theme) {
        try {
            return AnimatedStateListDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, resources$Theme);
        } catch (Exception e) {
            Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
            return null;
        }
    }
}
