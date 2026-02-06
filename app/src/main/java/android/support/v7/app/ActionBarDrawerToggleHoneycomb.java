package android.support.v7.app;

import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.util.Log;

class ActionBarDrawerToggleHoneycomb {
    private static final String TAG = "ActionBarDrawerToggleHC";
    private static final int[] THEME_ATTRS = {16843531};

    public static ActionBarDrawerToggleHoneycomb$SetIndicatorInfo setActionBarUpIndicator(ActionBarDrawerToggleHoneycomb$SetIndicatorInfo actionBarDrawerToggleHoneycomb$SetIndicatorInfo, Activity activity, Drawable drawable, int i) {
        ActionBarDrawerToggleHoneycomb$SetIndicatorInfo actionBarDrawerToggleHoneycomb$SetIndicatorInfo2 = new ActionBarDrawerToggleHoneycomb$SetIndicatorInfo(activity);
        if (actionBarDrawerToggleHoneycomb$SetIndicatorInfo2.setHomeAsUpIndicator != null) {
            try {
                android.app.ActionBar actionBar = activity.getActionBar();
                actionBarDrawerToggleHoneycomb$SetIndicatorInfo2.setHomeAsUpIndicator.invoke(actionBar, drawable);
                actionBarDrawerToggleHoneycomb$SetIndicatorInfo2.setHomeActionContentDescription.invoke(actionBar, Integer.valueOf(i));
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHC", "Couldn't set home-as-up indicator via JB-MR2 API", e);
            }
        } else if (actionBarDrawerToggleHoneycomb$SetIndicatorInfo2.upIndicatorView != null) {
            actionBarDrawerToggleHoneycomb$SetIndicatorInfo2.upIndicatorView.setImageDrawable(drawable);
        } else {
            Log.w("ActionBarDrawerToggleHC", "Couldn't set home-as-up indicator");
        }
        return actionBarDrawerToggleHoneycomb$SetIndicatorInfo2;
    }

    public static ActionBarDrawerToggleHoneycomb$SetIndicatorInfo setActionBarDescription(ActionBarDrawerToggleHoneycomb$SetIndicatorInfo actionBarDrawerToggleHoneycomb$SetIndicatorInfo, Activity activity, int i) {
        if (actionBarDrawerToggleHoneycomb$SetIndicatorInfo == null) {
            actionBarDrawerToggleHoneycomb$SetIndicatorInfo = new ActionBarDrawerToggleHoneycomb$SetIndicatorInfo(activity);
        }
        if (actionBarDrawerToggleHoneycomb$SetIndicatorInfo.setHomeAsUpIndicator != null) {
            try {
                android.app.ActionBar actionBar = activity.getActionBar();
                actionBarDrawerToggleHoneycomb$SetIndicatorInfo.setHomeActionContentDescription.invoke(actionBar, Integer.valueOf(i));
                if (Build$VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHC", "Couldn't set content description via JB-MR2 API", e);
            }
        }
        return actionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    }

    public static Drawable getThemeUpIndicator(Activity activity) {
        TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(THEME_ATTRS);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        return drawable;
    }

    private ActionBarDrawerToggleHoneycomb() {
    }
}
