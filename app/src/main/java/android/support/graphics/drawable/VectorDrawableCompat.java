package android.support.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import android.os.Build$VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class VectorDrawableCompat extends VectorDrawableCommon {
    private static final boolean DBG_VECTOR_DRAWABLE = false;
    static final PorterDuff$Mode DEFAULT_TINT_MODE = PorterDuff$Mode.SRC_IN;
    private static final int LINECAP_BUTT = 0;
    private static final int LINECAP_ROUND = 1;
    private static final int LINECAP_SQUARE = 2;
    private static final int LINEJOIN_BEVEL = 2;
    private static final int LINEJOIN_MITER = 0;
    private static final int LINEJOIN_ROUND = 1;
    static final String LOGTAG = "VectorDrawableCompat";
    private static final int MAX_CACHED_BITMAP_SIZE = 2048;
    private static final String SHAPE_CLIP_PATH = "clip-path";
    private static final String SHAPE_GROUP = "group";
    private static final String SHAPE_PATH = "path";
    private static final String SHAPE_VECTOR = "vector";
    private boolean mAllowCaching;
    private Drawable$ConstantState mCachedConstantStateDelegate;
    private ColorFilter mColorFilter;
    private boolean mMutated;
    private PorterDuffColorFilter mTintFilter;
    private final Rect mTmpBounds;
    private final float[] mTmpFloats;
    private final Matrix mTmpMatrix;
    private VectorDrawableCompat$VectorDrawableCompatState mVectorState;

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources$Theme resources$Theme) {
        super.applyTheme(resources$Theme);
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ ColorFilter getColorFilter() {
        return super.getColorFilter();
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff$Mode porterDuff$Mode) {
        super.setColorFilter(i, porterDuff$Mode);
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    VectorDrawableCompat() {
        this.mAllowCaching = true;
        this.mTmpFloats = new float[9];
        this.mTmpMatrix = new Matrix();
        this.mTmpBounds = new Rect();
        this.mVectorState = new VectorDrawableCompat$VectorDrawableCompatState();
    }

    VectorDrawableCompat(@NonNull VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState) {
        this.mAllowCaching = true;
        this.mTmpFloats = new float[9];
        this.mTmpMatrix = new Matrix();
        this.mTmpBounds = new Rect();
        this.mVectorState = vectorDrawableCompat$VectorDrawableCompatState;
        this.mTintFilter = updateTintFilter(this.mTintFilter, vectorDrawableCompat$VectorDrawableCompatState.mTint, vectorDrawableCompat$VectorDrawableCompatState.mTintMode);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.mutate();
            return this;
        }
        if (!this.mMutated && super.mutate() == this) {
            this.mVectorState = new VectorDrawableCompat$VectorDrawableCompatState(this.mVectorState);
            this.mMutated = true;
        }
        return this;
    }

    Object getTargetByName(String str) {
        return this.mVectorState.mVPathRenderer.mVGTargetsMap.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable$ConstantState getConstantState() {
        if (this.mDelegateDrawable != null && Build$VERSION.SDK_INT >= 24) {
            return new VectorDrawableCompat$VectorDrawableDelegateState(this.mDelegateDrawable.getConstantState());
        }
        this.mVectorState.mChangingConfigurations = getChangingConfigurations();
        return this.mVectorState;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.draw(canvas);
            return;
        }
        copyBounds(this.mTmpBounds);
        if (this.mTmpBounds.width() <= 0 || this.mTmpBounds.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.mColorFilter == null ? this.mTintFilter : this.mColorFilter;
        canvas.getMatrix(this.mTmpMatrix);
        this.mTmpMatrix.getValues(this.mTmpFloats);
        float fAbs = Math.abs(this.mTmpFloats[0]);
        float fAbs2 = Math.abs(this.mTmpFloats[4]);
        float fAbs3 = Math.abs(this.mTmpFloats[1]);
        float fAbs4 = Math.abs(this.mTmpFloats[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iMin = Math.min(2048, (int) (this.mTmpBounds.width() * fAbs));
        int iMin2 = Math.min(2048, (int) (this.mTmpBounds.height() * fAbs2));
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(this.mTmpBounds.left, this.mTmpBounds.top);
        if (needMirroring()) {
            canvas.translate(this.mTmpBounds.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.mTmpBounds.offsetTo(0, 0);
        this.mVectorState.createCachedBitmapIfNeeded(iMin, iMin2);
        if (!this.mAllowCaching) {
            this.mVectorState.updateCachedBitmap(iMin, iMin2);
        } else if (!this.mVectorState.canReuseCache()) {
            this.mVectorState.updateCachedBitmap(iMin, iMin2);
            this.mVectorState.updateCacheStates();
        }
        this.mVectorState.drawCachedBitmapWithRootAlpha(canvas, colorFilter, this.mTmpBounds);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        if (this.mDelegateDrawable != null) {
            return DrawableCompat.getAlpha(this.mDelegateDrawable);
        }
        return this.mVectorState.mVPathRenderer.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setAlpha(i);
        } else if (this.mVectorState.mVPathRenderer.getRootAlpha() != i) {
            this.mVectorState.mVPathRenderer.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setColorFilter(colorFilter);
        } else {
            this.mColorFilter = colorFilter;
            invalidateSelf();
        }
    }

    PorterDuffColorFilter updateTintFilter(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff$Mode porterDuff$Mode) {
        if (colorStateList == null || porterDuff$Mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), porterDuff$Mode);
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.setTint(this.mDelegateDrawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.setTintList(this.mDelegateDrawable, colorStateList);
            return;
        }
        VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState = this.mVectorState;
        if (vectorDrawableCompat$VectorDrawableCompatState.mTint != colorStateList) {
            vectorDrawableCompat$VectorDrawableCompatState.mTint = colorStateList;
            this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList, vectorDrawableCompat$VectorDrawableCompatState.mTintMode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff$Mode porterDuff$Mode) {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.setTintMode(this.mDelegateDrawable, porterDuff$Mode);
            return;
        }
        VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState = this.mVectorState;
        if (vectorDrawableCompat$VectorDrawableCompatState.mTintMode != porterDuff$Mode) {
            vectorDrawableCompat$VectorDrawableCompatState.mTintMode = porterDuff$Mode;
            this.mTintFilter = updateTintFilter(this.mTintFilter, vectorDrawableCompat$VectorDrawableCompatState.mTint, porterDuff$Mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.isStateful();
        }
        return super.isStateful() || (this.mVectorState != null && (this.mVectorState.isStateful() || (this.mVectorState.mTint != null && this.mVectorState.mTint.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.setState(iArr);
        }
        boolean z = false;
        VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState = this.mVectorState;
        if (vectorDrawableCompat$VectorDrawableCompatState.mTint != null && vectorDrawableCompat$VectorDrawableCompatState.mTintMode != null) {
            this.mTintFilter = updateTintFilter(this.mTintFilter, vectorDrawableCompat$VectorDrawableCompatState.mTint, vectorDrawableCompat$VectorDrawableCompatState.mTintMode);
            invalidateSelf();
            z = true;
        }
        if (!vectorDrawableCompat$VectorDrawableCompatState.isStateful() || !vectorDrawableCompat$VectorDrawableCompatState.onStateChanged(iArr)) {
            return z;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getIntrinsicWidth();
        }
        return (int) this.mVectorState.mVPathRenderer.mBaseWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getIntrinsicHeight();
        }
        return (int) this.mVectorState.mVPathRenderer.mBaseHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        if (this.mDelegateDrawable == null) {
            return false;
        }
        DrawableCompat.canApplyTheme(this.mDelegateDrawable);
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        if (this.mDelegateDrawable != null) {
            return DrawableCompat.isAutoMirrored(this.mDelegateDrawable);
        }
        return this.mVectorState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.setAutoMirrored(this.mDelegateDrawable, z);
        } else {
            this.mVectorState.mAutoMirrored = z;
        }
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public float getPixelSize() {
        if (this.mVectorState == null || this.mVectorState.mVPathRenderer == null || this.mVectorState.mVPathRenderer.mBaseWidth == 0.0f || this.mVectorState.mVPathRenderer.mBaseHeight == 0.0f || this.mVectorState.mVPathRenderer.mViewportHeight == 0.0f || this.mVectorState.mVPathRenderer.mViewportWidth == 0.0f) {
            return 1.0f;
        }
        float f = this.mVectorState.mVPathRenderer.mBaseWidth;
        float f2 = this.mVectorState.mVPathRenderer.mBaseHeight;
        return Math.min(this.mVectorState.mVPathRenderer.mViewportWidth / f, this.mVectorState.mVPathRenderer.mViewportHeight / f2);
    }

    @Nullable
    public static VectorDrawableCompat create(@NonNull Resources resources, @DrawableRes int i, @Nullable Resources$Theme resources$Theme) {
        int next;
        if (Build$VERSION.SDK_INT >= 24) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = ResourcesCompat.getDrawable(resources, i, resources$Theme);
            vectorDrawableCompat.mCachedConstantStateDelegate = new VectorDrawableCompat$VectorDrawableDelegateState(vectorDrawableCompat.mDelegateDrawable.getConstantState());
            return vectorDrawableCompat;
        }
        try {
            XmlResourceParser xml = resources.getXml(i);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            return createFromXmlInner(resources, (XmlPullParser) xml, attributeSetAsAttributeSet, resources$Theme);
        } catch (IOException e) {
            Log.e("VectorDrawableCompat", "parser error", e);
            return null;
        } catch (XmlPullParserException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        }
    }

    public static VectorDrawableCompat createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
        vectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, resources$Theme);
        return vectorDrawableCompat;
    }

    static int applyAlpha(int i, float f) {
        return (i & 16777215) | (((int) (Color.alpha(i) * f)) << 24);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        if (this.mDelegateDrawable != null) {
            DrawableCompat.inflate(this.mDelegateDrawable, resources, xmlPullParser, attributeSet, resources$Theme);
            return;
        }
        VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState = this.mVectorState;
        vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer = new VectorDrawableCompat$VPathRenderer();
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY);
        updateStateFromTypedArray(typedArrayObtainAttributes, xmlPullParser);
        typedArrayObtainAttributes.recycle();
        vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations = getChangingConfigurations();
        vectorDrawableCompat$VectorDrawableCompatState.mCacheDirty = true;
        inflateInternal(resources, xmlPullParser, attributeSet, resources$Theme);
        this.mTintFilter = updateTintFilter(this.mTintFilter, vectorDrawableCompat$VectorDrawableCompatState.mTint, vectorDrawableCompat$VectorDrawableCompatState.mTintMode);
    }

    private static PorterDuff$Mode parseTintModeCompat(int i, PorterDuff$Mode porterDuff$Mode) {
        if (i == 3) {
            return PorterDuff$Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff$Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff$Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff$Mode.MULTIPLY;
            case 15:
                return PorterDuff$Mode.SCREEN;
            case 16:
                return PorterDuff$Mode.ADD;
            default:
                return porterDuff$Mode;
        }
    }

    private void updateStateFromTypedArray(TypedArray typedArray, XmlPullParser xmlPullParser) throws XmlPullParserException {
        VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState = this.mVectorState;
        VectorDrawableCompat$VPathRenderer vectorDrawableCompat$VPathRenderer = vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer;
        vectorDrawableCompat$VectorDrawableCompatState.mTintMode = parseTintModeCompat(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff$Mode.SRC_IN);
        ColorStateList colorStateList = typedArray.getColorStateList(1);
        if (colorStateList != null) {
            vectorDrawableCompat$VectorDrawableCompatState.mTint = colorStateList;
        }
        vectorDrawableCompat$VectorDrawableCompatState.mAutoMirrored = TypedArrayUtils.getNamedBoolean(typedArray, xmlPullParser, "autoMirrored", 5, vectorDrawableCompat$VectorDrawableCompatState.mAutoMirrored);
        vectorDrawableCompat$VPathRenderer.mViewportWidth = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "viewportWidth", 7, vectorDrawableCompat$VPathRenderer.mViewportWidth);
        vectorDrawableCompat$VPathRenderer.mViewportHeight = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "viewportHeight", 8, vectorDrawableCompat$VPathRenderer.mViewportHeight);
        if (vectorDrawableCompat$VPathRenderer.mViewportWidth <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (vectorDrawableCompat$VPathRenderer.mViewportHeight <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        vectorDrawableCompat$VPathRenderer.mBaseWidth = typedArray.getDimension(3, vectorDrawableCompat$VPathRenderer.mBaseWidth);
        vectorDrawableCompat$VPathRenderer.mBaseHeight = typedArray.getDimension(2, vectorDrawableCompat$VPathRenderer.mBaseHeight);
        if (vectorDrawableCompat$VPathRenderer.mBaseWidth <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (vectorDrawableCompat$VPathRenderer.mBaseHeight <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        vectorDrawableCompat$VPathRenderer.setAlpha(TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "alpha", 4, vectorDrawableCompat$VPathRenderer.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            vectorDrawableCompat$VPathRenderer.mRootName = string;
            vectorDrawableCompat$VPathRenderer.mVGTargetsMap.put(string, vectorDrawableCompat$VPathRenderer);
        }
    }

    private void inflateInternal(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState = this.mVectorState;
        VectorDrawableCompat$VPathRenderer vectorDrawableCompat$VPathRenderer = vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(vectorDrawableCompat$VPathRenderer.mRootGroup);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                VectorDrawableCompat$VGroup vectorDrawableCompat$VGroup = (VectorDrawableCompat$VGroup) arrayDeque.peek();
                if ("path".equals(name)) {
                    VectorDrawableCompat$VFullPath vectorDrawableCompat$VFullPath = new VectorDrawableCompat$VFullPath();
                    vectorDrawableCompat$VFullPath.inflate(resources, attributeSet, resources$Theme, xmlPullParser);
                    vectorDrawableCompat$VGroup.mChildren.add(vectorDrawableCompat$VFullPath);
                    if (vectorDrawableCompat$VFullPath.getPathName() != null) {
                        vectorDrawableCompat$VPathRenderer.mVGTargetsMap.put(vectorDrawableCompat$VFullPath.getPathName(), vectorDrawableCompat$VFullPath);
                    }
                    z = false;
                    vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations = vectorDrawableCompat$VFullPath.mChangingConfigurations | vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations;
                } else if ("clip-path".equals(name)) {
                    VectorDrawableCompat$VClipPath vectorDrawableCompat$VClipPath = new VectorDrawableCompat$VClipPath();
                    vectorDrawableCompat$VClipPath.inflate(resources, attributeSet, resources$Theme, xmlPullParser);
                    vectorDrawableCompat$VGroup.mChildren.add(vectorDrawableCompat$VClipPath);
                    if (vectorDrawableCompat$VClipPath.getPathName() != null) {
                        vectorDrawableCompat$VPathRenderer.mVGTargetsMap.put(vectorDrawableCompat$VClipPath.getPathName(), vectorDrawableCompat$VClipPath);
                    }
                    vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations = vectorDrawableCompat$VClipPath.mChangingConfigurations | vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations;
                } else if ("group".equals(name)) {
                    VectorDrawableCompat$VGroup vectorDrawableCompat$VGroup2 = new VectorDrawableCompat$VGroup();
                    vectorDrawableCompat$VGroup2.inflate(resources, attributeSet, resources$Theme, xmlPullParser);
                    vectorDrawableCompat$VGroup.mChildren.add(vectorDrawableCompat$VGroup2);
                    arrayDeque.push(vectorDrawableCompat$VGroup2);
                    if (vectorDrawableCompat$VGroup2.getGroupName() != null) {
                        vectorDrawableCompat$VPathRenderer.mVGTargetsMap.put(vectorDrawableCompat$VGroup2.getGroupName(), vectorDrawableCompat$VGroup2);
                    }
                    vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations = vectorDrawableCompat$VGroup2.mChangingConfigurations | vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
    }

    private void printGroupTree(VectorDrawableCompat$VGroup vectorDrawableCompat$VGroup, int i) {
        String str = "";
        for (int i2 = 0; i2 < i; i2++) {
            str = str + "    ";
        }
        Log.v("VectorDrawableCompat", str + "current group is :" + vectorDrawableCompat$VGroup.getGroupName() + " rotation is " + vectorDrawableCompat$VGroup.mRotate);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("matrix is :");
        sb.append(vectorDrawableCompat$VGroup.getLocalMatrix().toString());
        Log.v("VectorDrawableCompat", sb.toString());
        for (int i3 = 0; i3 < vectorDrawableCompat$VGroup.mChildren.size(); i3++) {
            VectorDrawableCompat$VObject vectorDrawableCompat$VObject = vectorDrawableCompat$VGroup.mChildren.get(i3);
            if (vectorDrawableCompat$VObject instanceof VectorDrawableCompat$VGroup) {
                printGroupTree((VectorDrawableCompat$VGroup) vectorDrawableCompat$VObject, i + 1);
            } else {
                ((VectorDrawableCompat$VPath) vectorDrawableCompat$VObject).printVPath(i + 1);
            }
        }
    }

    void setAllowCaching(boolean z) {
        this.mAllowCaching = z;
    }

    private boolean needMirroring() {
        return Build$VERSION.SDK_INT >= 17 && isAutoMirrored() && DrawableCompat.getLayoutDirection(this) == 1;
    }

    @Override // android.support.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getChangingConfigurations();
        }
        return this.mVectorState.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}
