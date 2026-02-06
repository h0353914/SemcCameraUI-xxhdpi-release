package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioAttributes$Builder;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.compat.R$dimen;
import android.widget.RemoteViews;
import java.util.ArrayList;

public class NotificationCompat$Builder {
    private static final int MAX_CHARSEQUENCE_LENGTH = 5120;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public ArrayList<NotificationCompat$Action> mActions;
    int mBadgeIcon;
    RemoteViews mBigContentView;
    String mCategory;
    String mChannelId;
    int mColor;
    boolean mColorized;
    boolean mColorizedSet;
    CharSequence mContentInfo;
    PendingIntent mContentIntent;
    CharSequence mContentText;
    CharSequence mContentTitle;
    RemoteViews mContentView;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public Context mContext;
    Bundle mExtras;
    PendingIntent mFullScreenIntent;
    int mGroupAlertBehavior;
    String mGroupKey;
    boolean mGroupSummary;
    RemoteViews mHeadsUpContentView;
    ArrayList<NotificationCompat$Action> mInvisibleActions;
    Bitmap mLargeIcon;
    boolean mLocalOnly;
    Notification mNotification;
    int mNumber;

    @Deprecated
    public ArrayList<String> mPeople;
    int mPriority;
    int mProgress;
    boolean mProgressIndeterminate;
    int mProgressMax;
    Notification mPublicVersion;
    CharSequence[] mRemoteInputHistory;
    String mShortcutId;
    boolean mShowWhen;
    String mSortKey;
    NotificationCompat$Style mStyle;
    CharSequence mSubText;
    RemoteViews mTickerView;
    long mTimeout;
    boolean mUseChronometer;
    int mVisibility;

    public NotificationCompat$Builder(@NonNull Context context, @NonNull String str) {
        this.mActions = new ArrayList<>();
        this.mInvisibleActions = new ArrayList<>();
        this.mShowWhen = true;
        this.mLocalOnly = false;
        this.mColor = 0;
        this.mVisibility = 0;
        this.mBadgeIcon = 0;
        this.mGroupAlertBehavior = 0;
        this.mNotification = new Notification();
        this.mContext = context;
        this.mChannelId = str;
        this.mNotification.when = System.currentTimeMillis();
        this.mNotification.audioStreamType = -1;
        this.mPriority = 0;
        this.mPeople = new ArrayList<>();
    }

    @Deprecated
    public NotificationCompat$Builder(Context context) {
        this(context, null);
    }

    public NotificationCompat$Builder setWhen(long j) {
        this.mNotification.when = j;
        return this;
    }

    public NotificationCompat$Builder setShowWhen(boolean z) {
        this.mShowWhen = z;
        return this;
    }

    public NotificationCompat$Builder setUsesChronometer(boolean z) {
        this.mUseChronometer = z;
        return this;
    }

    public NotificationCompat$Builder setSmallIcon(int i) {
        this.mNotification.icon = i;
        return this;
    }

    public NotificationCompat$Builder setSmallIcon(int i, int i2) {
        this.mNotification.icon = i;
        this.mNotification.iconLevel = i2;
        return this;
    }

    public NotificationCompat$Builder setContentTitle(CharSequence charSequence) {
        this.mContentTitle = limitCharSequenceLength(charSequence);
        return this;
    }

    public NotificationCompat$Builder setContentText(CharSequence charSequence) {
        this.mContentText = limitCharSequenceLength(charSequence);
        return this;
    }

    public NotificationCompat$Builder setSubText(CharSequence charSequence) {
        this.mSubText = limitCharSequenceLength(charSequence);
        return this;
    }

    public NotificationCompat$Builder setRemoteInputHistory(CharSequence[] charSequenceArr) {
        this.mRemoteInputHistory = charSequenceArr;
        return this;
    }

    public NotificationCompat$Builder setNumber(int i) {
        this.mNumber = i;
        return this;
    }

    public NotificationCompat$Builder setContentInfo(CharSequence charSequence) {
        this.mContentInfo = limitCharSequenceLength(charSequence);
        return this;
    }

    public NotificationCompat$Builder setProgress(int i, int i2, boolean z) {
        this.mProgressMax = i;
        this.mProgress = i2;
        this.mProgressIndeterminate = z;
        return this;
    }

    public NotificationCompat$Builder setContent(RemoteViews remoteViews) {
        this.mNotification.contentView = remoteViews;
        return this;
    }

