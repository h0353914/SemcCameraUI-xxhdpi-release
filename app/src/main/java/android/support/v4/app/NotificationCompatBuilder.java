package android.support.v4.app;

import android.app.Notification;
import android.app.Notification$Action$Builder;
import android.app.Notification$Builder;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
class NotificationCompatBuilder implements NotificationBuilderWithBuilderAccessor {
    private RemoteViews mBigContentView;
    private final Notification$Builder mBuilder;
    private final NotificationCompat$Builder mBuilderCompat;
    private RemoteViews mContentView;
    private int mGroupAlertBehavior;
    private RemoteViews mHeadsUpContentView;
    private final List<Bundle> mActionExtrasList = new ArrayList();
    private final Bundle mExtras = new Bundle();

    NotificationCompatBuilder(NotificationCompat$Builder notificationCompat$Builder) {
        this.mBuilderCompat = notificationCompat$Builder;
        if (Build$VERSION.SDK_INT >= 26) {
            this.mBuilder = new Notification$Builder(notificationCompat$Builder.mContext, notificationCompat$Builder.mChannelId);
        } else {
            this.mBuilder = new Notification$Builder(notificationCompat$Builder.mContext);
        }
        Notification notification = notificationCompat$Builder.mNotification;
        this.mBuilder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, notificationCompat$Builder.mTickerView).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(notificationCompat$Builder.mContentTitle).setContentText(notificationCompat$Builder.mContentText).setContentInfo(notificationCompat$Builder.mContentInfo).setContentIntent(notificationCompat$Builder.mContentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(notificationCompat$Builder.mFullScreenIntent, (notification.flags & 128) != 0).setLargeIcon(notificationCompat$Builder.mLargeIcon).setNumber(notificationCompat$Builder.mNumber).setProgress(notificationCompat$Builder.mProgressMax, notificationCompat$Builder.mProgress, notificationCompat$Builder.mProgressIndeterminate);
        if (Build$VERSION.SDK_INT < 21) {
            this.mBuilder.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build$VERSION.SDK_INT >= 16) {
            this.mBuilder.setSubText(notificationCompat$Builder.mSubText).setUsesChronometer(notificationCompat$Builder.mUseChronometer).setPriority(notificationCompat$Builder.mPriority);
            Iterator<NotificationCompat$Action> it = notificationCompat$Builder.mActions.iterator();
            while (it.hasNext()) {
                addAction(it.next());
            }
            if (notificationCompat$Builder.mExtras != null) {
                this.mExtras.putAll(notificationCompat$Builder.mExtras);
            }
            if (Build$VERSION.SDK_INT < 20) {
                if (notificationCompat$Builder.mLocalOnly) {
                    this.mExtras.putBoolean("android.support.localOnly", true);
                }
                if (notificationCompat$Builder.mGroupKey != null) {
                    this.mExtras.putString("android.support.groupKey", notificationCompat$Builder.mGroupKey);
                    if (notificationCompat$Builder.mGroupSummary) {
                        this.mExtras.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.mExtras.putBoolean("android.support.useSideChannel", true);
                    }
                }
                if (notificationCompat$Builder.mSortKey != null) {
                    this.mExtras.putString("android.support.sortKey", notificationCompat$Builder.mSortKey);
                }
            }
            this.mContentView = notificationCompat$Builder.mContentView;
            this.mBigContentView = notificationCompat$Builder.mBigContentView;
        }
        if (Build$VERSION.SDK_INT >= 19) {
            this.mBuilder.setShowWhen(notificationCompat$Builder.mShowWhen);
            if (Build$VERSION.SDK_INT < 21 && notificationCompat$Builder.mPeople != null && !notificationCompat$Builder.mPeople.isEmpty()) {
                this.mExtras.putStringArray("android.people", (String[]) notificationCompat$Builder.mPeople.toArray(new String[notificationCompat$Builder.mPeople.size()]));
            }
        }
        if (Build$VERSION.SDK_INT >= 20) {
            this.mBuilder.setLocalOnly(notificationCompat$Builder.mLocalOnly).setGroup(notificationCompat$Builder.mGroupKey).setGroupSummary(notificationCompat$Builder.mGroupSummary).setSortKey(notificationCompat$Builder.mSortKey);
            this.mGroupAlertBehavior = notificationCompat$Builder.mGroupAlertBehavior;
        }
        if (Build$VERSION.SDK_INT >= 21) {
            this.mBuilder.setCategory(notificationCompat$Builder.mCategory).setColor(notificationCompat$Builder.mColor).setVisibility(notificationCompat$Builder.mVisibility).setPublicVersion(notificationCompat$Builder.mPublicVersion).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = notificationCompat$Builder.mPeople.iterator();
            while (it2.hasNext()) {
                this.mBuilder.addPerson(it2.next());
            }
            this.mHeadsUpContentView = notificationCompat$Builder.mHeadsUpContentView;
            if (notificationCompat$Builder.mInvisibleActions.size() > 0) {
                Bundle bundle = notificationCompat$Builder.getExtras().getBundle("android.car.EXTENSIONS");
                bundle = bundle == null ? new Bundle() : bundle;
                Bundle bundle2 = new Bundle();
                for (int i = 0; i < notificationCompat$Builder.mInvisibleActions.size(); i++) {
                    bundle2.putBundle(Integer.toString(i), NotificationCompatJellybean.getBundleForAction(notificationCompat$Builder.mInvisibleActions.get(i)));
                }
                bundle.putBundle("invisible_actions", bundle2);
                notificationCompat$Builder.getExtras().putBundle("android.car.EXTENSIONS", bundle);
                this.mExtras.putBundle("android.car.EXTENSIONS", bundle);
            }
        }
        if (Build$VERSION.SDK_INT >= 24) {
            this.mBuilder.setExtras(notificationCompat$Builder.mExtras).setRemoteInputHistory(notificationCompat$Builder.mRemoteInputHistory);
            if (notificationCompat$Builder.mContentView != null) {
                this.mBuilder.setCustomContentView(notificationCompat$Builder.mContentView);
            }
            if (notificationCompat$Builder.mBigContentView != null) {
                this.mBuilder.setCustomBigContentView(notificationCompat$Builder.mBigContentView);
            }
            if (notificationCompat$Builder.mHeadsUpContentView != null) {
                this.mBuilder.setCustomHeadsUpContentView(notificationCompat$Builder.mHeadsUpContentView);
            }
        }
        if (Build$VERSION.SDK_INT >= 26) {
            this.mBuilder.setBadgeIconType(notificationCompat$Builder.mBadgeIcon).setShortcutId(notificationCompat$Builder.mShortcutId).setTimeoutAfter(notificationCompat$Builder.mTimeout).setGroupAlertBehavior(notificationCompat$Builder.mGroupAlertBehavior);
            if (notificationCompat$Builder.mColorizedSet) {
                this.mBuilder.setColorized(notificationCompat$Builder.mColorized);
            }
            if (TextUtils.isEmpty(notificationCompat$Builder.mChannelId)) {
                return;
            }
            this.mBuilder.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
    }

    @Override // android.support.v4.app.NotificationBuilderWithBuilderAccessor
    public Notification$Builder getBuilder() {
        return this.mBuilder;
    }

    public Notification build() {
        Bundle extras;
        RemoteViews remoteViewsMakeHeadsUpContentView;
        RemoteViews remoteViewsMakeBigContentView;
        NotificationCompat$Style notificationCompat$Style = this.mBuilderCompat.mStyle;
        if (notificationCompat$Style != null) {
            notificationCompat$Style.apply(this);
        }
        RemoteViews remoteViewsMakeContentView = notificationCompat$Style != null ? notificationCompat$Style.makeContentView(this) : null;
        Notification notificationBuildInternal = buildInternal();
        if (remoteViewsMakeContentView != null) {
            notificationBuildInternal.contentView = remoteViewsMakeContentView;
        } else if (this.mBuilderCompat.mContentView != null) {
            notificationBuildInternal.contentView = this.mBuilderCompat.mContentView;
        }
        if (Build$VERSION.SDK_INT >= 16 && notificationCompat$Style != null && (remoteViewsMakeBigContentView = notificationCompat$Style.makeBigContentView(this)) != null) {
            notificationBuildInternal.bigContentView = remoteViewsMakeBigContentView;
        }
        if (Build$VERSION.SDK_INT >= 21 && notificationCompat$Style != null && (remoteViewsMakeHeadsUpContentView = this.mBuilderCompat.mStyle.makeHeadsUpContentView(this)) != null) {
            notificationBuildInternal.headsUpContentView = remoteViewsMakeHeadsUpContentView;
        }
        if (Build$VERSION.SDK_INT >= 16 && notificationCompat$Style != null && (extras = NotificationCompat.getExtras(notificationBuildInternal)) != null) {
            notificationCompat$Style.addCompatExtras(extras);
        }
        return notificationBuildInternal;
    }

    private void addAction(NotificationCompat$Action notificationCompat$Action) {
        Bundle bundle;
        if (Build$VERSION.SDK_INT >= 20) {
            Notification$Action$Builder notification$Action$Builder = new Notification$Action$Builder(notificationCompat$Action.getIcon(), notificationCompat$Action.getTitle(), notificationCompat$Action.getActionIntent());
            if (notificationCompat$Action.getRemoteInputs() != null) {
                for (android.app.RemoteInput remoteInput : RemoteInput.fromCompat(notificationCompat$Action.getRemoteInputs())) {
                    notification$Action$Builder.addRemoteInput(remoteInput);
                }
            }
            if (notificationCompat$Action.getExtras() != null) {
                bundle = new Bundle(notificationCompat$Action.getExtras());
            } else {
                bundle = new Bundle();
            }
            bundle.putBoolean("android.support.allowGeneratedReplies", notificationCompat$Action.getAllowGeneratedReplies());
            if (Build$VERSION.SDK_INT >= 24) {
                notification$Action$Builder.setAllowGeneratedReplies(notificationCompat$Action.getAllowGeneratedReplies());
            }
            bundle.putInt("android.support.action.semanticAction", notificationCompat$Action.getSemanticAction());
            if (Build$VERSION.SDK_INT >= 28) {
                notification$Action$Builder.setSemanticAction(notificationCompat$Action.getSemanticAction());
            }
            bundle.putBoolean("android.support.action.showsUserInterface", notificationCompat$Action.getShowsUserInterface());
            notification$Action$Builder.addExtras(bundle);
            this.mBuilder.addAction(notification$Action$Builder.build());
            return;
        }
        if (Build$VERSION.SDK_INT >= 16) {
            this.mActionExtrasList.add(NotificationCompatJellybean.writeActionAndGetExtras(this.mBuilder, notificationCompat$Action));
        }
    }

    protected Notification buildInternal() {
        if (Build$VERSION.SDK_INT >= 26) {
            return this.mBuilder.build();
        }
        if (Build$VERSION.SDK_INT >= 24) {
            Notification notificationBuild = this.mBuilder.build();
            if (this.mGroupAlertBehavior != 0) {
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) != 0 && this.mGroupAlertBehavior == 2) {
                    removeSoundAndVibration(notificationBuild);
                }
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) == 0 && this.mGroupAlertBehavior == 1) {
                    removeSoundAndVibration(notificationBuild);
                }
            }
            return notificationBuild;
        }
        if (Build$VERSION.SDK_INT >= 21) {
            this.mBuilder.setExtras(this.mExtras);
            Notification notificationBuild2 = this.mBuilder.build();
            if (this.mContentView != null) {
                notificationBuild2.contentView = this.mContentView;
            }
            if (this.mBigContentView != null) {
                notificationBuild2.bigContentView = this.mBigContentView;
            }
            if (this.mHeadsUpContentView != null) {
                notificationBuild2.headsUpContentView = this.mHeadsUpContentView;
            }
            if (this.mGroupAlertBehavior != 0) {
                if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & 512) != 0 && this.mGroupAlertBehavior == 2) {
                    removeSoundAndVibration(notificationBuild2);
                }
                if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & 512) == 0 && this.mGroupAlertBehavior == 1) {
                    removeSoundAndVibration(notificationBuild2);
                }
            }
            return notificationBuild2;
        }
        if (Build$VERSION.SDK_INT >= 20) {
            this.mBuilder.setExtras(this.mExtras);
            Notification notificationBuild3 = this.mBuilder.build();
            if (this.mContentView != null) {
                notificationBuild3.contentView = this.mContentView;
            }
            if (this.mBigContentView != null) {
                notificationBuild3.bigContentView = this.mBigContentView;
            }
            if (this.mGroupAlertBehavior != 0) {
                if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & 512) != 0 && this.mGroupAlertBehavior == 2) {
                    removeSoundAndVibration(notificationBuild3);
                }
                if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & 512) == 0 && this.mGroupAlertBehavior == 1) {
                    removeSoundAndVibration(notificationBuild3);
                }
            }
            return notificationBuild3;
        }
        if (Build$VERSION.SDK_INT >= 19) {
            SparseArray<Bundle> sparseArrayBuildActionExtrasMap = NotificationCompatJellybean.buildActionExtrasMap(this.mActionExtrasList);
            if (sparseArrayBuildActionExtrasMap != null) {
                this.mExtras.putSparseParcelableArray("android.support.actionExtras", sparseArrayBuildActionExtrasMap);
            }
            this.mBuilder.setExtras(this.mExtras);
            Notification notificationBuild4 = this.mBuilder.build();
            if (this.mContentView != null) {
                notificationBuild4.contentView = this.mContentView;
            }
            if (this.mBigContentView != null) {
                notificationBuild4.bigContentView = this.mBigContentView;
            }
            return notificationBuild4;
        }
        if (Build$VERSION.SDK_INT >= 16) {
            Notification notificationBuild5 = this.mBuilder.build();
            Bundle extras = NotificationCompat.getExtras(notificationBuild5);
            Bundle bundle = new Bundle(this.mExtras);
            for (String str : this.mExtras.keySet()) {
                if (extras.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            extras.putAll(bundle);
            SparseArray<Bundle> sparseArrayBuildActionExtrasMap2 = NotificationCompatJellybean.buildActionExtrasMap(this.mActionExtrasList);
            if (sparseArrayBuildActionExtrasMap2 != null) {
                NotificationCompat.getExtras(notificationBuild5).putSparseParcelableArray("android.support.actionExtras", sparseArrayBuildActionExtrasMap2);
            }
            if (this.mContentView != null) {
                notificationBuild5.contentView = this.mContentView;
            }
            if (this.mBigContentView != null) {
                notificationBuild5.bigContentView = this.mBigContentView;
            }
            return notificationBuild5;
        }
        return this.mBuilder.getNotification();
    }

    private void removeSoundAndVibration(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }
}
