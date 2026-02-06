package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

public final class NotificationCompat$CarExtender implements NotificationCompat$Extender {

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    static final String EXTRA_CAR_EXTENDER = "android.car.EXTENSIONS";
    private static final String EXTRA_COLOR = "app_color";
    private static final String EXTRA_CONVERSATION = "car_conversation";

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    static final String EXTRA_INVISIBLE_ACTIONS = "invisible_actions";
    private static final String EXTRA_LARGE_ICON = "large_icon";
    private static final String KEY_AUTHOR = "author";
    private static final String KEY_MESSAGES = "messages";
    private static final String KEY_ON_READ = "on_read";
    private static final String KEY_ON_REPLY = "on_reply";
    private static final String KEY_PARTICIPANTS = "participants";
    private static final String KEY_REMOTE_INPUT = "remote_input";
    private static final String KEY_TEXT = "text";
    private static final String KEY_TIMESTAMP = "timestamp";
    private int mColor;
    private Bitmap mLargeIcon;
    private NotificationCompat$CarExtender$UnreadConversation mUnreadConversation;

    public NotificationCompat$CarExtender() {
        this.mColor = 0;
    }

    public NotificationCompat$CarExtender(Notification notification) {
        this.mColor = 0;
        if (Build$VERSION.SDK_INT < 21) {
            return;
        }
        Bundle bundle = NotificationCompat.getExtras(notification) == null ? null : NotificationCompat.getExtras(notification).getBundle("android.car.EXTENSIONS");
        if (bundle != null) {
            this.mLargeIcon = (Bitmap) bundle.getParcelable("large_icon");
            this.mColor = bundle.getInt("app_color", 0);
            this.mUnreadConversation = getUnreadConversationFromBundle(bundle.getBundle("car_conversation"));
        }
    }

    @RequiresApi(21)
    private static NotificationCompat$CarExtender$UnreadConversation getUnreadConversationFromBundle(@Nullable Bundle bundle) {
        String[] strArr;
        if (bundle == null) {
            return null;
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray("messages");
        if (parcelableArray != null) {
            String[] strArr2 = new String[parcelableArray.length];
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= strArr2.length) {
                    z = true;
                    break;
                }
                if (!(parcelableArray[i] instanceof Bundle)) {
                    break;
                }
                strArr2[i] = ((Bundle) parcelableArray[i]).getString("text");
                if (strArr2[i] == null) {
                    break;
                }
                i++;
            }
            if (!z) {
                return null;
            }
            strArr = strArr2;
        } else {
            strArr = null;
        }
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("on_read");
        PendingIntent pendingIntent2 = (PendingIntent) bundle.getParcelable("on_reply");
        android.app.RemoteInput remoteInput = (android.app.RemoteInput) bundle.getParcelable("remote_input");
        String[] stringArray = bundle.getStringArray("participants");
        if (stringArray == null || stringArray.length != 1) {
            return null;
        }
        return new NotificationCompat$CarExtender$UnreadConversation(strArr, remoteInput != null ? new RemoteInput(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), remoteInput.getExtras(), null) : null, pendingIntent2, pendingIntent, stringArray, bundle.getLong("timestamp"));
    }

    @RequiresApi(21)
    private static Bundle getBundleForUnreadConversation(@NonNull NotificationCompat$CarExtender$UnreadConversation notificationCompat$CarExtender$UnreadConversation) {
        Bundle bundle = new Bundle();
        String str = (notificationCompat$CarExtender$UnreadConversation.getParticipants() == null || notificationCompat$CarExtender$UnreadConversation.getParticipants().length <= 1) ? null : notificationCompat$CarExtender$UnreadConversation.getParticipants()[0];
        Parcelable[] parcelableArr = new Parcelable[notificationCompat$CarExtender$UnreadConversation.getMessages().length];
        for (int i = 0; i < parcelableArr.length; i++) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("text", notificationCompat$CarExtender$UnreadConversation.getMessages()[i]);
            bundle2.putString("author", str);
            parcelableArr[i] = bundle2;
        }
        bundle.putParcelableArray("messages", parcelableArr);
        RemoteInput remoteInput = notificationCompat$CarExtender$UnreadConversation.getRemoteInput();
        if (remoteInput != null) {
            bundle.putParcelable("remote_input", new android.app.RemoteInput$Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras()).build());
        }
        bundle.putParcelable("on_reply", notificationCompat$CarExtender$UnreadConversation.getReplyPendingIntent());
        bundle.putParcelable("on_read", notificationCompat$CarExtender$UnreadConversation.getReadPendingIntent());
        bundle.putStringArray("participants", notificationCompat$CarExtender$UnreadConversation.getParticipants());
        bundle.putLong("timestamp", notificationCompat$CarExtender$UnreadConversation.getLatestTimestamp());
        return bundle;
    }

    @Override // android.support.v4.app.NotificationCompat$Extender
    public NotificationCompat$Builder extend(NotificationCompat$Builder notificationCompat$Builder) {
        if (Build$VERSION.SDK_INT < 21) {
            return notificationCompat$Builder;
        }
        Bundle bundle = new Bundle();
        if (this.mLargeIcon != null) {
            bundle.putParcelable("large_icon", this.mLargeIcon);
        }
        if (this.mColor != 0) {
            bundle.putInt("app_color", this.mColor);
        }
        if (this.mUnreadConversation != null) {
            bundle.putBundle("car_conversation", getBundleForUnreadConversation(this.mUnreadConversation));
        }
        notificationCompat$Builder.getExtras().putBundle("android.car.EXTENSIONS", bundle);
        return notificationCompat$Builder;
    }

    public NotificationCompat$CarExtender setColor(@ColorInt int i) {
        this.mColor = i;
        return this;
    }

    @ColorInt
    public int getColor() {
        return this.mColor;
    }

    public NotificationCompat$CarExtender setLargeIcon(Bitmap bitmap) {
        this.mLargeIcon = bitmap;
        return this;
    }

    public Bitmap getLargeIcon() {
        return this.mLargeIcon;
    }

    public NotificationCompat$CarExtender setUnreadConversation(NotificationCompat$CarExtender$UnreadConversation notificationCompat$CarExtender$UnreadConversation) {
        this.mUnreadConversation = notificationCompat$CarExtender$UnreadConversation;
        return this;
    }

    public NotificationCompat$CarExtender$UnreadConversation getUnreadConversation() {
        return this.mUnreadConversation;
    }
}