    public NotificationCompat$Builder setContentIntent(PendingIntent pendingIntent) {
        this.mContentIntent = pendingIntent;
        return this;
    }

    public NotificationCompat$Builder setDeleteIntent(PendingIntent pendingIntent) {
        this.mNotification.deleteIntent = pendingIntent;
        return this;
    }

    public NotificationCompat$Builder setFullScreenIntent(PendingIntent pendingIntent, boolean z) {
        this.mFullScreenIntent = pendingIntent;
        setFlag(128, z);
        return this;
    }

    public NotificationCompat$Builder setTicker(CharSequence charSequence) {
        this.mNotification.tickerText = limitCharSequenceLength(charSequence);
        return this;
    }

    public NotificationCompat$Builder setTicker(CharSequence charSequence, RemoteViews remoteViews) {
        this.mNotification.tickerText = limitCharSequenceLength(charSequence);
        this.mTickerView = remoteViews;
        return this;
    }

    public NotificationCompat$Builder setLargeIcon(Bitmap bitmap) {
        this.mLargeIcon = reduceLargeIconSize(bitmap);
        return this;
    }

    private Bitmap reduceLargeIconSize(Bitmap bitmap) {
        if (bitmap == null || Build$VERSION.SDK_INT >= 27) {
            return bitmap;
        }
        Resources resources = this.mContext.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.compat_notification_large_icon_max_width);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R$dimen.compat_notification_large_icon_max_height);
        if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
            return bitmap;
        }
        double dMin = Math.min(((double) dimensionPixelSize) / ((double) Math.max(1, bitmap.getWidth())), ((double) dimensionPixelSize2) / ((double) Math.max(1, bitmap.getHeight())));
        return Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dMin), (int) Math.ceil(((double) bitmap.getHeight()) * dMin), true);
    }

    public NotificationCompat$Builder setSound(Uri uri) {
        this.mNotification.sound = uri;
        this.mNotification.audioStreamType = -1;
        if (Build$VERSION.SDK_INT >= 21) {
            this.mNotification.audioAttributes = new AudioAttributes$Builder().setContentType(4).setUsage(5).build();
        }
        return this;
    }

    public NotificationCompat$Builder setSound(Uri uri, int i) {
        this.mNotification.sound = uri;
        this.mNotification.audioStreamType = i;
        if (Build$VERSION.SDK_INT >= 21) {
            this.mNotification.audioAttributes = new AudioAttributes$Builder().setContentType(4).setLegacyStreamType(i).build();
        }
        return this;
    }

    public NotificationCompat$Builder setVibrate(long[] jArr) {
        this.mNotification.vibrate = jArr;
        return this;
    }

    public NotificationCompat$Builder setLights(@ColorInt int i, int i2, int i3) {
        this.mNotification.ledARGB = i;
        this.mNotification.ledOnMS = i2;
        this.mNotification.ledOffMS = i3;
        this.mNotification.flags = ((this.mNotification.ledOnMS == 0 || this.mNotification.ledOffMS == 0) ? 0 : 1) | (this.mNotification.flags & (-2));
        return this;
    }

    public NotificationCompat$Builder setOngoing(boolean z) {
        setFlag(2, z);
        return this;
    }

    public NotificationCompat$Builder setColorized(boolean z) {
        this.mColorized = z;
        this.mColorizedSet = true;
        return this;
    }

    public NotificationCompat$Builder setOnlyAlertOnce(boolean z) {
        setFlag(8, z);
        return this;
    }

    public NotificationCompat$Builder setAutoCancel(boolean z) {
        setFlag(16, z);
        return this;
    }

    public NotificationCompat$Builder setLocalOnly(boolean z) {
        this.mLocalOnly = z;
        return this;
    }

    public NotificationCompat$Builder setCategory(String str) {
        this.mCategory = str;
        return this;
    }

    public NotificationCompat$Builder setDefaults(int i) {
        this.mNotification.defaults = i;
        if ((i & 4) != 0) {
            this.mNotification.flags |= 1;
        }
        return this;
    }

    private void setFlag(int i, boolean z) {
        if (z) {
            Notification notification = this.mNotification;
            notification.flags = i | notification.flags;
        } else {
            Notification notification2 = this.mNotification;
            notification2.flags = (~i) & notification2.flags;
        }
    }

    public NotificationCompat$Builder setPriority(int i) {
        this.mPriority = i;
        return this;
    }

    public NotificationCompat$Builder addPerson(String str) {
        this.mPeople.add(str);
        return this;
    }

    public NotificationCompat$Builder setGroup(String str) {
        this.mGroupKey = str;
        return this;
    }

    public NotificationCompat$Builder setGroupSummary(boolean z) {
        this.mGroupSummary = z;
        return this;
    }

    public NotificationCompat$Builder setSortKey(String str) {
        this.mSortKey = str;
        return this;
    }

    public NotificationCompat$Builder addExtras(Bundle bundle) {
        if (bundle != null) {
            if (this.mExtras == null) {
                this.mExtras = new Bundle(bundle);
            } else {
                this.mExtras.putAll(bundle);
            }
        }
        return this;
    }

    public NotificationCompat$Builder setExtras(Bundle bundle) {
        this.mExtras = bundle;
        return this;
    }

    public Bundle getExtras() {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        return this.mExtras;
    }

    public NotificationCompat$Builder addAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
        this.mActions.add(new NotificationCompat$Action(i, charSequence, pendingIntent));
        return this;
    }

    public NotificationCompat$Builder addAction(NotificationCompat$Action notificationCompat$Action) {
        this.mActions.add(notificationCompat$Action);
        return this;
    }

    @RequiresApi(21)
    public NotificationCompat$Builder addInvisibleAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
        return addInvisibleAction(new NotificationCompat$Action(i, charSequence, pendingIntent));
    }

    @RequiresApi(21)
    public NotificationCompat$Builder addInvisibleAction(NotificationCompat$Action notificationCompat$Action) {
        this.mInvisibleActions.add(notificationCompat$Action);
        return this;
    }

    public NotificationCompat$Builder setStyle(NotificationCompat$Style notificationCompat$Style) {
        if (this.mStyle != notificationCompat$Style) {
            this.mStyle = notificationCompat$Style;
            if (this.mStyle != null) {
                this.mStyle.setBuilder(this);
            }
        }
        return this;
    }

    public NotificationCompat$Builder setColor(@ColorInt int i) {
        this.mColor = i;
        return this;
    }

    public NotificationCompat$Builder setVisibility(int i) {
        this.mVisibility = i;
        return this;
    }

    public NotificationCompat$Builder setPublicVersion(Notification notification) {
        this.mPublicVersion = notification;
        return this;
    }

    public NotificationCompat$Builder setCustomContentView(RemoteViews remoteViews) {
        this.mContentView = remoteViews;
        return this;
    }

    public NotificationCompat$Builder setCustomBigContentView(RemoteViews remoteViews) {
        this.mBigContentView = remoteViews;
        return this;
    }

    public NotificationCompat$Builder setCustomHeadsUpContentView(RemoteViews remoteViews) {
        this.mHeadsUpContentView = remoteViews;
        return this;
    }

    public NotificationCompat$Builder setChannelId(@NonNull String str) {
        this.mChannelId = str;
        return this;
    }

    public NotificationCompat$Builder setTimeoutAfter(long j) {
        this.mTimeout = j;
        return this;
    }

    public NotificationCompat$Builder setShortcutId(String str) {
        this.mShortcutId = str;
        return this;
    }

    public NotificationCompat$Builder setBadgeIconType(int i) {
        this.mBadgeIcon = i;
        return this;
    }

    public NotificationCompat$Builder setGroupAlertBehavior(int i) {
        this.mGroupAlertBehavior = i;
        return this;
    }

    public NotificationCompat$Builder extend(NotificationCompat$Extender notificationCompat$Extender) {
        notificationCompat$Extender.extend(this);
        return this;
    }

    @Deprecated
    public Notification getNotification() {
        return build();
    }

    public Notification build() {
        return new NotificationCompatBuilder(this).build();
    }

    protected static CharSequence limitCharSequenceLength(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews getContentView() {
        return this.mContentView;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews getBigContentView() {
        return this.mBigContentView;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews getHeadsUpContentView() {
        return this.mHeadsUpContentView;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public long getWhenIfShowing() {
        if (this.mShowWhen) {
            return this.mNotification.when;
        }
        return 0L;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public int getPriority() {
        return this.mPriority;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public int getColor() {
        return this.mColor;
    }
}
