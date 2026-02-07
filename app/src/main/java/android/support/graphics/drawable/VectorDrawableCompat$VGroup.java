package android.support.graphics.drawable;

import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
class VectorDrawableCompat$VGroup extends VectorDrawableCompat$VObject {
    int mChangingConfigurations;
    final ArrayList<VectorDrawableCompat$VObject> mChildren;
    private String mGroupName;
    final Matrix mLocalMatrix;
    private float mPivotX;
    private float mPivotY;
    float mRotate;
    private float mScaleX;
    private float mScaleY;
    final Matrix mStackedMatrix;
    private int[] mThemeAttrs;
    private float mTranslateX;
    private float mTranslateY;

    public VectorDrawableCompat$VGroup(VectorDrawableCompat$VGroup vectorDrawableCompat$VGroup, ArrayMap<String, Object> arrayMap) {
        VectorDrawableCompat$VPath vectorDrawableCompat$VClipPath;
        super(null);
        this.mStackedMatrix = new Matrix();
        this.mChildren = new ArrayList<>();
        this.mRotate = 0.0f;
        this.mPivotX = 0.0f;
        this.mPivotY = 0.0f;
        this.mScaleX = 1.0f;
        this.mScaleY = 1.0f;
        this.mTranslateX = 0.0f;
        this.mTranslateY = 0.0f;
        this.mLocalMatrix = new Matrix();
        this.mGroupName = null;
        this.mRotate = vectorDrawableCompat$VGroup.mRotate;
        this.mPivotX = vectorDrawableCompat$VGroup.mPivotX;
        this.mPivotY = vectorDrawableCompat$VGroup.mPivotY;
        this.mScaleX = vectorDrawableCompat$VGroup.mScaleX;
        this.mScaleY = vectorDrawableCompat$VGroup.mScaleY;
        this.mTranslateX = vectorDrawableCompat$VGroup.mTranslateX;
        this.mTranslateY = vectorDrawableCompat$VGroup.mTranslateY;
        this.mThemeAttrs = vectorDrawableCompat$VGroup.mThemeAttrs;
        this.mGroupName = vectorDrawableCompat$VGroup.mGroupName;
        this.mChangingConfigurations = vectorDrawableCompat$VGroup.mChangingConfigurations;
        if (this.mGroupName != null) {
            arrayMap.put(this.mGroupName, this);
        }
        this.mLocalMatrix.set(vectorDrawableCompat$VGroup.mLocalMatrix);
        ArrayList<VectorDrawableCompat$VObject> arrayList = vectorDrawableCompat$VGroup.mChildren;
        for (int i = 0; i < arrayList.size(); i++) {
            VectorDrawableCompat$VObject vectorDrawableCompat$VObject = arrayList.get(i);
            if (vectorDrawableCompat$VObject instanceof VectorDrawableCompat$VGroup) {
                this.mChildren.add(new VectorDrawableCompat$VGroup((VectorDrawableCompat$VGroup) vectorDrawableCompat$VObject, arrayMap));
            } else {
                if (vectorDrawableCompat$VObject instanceof VectorDrawableCompat$VFullPath) {
                    vectorDrawableCompat$VClipPath = new VectorDrawableCompat$VFullPath((VectorDrawableCompat$VFullPath) vectorDrawableCompat$VObject);
                } else if (vectorDrawableCompat$VObject instanceof VectorDrawableCompat$VClipPath) {
                    vectorDrawableCompat$VClipPath = new VectorDrawableCompat$VClipPath((VectorDrawableCompat$VClipPath) vectorDrawableCompat$VObject);
                } else {
                    throw new IllegalStateException("Unknown object in the tree!");
                }
                this.mChildren.add(vectorDrawableCompat$VClipPath);
                if (vectorDrawableCompat$VClipPath.mPathName != null) {
                    arrayMap.put(vectorDrawableCompat$VClipPath.mPathName, vectorDrawableCompat$VClipPath);
                }
            }
        }
    }

