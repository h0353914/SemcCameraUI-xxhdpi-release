package android.support.v4.content.res;

import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.Shader$TileMode;
import android.graphics.SweepGradient;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.compat.R$styleable;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
final class GradientColorInflaterCompat {
    private static final int TILE_MODE_CLAMP = 0;
    private static final int TILE_MODE_MIRROR = 2;
    private static final int TILE_MODE_REPEAT = 1;

    private GradientColorInflaterCompat() {
    }

    static Shader createFromXml(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @Nullable Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return createFromXmlInner(resources, xmlPullParser, attributeSetAsAttributeSet, resources$Theme);
    }

    static Shader createFromXmlInner(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, R$styleable.GradientColor);
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "startX", R$styleable.GradientColor_android_startX, 0.0f);
        float namedFloat2 = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "startY", R$styleable.GradientColor_android_startY, 0.0f);
        float namedFloat3 = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "endX", R$styleable.GradientColor_android_endX, 0.0f);
        float namedFloat4 = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "endY", R$styleable.GradientColor_android_endY, 0.0f);
        float namedFloat5 = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "centerX", R$styleable.GradientColor_android_centerX, 0.0f);
        float namedFloat6 = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "centerY", R$styleable.GradientColor_android_centerY, 0.0f);
        int namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, "type", R$styleable.GradientColor_android_type, 0);
        int namedColor = TypedArrayUtils.getNamedColor(typedArrayObtainAttributes, xmlPullParser, "startColor", R$styleable.GradientColor_android_startColor, 0);
        boolean zHasAttribute = TypedArrayUtils.hasAttribute(xmlPullParser, "centerColor");
        int namedColor2 = TypedArrayUtils.getNamedColor(typedArrayObtainAttributes, xmlPullParser, "centerColor", R$styleable.GradientColor_android_centerColor, 0);
        int namedColor3 = TypedArrayUtils.getNamedColor(typedArrayObtainAttributes, xmlPullParser, "endColor", R$styleable.GradientColor_android_endColor, 0);
        int namedInt2 = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, "tileMode", R$styleable.GradientColor_android_tileMode, 0);
        float namedFloat7 = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "gradientRadius", R$styleable.GradientColor_android_gradientRadius, 0.0f);
        typedArrayObtainAttributes.recycle();
        GradientColorInflaterCompat$ColorStops gradientColorInflaterCompat$ColorStopsCheckColors = checkColors(inflateChildElements(resources, xmlPullParser, attributeSet, resources$Theme), namedColor, namedColor3, zHasAttribute, namedColor2);
        switch (namedInt) {
            case 1:
                if (namedFloat7 <= 0.0f) {
                    throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
                }
                return new RadialGradient(namedFloat5, namedFloat6, namedFloat7, gradientColorInflaterCompat$ColorStopsCheckColors.mColors, gradientColorInflaterCompat$ColorStopsCheckColors.mOffsets, parseTileMode(namedInt2));
            case 2:
                return new SweepGradient(namedFloat5, namedFloat6, gradientColorInflaterCompat$ColorStopsCheckColors.mColors, gradientColorInflaterCompat$ColorStopsCheckColors.mOffsets);
            default:
                return new LinearGradient(namedFloat, namedFloat2, namedFloat3, namedFloat4, gradientColorInflaterCompat$ColorStopsCheckColors.mColors, gradientColorInflaterCompat$ColorStopsCheckColors.mOffsets, parseTileMode(namedInt2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x008f, code lost:
    
        if (r4.size() <= 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0096, code lost:
    
        return new android.support.v4.content.res.GradientColorInflaterCompat$ColorStops(r4, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0097, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static GradientColorInflaterCompat$ColorStops inflateChildElements(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        int depth;
        int depth2 = xmlPullParser.getDepth() + 1;
        ArrayList arrayList = new ArrayList(20);
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, R$styleable.GradientColorItem);
                boolean zHasValue = typedArrayObtainAttributes.hasValue(R$styleable.GradientColorItem_android_color);
                boolean zHasValue2 = typedArrayObtainAttributes.hasValue(R$styleable.GradientColorItem_android_offset);
                if (!zHasValue || !zHasValue2) {
                    break;
                }
                int color = typedArrayObtainAttributes.getColor(R$styleable.GradientColorItem_android_color, 0);
                float f = typedArrayObtainAttributes.getFloat(R$styleable.GradientColorItem_android_offset, 0.0f);
                typedArrayObtainAttributes.recycle();
                arrayList2.add(Integer.valueOf(color));
                arrayList.add(Float.valueOf(f));
            }
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
    }

    private static GradientColorInflaterCompat$ColorStops checkColors(@Nullable GradientColorInflaterCompat$ColorStops gradientColorInflaterCompat$ColorStops, @ColorInt int i, @ColorInt int i2, boolean z, @ColorInt int i3) {
        if (gradientColorInflaterCompat$ColorStops != null) {
            return gradientColorInflaterCompat$ColorStops;
        }
        if (z) {
            return new GradientColorInflaterCompat$ColorStops(i, i3, i2);
        }
        return new GradientColorInflaterCompat$ColorStops(i, i2);
    }

    private static Shader$TileMode parseTileMode(int i) {
        switch (i) {
            case 1:
                return Shader$TileMode.REPEAT;
            case 2:
                return Shader$TileMode.MIRROR;
            default:
                return Shader$TileMode.CLAMP;
        }
    }
}
