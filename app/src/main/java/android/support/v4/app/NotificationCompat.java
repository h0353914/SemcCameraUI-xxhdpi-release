package android.support.v4.app;

import android.app.Notification;
import android.app.Notification$Action;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.List;

public class NotificationCompat {
    public static final int BADGE_ICON_LARGE = 2;
    public static final int BADGE_ICON_NONE = 0;
    public static final int BADGE_ICON_SMALL = 1;
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_REMINDER = "reminder";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";

    @ColorInt
    public static final int COLOR_DEFAULT = 0;
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;
    public static final String EXTRA_AUDIO_CONTENTS_URI = "android.audioContents";
    public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";
    public static final String EXTRA_BIG_TEXT = "android.bigText";
    public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
    public static final String EXTRA_CONVERSATION_TITLE = "android.conversationTitle";
    public static final String EXTRA_HIDDEN_CONVERSATION_TITLE = "android.hiddenConversationTitle";
    public static final String EXTRA_INFO_TEXT = "android.infoText";
    public static final String EXTRA_IS_GROUP_CONVERSATION = "android.isGroupConversation";
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
    public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";
    public static final String EXTRA_MESSAGES = "android.messages";
    public static final String EXTRA_MESSAGING_STYLE_USER = "android.messagingStyleUser";
    public static final String EXTRA_PEOPLE = "android.people";
    public static final String EXTRA_PICTURE = "android.picture";
    public static final String EXTRA_PROGRESS = "android.progress";
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
    public static final String EXTRA_REMOTE_INPUT_HISTORY = "android.remoteInputHistory";
    public static final String EXTRA_SELF_DISPLAY_NAME = "android.selfDisplayName";
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
    public static final String EXTRA_SHOW_WHEN = "android.showWhen";
    public static final String EXTRA_SMALL_ICON = "android.icon";
    public static final String EXTRA_SUB_TEXT = "android.subText";
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
    public static final String EXTRA_TEMPLATE = "android.template";
    public static final String EXTRA_TEXT = "android.text";
    public static final String EXTRA_TEXT_LINES = "android.textLines";
    public static final String EXTRA_TITLE = "android.title";
    public static final String EXTRA_TITLE_BIG = "android.title.big";
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;

    @Deprecated
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    public static final int FLAG_SHOW_LIGHTS = 1;
    public static final int GROUP_ALERT_ALL = 0;
    public static final int GROUP_ALERT_CHILDREN = 2;
    public static final int GROUP_ALERT_SUMMARY = 1;
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;
    public static final int STREAM_DEFAULT = -1;
    public static final int VISIBILITY_PRIVATE = 0;
    public static final int VISIBILITY_PUBLIC = 1;
    public static final int VISIBILITY_SECRET = -1;

