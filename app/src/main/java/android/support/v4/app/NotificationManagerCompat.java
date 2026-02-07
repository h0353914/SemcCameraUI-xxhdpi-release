package android.support.v4.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.provider.Settings$Secure;
import android.support.annotation.GuardedBy;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class NotificationManagerCompat {
    public static final String ACTION_BIND_SIDE_CHANNEL = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL";
    private static final String CHECK_OP_NO_THROW = "checkOpNoThrow";
    public static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
    public static final int IMPORTANCE_DEFAULT = 3;
    public static final int IMPORTANCE_HIGH = 4;
    public static final int IMPORTANCE_LOW = 2;
    public static final int IMPORTANCE_MAX = 5;
    public static final int IMPORTANCE_MIN = 1;
    public static final int IMPORTANCE_NONE = 0;
    public static final int IMPORTANCE_UNSPECIFIED = -1000;
    static final int MAX_SIDE_CHANNEL_SDK_VERSION = 19;
    private static final String OP_POST_NOTIFICATION = "OP_POST_NOTIFICATION";
    private static final String SETTING_ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";
    private static final int SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS = 1000;
    private static final int SIDE_CHANNEL_RETRY_MAX_COUNT = 6;
    private static final String TAG = "NotifManCompat";

    @GuardedBy("sEnabledNotificationListenersLock")
    private static String sEnabledNotificationListeners;

    @GuardedBy("sLock")
    private static NotificationManagerCompat$SideChannelManager sSideChannelManager;
    private final Context mContext;
    private final NotificationManager mNotificationManager;
    private static final Object sEnabledNotificationListenersLock = new Object();

    @GuardedBy("sEnabledNotificationListenersLock")
    private static Set<String> sEnabledNotificationListenerPackages = new HashSet();
    private static final Object sLock = new Object();

    @NonNull
    public static NotificationManagerCompat from(@NonNull Context context) {
        return new NotificationManagerCompat(context);
    }

    private NotificationManagerCompat(Context context) {
        this.mContext = context;
        this.mNotificationManager = (NotificationManager) this.mContext.getSystemService("notification");
    }

    public void cancel(int i) {
        cancel(null, i);
    }

    public void cancel(@Nullable String str, int i) {
        this.mNotificationManager.cancel(str, i);
        if (Build$VERSION.SDK_INT <= 19) {
            pushSideChannelQueue(new NotificationManagerCompat$CancelTask(this.mContext.getPackageName(), i, str));
        }
    }

    public void cancelAll() {
        this.mNotificationManager.cancelAll();
        if (Build$VERSION.SDK_INT <= 19) {
            pushSideChannelQueue(new NotificationManagerCompat$CancelTask(this.mContext.getPackageName()));
        }
    }

    public void notify(int i, @NonNull Notification notification) {
        notify(null, i, notification);
    }

    public void notify(@Nullable String str, int i, @NonNull Notification notification) {
        if (useSideChannelForNotification(notification)) {
            pushSideChannelQueue(new NotificationManagerCompat$NotifyTask(this.mContext.getPackageName(), i, str, notification));
            this.mNotificationManager.cancel(str, i);
        } else {
            this.mNotificationManager.notify(str, i, notification);
        }
    }

    public boolean areNotificationsEnabled() {
        if (Build$VERSION.SDK_INT >= 24) {
            return this.mNotificationManager.areNotificationsEnabled();
        }
        if (Build$VERSION.SDK_INT < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.mContext.getSystemService("appops");
        ApplicationInfo applicationInfo = this.mContext.getApplicationInfo();
        String packageName = this.mContext.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            return ((Integer) cls.getMethod("checkOpNoThrow", Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        }
    }

    public int getImportance() {
        if (Build$VERSION.SDK_INT >= 24) {
            return this.mNotificationManager.getImportance();
        }
        return -1000;
    }

    @NonNull
    public static Set<String> getEnabledListenerPackages(@NonNull Context context) {
        Set<String> set;
        String string = Settings$Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (sEnabledNotificationListenersLock) {
            if (string != null) {
                try {
                    if (!string.equals(sEnabledNotificationListeners)) {
                        String[] strArrSplit = string.split(":", -1);
                        HashSet hashSet = new HashSet(strArrSplit.length);
                        for (String str : strArrSplit) {
                            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                            if (componentNameUnflattenFromString != null) {
                                hashSet.add(componentNameUnflattenFromString.getPackageName());
                            }
                        }
                        sEnabledNotificationListenerPackages = hashSet;
                        sEnabledNotificationListeners = string;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            set = sEnabledNotificationListenerPackages;
        }
        return set;
    }

    private static boolean useSideChannelForNotification(Notification notification) {
        Bundle extras = NotificationCompat.getExtras(notification);
        return extras != null && extras.getBoolean("android.support.useSideChannel");
    }

    private void pushSideChannelQueue(NotificationManagerCompat$Task notificationManagerCompat$Task) {
        synchronized (sLock) {
            if (sSideChannelManager == null) {
                sSideChannelManager = new NotificationManagerCompat$SideChannelManager(this.mContext.getApplicationContext());
            }
            sSideChannelManager.queueTask(notificationManagerCompat$Task);
        }
    }
}
