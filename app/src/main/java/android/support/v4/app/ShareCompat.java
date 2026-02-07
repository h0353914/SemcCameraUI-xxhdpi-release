package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.os.Build$VERSION;
import android.view.ActionProvider;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ShareActionProvider;

/* JADX INFO: loaded from: classes.dex */
public final class ShareCompat {
    public static final String EXTRA_CALLING_ACTIVITY = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_PACKAGE = "android.support.v4.app.EXTRA_CALLING_PACKAGE";
    private static final String HISTORY_FILENAME_PREFIX = ".sharecompat_";

    private ShareCompat() {
    }

    public static String getCallingPackage(Activity activity) {
        String callingPackage = activity.getCallingPackage();
        return callingPackage == null ? activity.getIntent().getStringExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE") : callingPackage;
    }

    public static ComponentName getCallingActivity(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        return callingActivity == null ? (ComponentName) activity.getIntent().getParcelableExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY") : callingActivity;
    }

    public static void configureMenuItem(MenuItem menuItem, ShareCompat$IntentBuilder shareCompat$IntentBuilder) {
        ShareActionProvider shareActionProvider;
        ActionProvider actionProvider = menuItem.getActionProvider();
        if (!(actionProvider instanceof ShareActionProvider)) {
            shareActionProvider = new ShareActionProvider(shareCompat$IntentBuilder.getActivity());
        } else {
            shareActionProvider = (ShareActionProvider) actionProvider;
        }
        shareActionProvider.setShareHistoryFileName(".sharecompat_" + shareCompat$IntentBuilder.getActivity().getClass().getName());
        shareActionProvider.setShareIntent(shareCompat$IntentBuilder.getIntent());
        menuItem.setActionProvider(shareActionProvider);
        if (Build$VERSION.SDK_INT >= 16 || menuItem.hasSubMenu()) {
            return;
        }
        menuItem.setIntent(shareCompat$IntentBuilder.createChooserIntent());
    }

    public static void configureMenuItem(Menu menu, int i, ShareCompat$IntentBuilder shareCompat$IntentBuilder) {
        MenuItem menuItemFindItem = menu.findItem(i);
        if (menuItemFindItem == null) {
            throw new IllegalArgumentException("Could not find menu item with id " + i + " in the supplied menu");
        }
        configureMenuItem(menuItemFindItem, shareCompat$IntentBuilder);
    }
}