    static Notification[] getNotificationArrayFromBundle(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Notification[]) || parcelableArray == null) {
            return (Notification[]) parcelableArray;
        }
        Notification[] notificationArr = new Notification[parcelableArray.length];
        for (int i = 0; i < parcelableArray.length; i++) {
            notificationArr[i] = (Notification) parcelableArray[i];
        }
        bundle.putParcelableArray(str, notificationArr);
        return notificationArr;
    }

    @Nullable
    public static Bundle getExtras(Notification notification) {
        if (Build$VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        if (Build$VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getExtras(notification);
        }
        return null;
    }

    public static int getActionCount(Notification notification) {
        if (Build$VERSION.SDK_INT >= 19) {
            if (notification.actions != null) {
                return notification.actions.length;
            }
            return 0;
        }
        if (Build$VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getActionCount(notification);
        }
        return 0;
    }

    public static NotificationCompat$Action getAction(Notification notification, int i) {
        if (Build$VERSION.SDK_INT >= 20) {
            return getActionCompatFromAction(notification.actions[i]);
        }
        if (Build$VERSION.SDK_INT >= 19) {
            Notification$Action notification$Action = notification.actions[i];
            SparseArray sparseParcelableArray = notification.extras.getSparseParcelableArray("android.support.actionExtras");
            return NotificationCompatJellybean.readAction(notification$Action.icon, notification$Action.title, notification$Action.actionIntent, sparseParcelableArray != null ? (Bundle) sparseParcelableArray.get(i) : null);
        }
        if (Build$VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getAction(notification, i);
        }
        return null;
    }

    @RequiresApi(20)
    static NotificationCompat$Action getActionCompatFromAction(Notification$Action notification$Action) {
        RemoteInput[] remoteInputArr;
        boolean z;
        int semanticAction;
        android.app.RemoteInput[] remoteInputs = notification$Action.getRemoteInputs();
        if (remoteInputs == null) {
            remoteInputArr = null;
        } else {
            RemoteInput[] remoteInputArr2 = new RemoteInput[remoteInputs.length];
            for (int i = 0; i < remoteInputs.length; i++) {
                android.app.RemoteInput remoteInput = remoteInputs[i];
                remoteInputArr2[i] = new RemoteInput(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), remoteInput.getExtras(), null);
            }
            remoteInputArr = remoteInputArr2;
        }
        if (Build$VERSION.SDK_INT >= 24) {
            z = notification$Action.getExtras().getBoolean("android.support.allowGeneratedReplies") || notification$Action.getAllowGeneratedReplies();
        } else {
            z = notification$Action.getExtras().getBoolean("android.support.allowGeneratedReplies");
        }
        boolean z2 = z;
        boolean z3 = notification$Action.getExtras().getBoolean("android.support.action.showsUserInterface", true);
        if (Build$VERSION.SDK_INT >= 28) {
            semanticAction = notification$Action.getSemanticAction();
        } else {
            semanticAction = notification$Action.getExtras().getInt("android.support.action.semanticAction", 0);
        }
        return new NotificationCompat$Action(notification$Action.icon, notification$Action.title, notification$Action.actionIntent, notification$Action.getExtras(), remoteInputArr, null, z2, semanticAction, z3);
    }

    @RequiresApi(21)
    public static List<NotificationCompat$Action> getInvisibleActions(Notification notification) {
        Bundle bundle;
        ArrayList arrayList = new ArrayList();
        Bundle bundle2 = notification.extras.getBundle("android.car.EXTENSIONS");
        if (bundle2 != null && (bundle = bundle2.getBundle("invisible_actions")) != null) {
            for (int i = 0; i < bundle.size(); i++) {
                arrayList.add(NotificationCompatJellybean.getActionFromBundle(bundle.getBundle(Integer.toString(i))));
            }
        }
        return arrayList;
    }

    @RequiresApi(19)
    public static CharSequence getContentTitle(Notification notification) {
        return notification.extras.getCharSequence("android.title");
    }

    public static String getCategory(Notification notification) {
        if (Build$VERSION.SDK_INT >= 21) {
            return notification.category;
        }
        return null;
    }

    public static boolean getLocalOnly(Notification notification) {
        if (Build$VERSION.SDK_INT >= 20) {
            return (notification.flags & 256) != 0;
        }
        if (Build$VERSION.SDK_INT >= 19) {
            return notification.extras.getBoolean("android.support.localOnly");
        }
        if (Build$VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getExtras(notification).getBoolean("android.support.localOnly");
        }
        return false;
    }

    public static String getGroup(Notification notification) {
        if (Build$VERSION.SDK_INT >= 20) {
            return notification.getGroup();
        }
        if (Build$VERSION.SDK_INT >= 19) {
            return notification.extras.getString("android.support.groupKey");
        }
        if (Build$VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getExtras(notification).getString("android.support.groupKey");
        }
        return null;
    }

    public static boolean isGroupSummary(Notification notification) {
        if (Build$VERSION.SDK_INT >= 20) {
            return (notification.flags & 512) != 0;
        }
        if (Build$VERSION.SDK_INT >= 19) {
            return notification.extras.getBoolean("android.support.isGroupSummary");
        }
        if (Build$VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getExtras(notification).getBoolean("android.support.isGroupSummary");
        }
        return false;
    }

    public static String getSortKey(Notification notification) {
        if (Build$VERSION.SDK_INT >= 20) {
            return notification.getSortKey();
        }
        if (Build$VERSION.SDK_INT >= 19) {
            return notification.extras.getString("android.support.sortKey");
        }
        if (Build$VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getExtras(notification).getString("android.support.sortKey");
        }
        return null;
    }

    public static String getChannelId(Notification notification) {
        if (Build$VERSION.SDK_INT >= 26) {
            return notification.getChannelId();
        }
        return null;
    }

    public static long getTimeoutAfter(Notification notification) {
        if (Build$VERSION.SDK_INT >= 26) {
            return notification.getTimeoutAfter();
        }
        return 0L;
    }

    public static int getBadgeIconType(Notification notification) {
        if (Build$VERSION.SDK_INT >= 26) {
            return notification.getBadgeIconType();
        }
        return 0;
    }

    public static String getShortcutId(Notification notification) {
        if (Build$VERSION.SDK_INT >= 26) {
            return notification.getShortcutId();
        }
        return null;
    }

    public static int getGroupAlertBehavior(Notification notification) {
        if (Build$VERSION.SDK_INT >= 26) {
            return notification.getGroupAlertBehavior();
        }
        return 0;
    }

    @Deprecated
    public NotificationCompat() {
    }
}
