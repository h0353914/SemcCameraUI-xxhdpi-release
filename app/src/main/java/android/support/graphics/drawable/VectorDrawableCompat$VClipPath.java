package android.support.graphics.drawable;

import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.graphics.PathParser;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
class VectorDrawableCompat$VClipPath extends VectorDrawableCompat$VPath {
    @Override // android.support.graphics.drawable.VectorDrawableCompat$VPath
    public boolean isClipPath() {
        return true;
    }

    public VectorDrawableCompat$VClipPath() {
    }

    public VectorDrawableCompat$VClipPath(VectorDrawableCompat$VClipPath vectorDrawableCompat$VClipPath) {
        super(vectorDrawableCompat$VClipPath);
    }

    public void inflate(Resources resources, AttributeSet attributeSet, Resources$Theme resources$Theme, XmlPullParser xmlPullParser) {
        if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
            TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH);
            updateStateFromTypedArray(typedArrayObtainAttributes);
            typedArrayObtainAttributes.recycle();
        }
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        String string = typedArray.getString(0);
        if (string != null) {
            this.mPathName = string;
        }
        String string2 = typedArray.getString(1);
        if (string2 != null) {
            this.mNodes = PathParser.createNodesFromPathData(string2);
        }
    }
}
