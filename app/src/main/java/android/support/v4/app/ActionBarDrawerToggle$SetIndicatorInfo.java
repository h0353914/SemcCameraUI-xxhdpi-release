package android.support.v4.app;

import android.app.ActionBar;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class ActionBarDrawerToggle$SetIndicatorInfo {
    Method mSetHomeActionContentDescription;
    Method mSetHomeAsUpIndicator;
    ImageView mUpIndicatorView;

    ActionBarDrawerToggle$SetIndicatorInfo(Activity activity) {
        try {
            this.mSetHomeAsUpIndicator = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
            this.mSetHomeActionContentDescription = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
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
                this.mUpIndicatorView = (ImageView) childAt2;
            }
        }
    }
}
