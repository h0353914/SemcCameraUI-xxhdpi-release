package com.sonymobile.sidetouchgesturedetector;

import android.os.Handler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class DynamicAreaFilter$HandlerHelper {
    private static final String METHOD_HAS_CALLBACKS = "hasCallbacks";
    private static Method sMethod;

    private DynamicAreaFilter$HandlerHelper() {
    }

    static /* synthetic */ boolean access$200(Handler handler, Runnable runnable) {
        return hasCallbacks(handler, runnable);
    }

    private static boolean hasCallbacks(Handler handler, Runnable runnable) {
        try {
            if (sMethod == null) {
                sMethod = Handler.class.getDeclaredMethod("hasCallbacks", Runnable.class);
            }
            return ((Boolean) sMethod.invoke(handler, runnable)).booleanValue();
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }
}
