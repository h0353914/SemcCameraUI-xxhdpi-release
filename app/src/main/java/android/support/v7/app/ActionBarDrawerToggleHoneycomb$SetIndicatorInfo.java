package android.support.v7.app;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class ActionBarDrawerToggleHoneycomb$SetIndicatorInfo {
    public Method setHomeActionContentDescription;
    public Method setHomeAsUpIndicator;
    public ImageView upIndicatorView;

    ActionBarDrawerToggleHoneycomb$SetIndicatorInfo(Activity activity) {
        try {
            this.setHomeAsUpIndicator = android.app.ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
            this.setHomeActionContentDescription = android.app.ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
        } catch (NoSuchMethodException unused) {
            View viewFindViewById = activity.findViewById(16908332);
            if (viewFindViewById == null) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            if (viewGroup.getChildCount() != 2) {
                return;
            }
            View childAt = viewGroup.getChildAt(0);
            View childAt2 = childAt.getId() != 16908332 ? childAt : viewGroup.getChildAt(1);
            if (childAt2 instanceof ImageView) {
                this.upIndicatorView = (ImageView) childAt2;
            }
        }
    }
}
