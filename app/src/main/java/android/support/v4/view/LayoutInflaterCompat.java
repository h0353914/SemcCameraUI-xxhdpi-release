package android.support.v4.view;

import android.os.Build$VERSION;
import android.support.annotation.NonNull;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.LayoutInflater$Factory;
import android.view.LayoutInflater$Factory2;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutInflaterCompat {
    private static final String TAG = "LayoutInflaterCompatHC";
    private static boolean sCheckedField;
    private static Field sLayoutInflaterFactory2Field;

    private static void forceSetFactory2(LayoutInflater layoutInflater, LayoutInflater$Factory2 layoutInflater$Factory2) {
        if (!sCheckedField) {
            try {
                sLayoutInflaterFactory2Field = LayoutInflater.class.getDeclaredField("mFactory2");
                sLayoutInflaterFactory2Field.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            sCheckedField = true;
        }
        if (sLayoutInflaterFactory2Field != null) {
            try {
                sLayoutInflaterFactory2Field.set(layoutInflater, layoutInflater$Factory2);
            } catch (IllegalAccessException e2) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }

    private LayoutInflaterCompat() {
    }

    @Deprecated
    public static void setFactory(@NonNull LayoutInflater layoutInflater, @NonNull LayoutInflaterFactory layoutInflaterFactory) {
        if (Build$VERSION.SDK_INT >= 21) {
            layoutInflater.setFactory2(layoutInflaterFactory != null ? new LayoutInflaterCompat$Factory2Wrapper(layoutInflaterFactory) : null);
            return;
        }
        LayoutInflaterCompat$Factory2Wrapper layoutInflaterCompat$Factory2Wrapper = layoutInflaterFactory != null ? new LayoutInflaterCompat$Factory2Wrapper(layoutInflaterFactory) : null;
        layoutInflater.setFactory2(layoutInflaterCompat$Factory2Wrapper);
        LayoutInflater$Factory factory = layoutInflater.getFactory();
        if (factory instanceof LayoutInflater$Factory2) {
            forceSetFactory2(layoutInflater, (LayoutInflater$Factory2) factory);
        } else {
            forceSetFactory2(layoutInflater, layoutInflaterCompat$Factory2Wrapper);
        }
    }

    public static void setFactory2(@NonNull LayoutInflater layoutInflater, @NonNull LayoutInflater$Factory2 layoutInflater$Factory2) {
        layoutInflater.setFactory2(layoutInflater$Factory2);
        if (Build$VERSION.SDK_INT < 21) {
            LayoutInflater$Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater$Factory2) {
                forceSetFactory2(layoutInflater, (LayoutInflater$Factory2) factory);
            } else {
                forceSetFactory2(layoutInflater, layoutInflater$Factory2);
            }
        }
    }

    @Deprecated
    public static LayoutInflaterFactory getFactory(LayoutInflater layoutInflater) {
        LayoutInflater$Factory factory = layoutInflater.getFactory();
        if (factory instanceof LayoutInflaterCompat$Factory2Wrapper) {
            return ((LayoutInflaterCompat$Factory2Wrapper) factory).mDelegateFactory;
        }
        return null;
    }
}
