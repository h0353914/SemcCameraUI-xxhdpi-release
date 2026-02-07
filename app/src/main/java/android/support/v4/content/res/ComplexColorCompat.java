package android.support.v4.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public final class ComplexColorCompat {
    private static final String LOG_TAG = "ComplexColorCompat";
    private int mColor;
    private final ColorStateList mColorStateList;
    private final Shader mShader;

    private ComplexColorCompat(Shader shader, ColorStateList colorStateList, @ColorInt int i) {
        this.mShader = shader;
        this.mColorStateList = colorStateList;
        this.mColor = i;
    }

    static ComplexColorCompat from(@NonNull Shader shader) {
        return new ComplexColorCompat(shader, null, 0);
    }

    static ComplexColorCompat from(@NonNull ColorStateList colorStateList) {
        return new ComplexColorCompat(null, colorStateList, colorStateList.getDefaultColor());
    }

    static ComplexColorCompat from(@ColorInt int i) {
        return new ComplexColorCompat(null, null, i);
    }

    @Nullable
    public Shader getShader() {
        return this.mShader;
    }

    @ColorInt
    public int getColor() {
        return this.mColor;
    }

    public void setColor(@ColorInt int i) {
        this.mColor = i;
    }

    public boolean isGradient() {
        return this.mShader != null;
    }

    public boolean isStateful() {
        return this.mShader == null && this.mColorStateList != null && this.mColorStateList.isStateful();
    }

    public boolean onStateChanged(int[] iArr) {
        int colorForState;
        if (!isStateful() || (colorForState = this.mColorStateList.getColorForState(iArr, this.mColorStateList.getDefaultColor())) == this.mColor) {
            return false;
        }
        this.mColor = colorForState;
        return true;
    }

    public boolean willDraw() {
        return isGradient() || this.mColor != 0;
    }

    @Nullable
    public static ComplexColorCompat inflate(@NonNull Resources resources, @ColorRes int i, @Nullable Resources$Theme resources$Theme) {
        try {
            return createFromXml(resources, i, resources$Theme);
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    @NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ComplexColorCompat createFromXml(@NonNull Resources resources, @ColorRes int i, @Nullable Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        int next;
        byte b;
        XmlResourceParser xml = resources.getXml(i);
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            b = 1;
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        int iHashCode = name.hashCode();
        if (iHashCode != 89650992) {
            b = (iHashCode == 1191572447 && name.equals("selector")) ? (byte) 0 : (byte) -1;
        } else if (!name.equals("gradient")) {
        }
        switch (b) {
            case 0:
                return from(ColorStateListInflaterCompat.createFromXmlInner(resources, xml, attributeSetAsAttributeSet, resources$Theme));
            case 1:
                return from(GradientColorInflaterCompat.createFromXmlInner(resources, xml, attributeSetAsAttributeSet, resources$Theme));
            default:
                throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
    }
}
