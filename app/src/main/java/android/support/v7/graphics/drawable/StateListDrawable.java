package android.support.v7.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v7.appcompat.R$styleable;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.util.StateSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
class StateListDrawable extends DrawableContainer {
    private static final boolean DEBUG = false;
    private static final String TAG = "StateListDrawable";
    private boolean mMutated;
    private StateListDrawable$StateListState mStateListState;

    @Override // android.support.v7.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer
    /* bridge */ /* synthetic */ DrawableContainer$DrawableContainerState cloneConstantState() {
        return cloneConstantState();
    }

    StateListDrawable() {
        this(null, null);
    }

    public void addState(int[] iArr, Drawable drawable) {
        if (drawable != null) {
            this.mStateListState.addStateSet(iArr, drawable);
            onStateChange(getState());
        }
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        int iIndexOfStateSet = this.mStateListState.indexOfStateSet(iArr);
        if (iIndexOfStateSet < 0) {
            iIndexOfStateSet = this.mStateListState.indexOfStateSet(StateSet.WILD_CARD);
        }
        return selectDrawable(iIndexOfStateSet) || zOnStateChange;
    }

    public void inflate(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, R$styleable.StateListDrawable);
        setVisible(typedArrayObtainAttributes.getBoolean(R$styleable.StateListDrawable_android_visible, true), true);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        updateDensity(resources);
        typedArrayObtainAttributes.recycle();
        inflateChildElements(context, resources, xmlPullParser, attributeSet, resources$Theme);
        onStateChange(getState());
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        StateListDrawable$StateListState stateListDrawable$StateListState = this.mStateListState;
        if (Build$VERSION.SDK_INT >= 21) {
            stateListDrawable$StateListState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        }
        stateListDrawable$StateListState.mVariablePadding = typedArray.getBoolean(R$styleable.StateListDrawable_android_variablePadding, stateListDrawable$StateListState.mVariablePadding);
        stateListDrawable$StateListState.mConstantSize = typedArray.getBoolean(R$styleable.StateListDrawable_android_constantSize, stateListDrawable$StateListState.mConstantSize);
        stateListDrawable$StateListState.mEnterFadeDuration = typedArray.getInt(R$styleable.StateListDrawable_android_enterFadeDuration, stateListDrawable$StateListState.mEnterFadeDuration);
        stateListDrawable$StateListState.mExitFadeDuration = typedArray.getInt(R$styleable.StateListDrawable_android_exitFadeDuration, stateListDrawable$StateListState.mExitFadeDuration);
        stateListDrawable$StateListState.mDither = typedArray.getBoolean(R$styleable.StateListDrawable_android_dither, stateListDrawable$StateListState.mDither);
    }

    private void inflateChildElements(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        int next;
        StateListDrawable$StateListState stateListDrawable$StateListState = this.mStateListState;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next2 == 3) {
                return;
            }
            if (next2 == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, R$styleable.StateListDrawableItem);
                int resourceId = typedArrayObtainAttributes.getResourceId(R$styleable.StateListDrawableItem_android_drawable, -1);
                Drawable drawable = resourceId > 0 ? AppCompatResources.getDrawable(context, resourceId) : null;
                typedArrayObtainAttributes.recycle();
                int[] iArrExtractStateSet = extractStateSet(attributeSet);
                if (drawable == null) {
                    do {
                        next = xmlPullParser.next();
                    } while (next == 4);
                    if (next != 2) {
                        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    if (Build$VERSION.SDK_INT >= 21) {
                        drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, resources$Theme);
                    } else {
                        drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                    }
                }
                stateListDrawable$StateListState.addStateSet(iArrExtractStateSet, drawable);
            }
        }
    }

    int[] extractStateSet(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i = 0;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
            if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                int i3 = i + 1;
                if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                    attributeNameResource = -attributeNameResource;
                }
                iArr[i] = attributeNameResource;
                i = i3;
            }
        }
        return StateSet.trimStateSet(iArr, i);
    }

    StateListDrawable$StateListState getStateListState() {
        return this.mStateListState;
    }

    int getStateCount() {
        return this.mStateListState.getChildCount();
    }

    int[] getStateSet(int i) {
        return this.mStateListState.mStateSets[i];
    }

    Drawable getStateDrawable(int i) {
        return this.mStateListState.getChild(i);
    }

    int getStateDrawableIndex(int[] iArr) {
        return this.mStateListState.indexOfStateSet(iArr);
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mStateListState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer
    StateListDrawable$StateListState cloneConstantState() {
        return new StateListDrawable$StateListState(this.mStateListState, this, null);
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer
    void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources$Theme resources$Theme) {
        super.applyTheme(resources$Theme);
        onStateChange(getState());
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer
    protected void setConstantState(@NonNull DrawableContainer$DrawableContainerState drawableContainer$DrawableContainerState) {
        super.setConstantState(drawableContainer$DrawableContainerState);
        if (drawableContainer$DrawableContainerState instanceof StateListDrawable$StateListState) {
            this.mStateListState = (StateListDrawable$StateListState) drawableContainer$DrawableContainerState;
        }
    }

    StateListDrawable(StateListDrawable$StateListState stateListDrawable$StateListState, Resources resources) {
        setConstantState(new StateListDrawable$StateListState(stateListDrawable$StateListState, this, resources));
        onStateChange(getState());
    }

    StateListDrawable(@Nullable StateListDrawable$StateListState stateListDrawable$StateListState) {
        if (stateListDrawable$StateListState != null) {
            setConstantState(stateListDrawable$StateListState);
        }
    }
}
