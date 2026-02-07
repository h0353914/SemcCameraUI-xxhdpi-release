package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender$SendIntentException;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.IdRes;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v13.view.DragAndDropPermissionsCompat;
import android.support.v4.content.ContextCompat;
import android.view.DragEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class ActivityCompat extends ContextCompat {
    private static ActivityCompat$PermissionCompatDelegate sDelegate;

    protected ActivityCompat() {
    }

    public static void setPermissionCompatDelegate(@Nullable ActivityCompat$PermissionCompatDelegate activityCompat$PermissionCompatDelegate) {
        sDelegate = activityCompat$PermissionCompatDelegate;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static ActivityCompat$PermissionCompatDelegate getPermissionCompatDelegate() {
        return sDelegate;
    }

    @Deprecated
    public static boolean invalidateOptionsMenu(Activity activity) {
        activity.invalidateOptionsMenu();
        return true;
    }

    public static void startActivityForResult(@NonNull Activity activity, @NonNull Intent intent, int i, @Nullable Bundle bundle) {
        if (Build$VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    public static void startIntentSenderForResult(@NonNull Activity activity, @NonNull IntentSender intentSender, int i, @Nullable Intent intent, int i2, int i3, int i4, @Nullable Bundle bundle) throws IntentSender$SendIntentException {
        if (Build$VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
        }
    }

    public static void finishAffinity(@NonNull Activity activity) {
        if (Build$VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    public static void finishAfterTransition(@NonNull Activity activity) {
        if (Build$VERSION.SDK_INT >= 21) {
            activity.finishAfterTransition();
        } else {
            activity.finish();
        }
    }

    @Nullable
    public static Uri getReferrer(@NonNull Activity activity) {
        if (Build$VERSION.SDK_INT >= 22) {
            return activity.getReferrer();
        }
        Intent intent = activity.getIntent();
        Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.REFERRER");
        if (uri != null) {
            return uri;
        }
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        if (stringExtra != null) {
            return Uri.parse(stringExtra);
        }
        return null;
    }

    @NonNull
    public static <T extends View> T requireViewById(@NonNull Activity activity, @IdRes int i) {
        if (Build$VERSION.SDK_INT >= 28) {
            return (T) activity.requireViewById(i);
        }
        T t = (T) activity.findViewById(i);
        if (t == null) {
            throw new IllegalArgumentException("ID does not reference a View inside this Activity");
        }
        return t;
    }

    public static void setEnterSharedElementCallback(@NonNull Activity activity, @Nullable SharedElementCallback sharedElementCallback) {
        if (Build$VERSION.SDK_INT >= 21) {
            activity.setEnterSharedElementCallback(sharedElementCallback != null ? new ActivityCompat$SharedElementCallback21Impl(sharedElementCallback) : null);
        }
    }

    public static void setExitSharedElementCallback(@NonNull Activity activity, @Nullable SharedElementCallback sharedElementCallback) {
        if (Build$VERSION.SDK_INT >= 21) {
            activity.setExitSharedElementCallback(sharedElementCallback != null ? new ActivityCompat$SharedElementCallback21Impl(sharedElementCallback) : null);
        }
    }

    public static void postponeEnterTransition(@NonNull Activity activity) {
        if (Build$VERSION.SDK_INT >= 21) {
            activity.postponeEnterTransition();
        }
    }

    public static void startPostponedEnterTransition(@NonNull Activity activity) {
        if (Build$VERSION.SDK_INT >= 21) {
            activity.startPostponedEnterTransition();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void requestPermissions(@NonNull Activity activity, @NonNull String[] strArr, @IntRange(from = 0) int i) {
        if (sDelegate == null || !sDelegate.requestPermissions(activity, strArr, i)) {
            if (Build$VERSION.SDK_INT >= 23) {
                if (activity instanceof ActivityCompat$RequestPermissionsRequestCodeValidator) {
                    ((ActivityCompat$RequestPermissionsRequestCodeValidator) activity).validateRequestPermissionsRequestCode(i);
                }
                activity.requestPermissions(strArr, i);
            } else if (activity instanceof ActivityCompat$OnRequestPermissionsResultCallback) {
                new Handler(Looper.getMainLooper()).post(new ActivityCompat$1(strArr, activity, i));
            }
        }
    }

    public static boolean shouldShowRequestPermissionRationale(@NonNull Activity activity, @NonNull String str) {
        if (Build$VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    @Nullable
    public static DragAndDropPermissionsCompat requestDragAndDropPermissions(Activity activity, DragEvent dragEvent) {
        return DragAndDropPermissionsCompat.request(activity, dragEvent);
    }
}
