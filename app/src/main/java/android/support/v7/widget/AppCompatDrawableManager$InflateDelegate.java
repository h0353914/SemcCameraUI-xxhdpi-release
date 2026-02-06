package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources$Theme;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

interface AppCompatDrawableManager$InflateDelegate {
    Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources$Theme resources$Theme);
}