    public VectorDrawableCompat$VGroup() {
        super(null);
        this.mStackedMatrix = new Matrix();
        this.mChildren = new ArrayList<>();
        this.mRotate = 0.0f;
        this.mPivotX = 0.0f;
        this.mPivotY = 0.0f;
        this.mScaleX = 1.0f;
        this.mScaleY = 1.0f;
        this.mTranslateX = 0.0f;
        this.mTranslateY = 0.0f;
        this.mLocalMatrix = new Matrix();
        this.mGroupName = null;
    }

    public String getGroupName() {
        return this.mGroupName;
    }

    public Matrix getLocalMatrix() {
        return this.mLocalMatrix;
    }

    public void inflate(Resources resources, AttributeSet attributeSet, Resources$Theme resources$Theme, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_GROUP);
        updateStateFromTypedArray(typedArrayObtainAttributes, xmlPullParser);
        typedArrayObtainAttributes.recycle();
    }

    private void updateStateFromTypedArray(TypedArray typedArray, XmlPullParser xmlPullParser) {
        this.mThemeAttrs = null;
        this.mRotate = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "rotation", 5, this.mRotate);
        this.mPivotX = typedArray.getFloat(1, this.mPivotX);
        this.mPivotY = typedArray.getFloat(2, this.mPivotY);
        this.mScaleX = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "scaleX", 3, this.mScaleX);
        this.mScaleY = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "scaleY", 4, this.mScaleY);
        this.mTranslateX = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "translateX", 6, this.mTranslateX);
        this.mTranslateY = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "translateY", 7, this.mTranslateY);
        String string = typedArray.getString(0);
        if (string != null) {
            this.mGroupName = string;
        }
        updateLocalMatrix();
    }

    private void updateLocalMatrix() {
        this.mLocalMatrix.reset();
        this.mLocalMatrix.postTranslate(-this.mPivotX, -this.mPivotY);
        this.mLocalMatrix.postScale(this.mScaleX, this.mScaleY);
        this.mLocalMatrix.postRotate(this.mRotate, 0.0f, 0.0f);
        this.mLocalMatrix.postTranslate(this.mTranslateX + this.mPivotX, this.mTranslateY + this.mPivotY);
    }

    public float getRotation() {
        return this.mRotate;
    }

    public void setRotation(float f) {
        if (f != this.mRotate) {
            this.mRotate = f;
            updateLocalMatrix();
        }
    }

    public float getPivotX() {
        return this.mPivotX;
    }

    public void setPivotX(float f) {
        if (f != this.mPivotX) {
            this.mPivotX = f;
            updateLocalMatrix();
        }
    }

    public float getPivotY() {
        return this.mPivotY;
    }

    public void setPivotY(float f) {
        if (f != this.mPivotY) {
            this.mPivotY = f;
            updateLocalMatrix();
        }
    }

    public float getScaleX() {
        return this.mScaleX;
    }

    public void setScaleX(float f) {
        if (f != this.mScaleX) {
            this.mScaleX = f;
            updateLocalMatrix();
        }
    }

    public float getScaleY() {
        return this.mScaleY;
    }

    public void setScaleY(float f) {
        if (f != this.mScaleY) {
            this.mScaleY = f;
            updateLocalMatrix();
        }
    }

    public float getTranslateX() {
        return this.mTranslateX;
    }

    public void setTranslateX(float f) {
        if (f != this.mTranslateX) {
            this.mTranslateX = f;
            updateLocalMatrix();
        }
    }

    public float getTranslateY() {
        return this.mTranslateY;
    }

    public void setTranslateY(float f) {
        if (f != this.mTranslateY) {
            this.mTranslateY = f;
            updateLocalMatrix();
        }
    }

    @Override // android.support.graphics.drawable.VectorDrawableCompat$VObject
    public boolean isStateful() {
        for (int i = 0; i < this.mChildren.size(); i++) {
            if (this.mChildren.get(i).isStateful()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.support.graphics.drawable.VectorDrawableCompat$VObject
    public boolean onStateChanged(int[] iArr) {
        boolean zOnStateChanged = false;
        for (int i = 0; i < this.mChildren.size(); i++) {
            zOnStateChanged |= this.mChildren.get(i).onStateChanged(iArr);
        }
        return zOnStateChanged;
    }
}
