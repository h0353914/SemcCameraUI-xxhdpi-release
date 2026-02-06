package android.support.v7.view;

import android.view.InflateException;
import android.view.MenuItem;
import android.view.MenuItem$OnMenuItemClickListener;
import java.lang.reflect.Method;

class SupportMenuInflater$InflatedOnMenuItemClickListener implements MenuItem$OnMenuItemClickListener {
    private static final Class<?>[] PARAM_TYPES = {MenuItem.class};
    private Method mMethod;
    private Object mRealOwner;

    public SupportMenuInflater$InflatedOnMenuItemClickListener(Object obj, String str) {
        this.mRealOwner = obj;
        Class<?> cls = obj.getClass();
        try {
            this.mMethod = cls.getMethod(str, PARAM_TYPES);
        } catch (Exception e) {
            InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
            inflateException.initCause(e);
            throw inflateException;
        }
    }

    @Override // android.view.MenuItem$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        try {
            if (this.mMethod.getReturnType() == Boolean.TYPE) {
                return ((Boolean) this.mMethod.invoke(this.mRealOwner, menuItem)).booleanValue();
            }
            this.mMethod.invoke(this.mRealOwner, menuItem);
            return true;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
