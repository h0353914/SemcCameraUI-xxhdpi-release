package android.support.v7.widget;

import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.DrawableContainer$DrawableContainerState;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build$VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.graphics.drawable.WrappedDrawable;
import android.support.v7.graphics.drawable.DrawableWrapper;
import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class DrawableUtils {
    public static final Rect INSETS_NONE = new Rect();
    private static final String TAG = "DrawableUtils";
    private static final String VECTOR_DRAWABLE_CLAZZ_NAME = "android.graphics.drawable.VectorDrawable";
    private static Class<?> sInsetsClazz;

    static {
        if (Build$VERSION.SDK_INT >= 18) {
            try {
                sInsetsClazz = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException unused) {
            }
        }
    }

    private DrawableUtils() {
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Rect getOpticalBounds(Drawable drawable) {
        byte b;
        if (sInsetsClazz != null) {
            try {
                Drawable drawableUnwrap = DrawableCompat.unwrap(drawable);
                Object objInvoke = drawableUnwrap.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(drawableUnwrap, new Object[0]);
                if (objInvoke != null) {
                    Rect rect = new Rect();
                    for (Field field : sInsetsClazz.getFields()) {
                        String name = field.getName();
                        int iHashCode = name.hashCode();
                        if (iHashCode != -1383228885) {
                            if (iHashCode != 115029) {
                                if (iHashCode != 3317767) {
                                    b = (iHashCode == 108511772 && name.equals("right")) ? (byte) 2 : (byte) -1;
                                } else if (name.equals("left")) {
                                    b = 0;
                                }
                            } else if (name.equals("top")) {
                                b = 1;
                            }
                        } else if (name.equals("bottom")) {
                            b = 3;
                        }
                        switch (b) {
                            case 0:
                                rect.left = field.getInt(objInvoke);
                                break;
                            case 1:
                                rect.top = field.getInt(objInvoke);
                                break;
                            case 2:
                                rect.right = field.getInt(objInvoke);
                                break;
                            case 3:
                                rect.bottom = field.getInt(objInvoke);
                                break;
                        }
                    }
                    return rect;
                }
            } catch (Exception unused) {
                Log.e("DrawableUtils", "Couldn't obtain the optical insets. Ignoring.");
            }
        }
        return INSETS_NONE;
    }

    static void fixDrawable(@NonNull Drawable drawable) {
        if (Build$VERSION.SDK_INT == 21 && "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            fixVectorDrawableTinting(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean canSafelyMutateDrawable(@NonNull Drawable drawable) {
        if (Build$VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (Build$VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (Build$VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (drawable instanceof DrawableContainer) {
            Drawable$ConstantState constantState = drawable.getConstantState();
            if (!(constantState instanceof DrawableContainer$DrawableContainerState)) {
                return true;
            }
            for (Drawable drawable2 : ((DrawableContainer$DrawableContainerState) constantState).getChildren()) {
                if (!canSafelyMutateDrawable(drawable2)) {
                    return false;
                }
            }
            return true;
        }
        if (drawable instanceof WrappedDrawable) {
            return canSafelyMutateDrawable(((WrappedDrawable) drawable).getWrappedDrawable());
        }
        if (drawable instanceof DrawableWrapper) {
            return canSafelyMutateDrawable(((DrawableWrapper) drawable).getWrappedDrawable());
        }
        if (drawable instanceof ScaleDrawable) {
            return canSafelyMutateDrawable(((ScaleDrawable) drawable).getDrawable());
        }
        return true;
    }

    private static void fixVectorDrawableTinting(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(ThemeUtils.CHECKED_STATE_SET);
        } else {
            drawable.setState(ThemeUtils.EMPTY_STATE_SET);
        }
        drawable.setState(state);
    }

    public static PorterDuff$Mode parseTintMode(int i, PorterDuff$Mode porterDuff$Mode) {
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
}
