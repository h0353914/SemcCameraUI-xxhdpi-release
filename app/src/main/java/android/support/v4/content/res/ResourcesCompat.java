package android.support.v4.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources$NotFoundException;
import android.content.res.Resources$Theme;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.os.Handler;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.FontRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.graphics.TypefaceCompat;
import android.support.v4.util.Preconditions;
import android.util.Log;
import android.util.TypedValue;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class ResourcesCompat {
    private static final String TAG = "ResourcesCompat";

    @Nullable
    public static Drawable getDrawable(@NonNull Resources resources, @DrawableRes int i, @Nullable Resources$Theme resources$Theme) throws Resources$NotFoundException {
        if (Build$VERSION.SDK_INT >= 21) {
            return resources.getDrawable(i, resources$Theme);
        }
        return resources.getDrawable(i);
    }

    @Nullable
    public static Drawable getDrawableForDensity(@NonNull Resources resources, @DrawableRes int i, int i2, @Nullable Resources$Theme resources$Theme) throws Resources$NotFoundException {
        if (Build$VERSION.SDK_INT >= 21) {
            return resources.getDrawableForDensity(i, i2, resources$Theme);
        }
        if (Build$VERSION.SDK_INT >= 15) {
            return resources.getDrawableForDensity(i, i2);
        }
        return resources.getDrawable(i);
    }

    @ColorInt
    public static int getColor(@NonNull Resources resources, @ColorRes int i, @Nullable Resources$Theme resources$Theme) throws Resources$NotFoundException {
        if (Build$VERSION.SDK_INT >= 23) {
            return resources.getColor(i, resources$Theme);
        }
        return resources.getColor(i);
    }

    @Nullable
    public static ColorStateList getColorStateList(@NonNull Resources resources, @ColorRes int i, @Nullable Resources$Theme resources$Theme) throws Resources$NotFoundException {
        if (Build$VERSION.SDK_INT >= 23) {
            return resources.getColorStateList(i, resources$Theme);
        }
        return resources.getColorStateList(i);
    }

    @Nullable
    public static Typeface getFont(@NonNull Context context, @FontRes int i) throws Resources$NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i, new TypedValue(), 0, null, null, false);
    }

    public static void getFont(@NonNull Context context, @FontRes int i, @NonNull ResourcesCompat$FontCallback resourcesCompat$FontCallback, @Nullable Handler handler) throws Resources$NotFoundException {
        Preconditions.checkNotNull(resourcesCompat$FontCallback);
        if (context.isRestricted()) {
            resourcesCompat$FontCallback.callbackFailAsync(-4, handler);
        } else {
            loadFont(context, i, new TypedValue(), 0, resourcesCompat$FontCallback, handler, false);
        }
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static Typeface getFont(@NonNull Context context, @FontRes int i, TypedValue typedValue, int i2, @Nullable ResourcesCompat$FontCallback resourcesCompat$FontCallback) throws Resources$NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i, typedValue, i2, resourcesCompat$FontCallback, null, true);
    }

    private static Typeface loadFont(@NonNull Context context, int i, TypedValue typedValue, int i2, @Nullable ResourcesCompat$FontCallback resourcesCompat$FontCallback, @Nullable Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface typefaceLoadFont = loadFont(context, resources, typedValue, i, i2, resourcesCompat$FontCallback, handler, z);
        if (typefaceLoadFont != null || resourcesCompat$FontCallback != null) {
            return typefaceLoadFont;
        }
        throw new Resources$NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Typeface loadFont(@NonNull Context context, Resources resources, TypedValue typedValue, int i, int i2, @Nullable ResourcesCompat$FontCallback resourcesCompat$FontCallback, @Nullable Handler handler, boolean z) {
        if (typedValue.string == null) {
            throw new Resources$NotFoundException("Resource \"" + resources.getResourceName(i) + "\" (" + Integer.toHexString(i) + ") is not a Font: " + typedValue);
        }
        String string = typedValue.string.toString();
        if (!string.startsWith("res/")) {
            if (resourcesCompat$FontCallback != null) {
                resourcesCompat$FontCallback.callbackFailAsync(-3, handler);
            }
            return null;
        }
        Typeface typefaceFindFromCache = TypefaceCompat.findFromCache(resources, i, i2);
        if (typefaceFindFromCache != null) {
            if (resourcesCompat$FontCallback != null) {
                resourcesCompat$FontCallback.callbackSuccessAsync(typefaceFindFromCache, handler);
            }
            return typefaceFindFromCache;
        }
        try {
            if (string.toLowerCase().endsWith(".xml")) {
                FontResourcesParserCompat$FamilyResourceEntry fontResourcesParserCompat$FamilyResourceEntry = FontResourcesParserCompat.parse(resources.getXml(i), resources);
                if (fontResourcesParserCompat$FamilyResourceEntry == null) {
                    Log.e("ResourcesCompat", "Failed to find font-family tag");
                    if (resourcesCompat$FontCallback != null) {
                        resourcesCompat$FontCallback.callbackFailAsync(-3, handler);
                    }
                    return null;
                }
                return TypefaceCompat.createFromResourcesFamilyXml(context, fontResourcesParserCompat$FamilyResourceEntry, resources, i, i2, resourcesCompat$FontCallback, handler, z);
            }
            Typeface typefaceCreateFromResourcesFontFile = TypefaceCompat.createFromResourcesFontFile(context, resources, i, string, i2);
            if (resourcesCompat$FontCallback != null) {
                if (typefaceCreateFromResourcesFontFile != null) {
                    resourcesCompat$FontCallback.callbackSuccessAsync(typefaceCreateFromResourcesFontFile, handler);
                } else {
                    resourcesCompat$FontCallback.callbackFailAsync(-3, handler);
                }
            }
            return typefaceCreateFromResourcesFontFile;
        } catch (IOException e) {
            Log.e("ResourcesCompat", "Failed to read xml resource " + string, e);
            if (resourcesCompat$FontCallback != null) {
                resourcesCompat$FontCallback.callbackFailAsync(-3, handler);
            }
            return null;
        } catch (XmlPullParserException e2) {
            Log.e("ResourcesCompat", "Failed to parse xml resource " + string, e2);
            if (resourcesCompat$FontCallback != null) {
            }
            return null;
        }
    }

    private ResourcesCompat() {
    }
}
