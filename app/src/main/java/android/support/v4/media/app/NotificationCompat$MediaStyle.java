package android.support.v4.media.app;

import android.app.Notification;
import android.app.Notification$MediaStyle;
import android.app.PendingIntent;
import android.media.session.MediaSession$Token;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.mediacompat.R$id;
import android.support.mediacompat.R$integer;
import android.support.mediacompat.R$layout;
import android.support.v4.app.BundleCompat;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompat$Action;
import android.support.v4.app.NotificationCompat$Builder;
import android.support.v4.app.NotificationCompat$Style;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.widget.RemoteViews;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat$MediaStyle extends NotificationCompat$Style {
    private static final int MAX_MEDIA_BUTTONS = 5;
    private static final int MAX_MEDIA_BUTTONS_IN_COMPACT = 3;
    int[] mActionsToShowInCompact = null;
    PendingIntent mCancelButtonIntent;
    boolean mShowCancelButton;
    MediaSessionCompat$Token mToken;

    public static MediaSessionCompat$Token getMediaSession(Notification notification) {
        Bundle extras = android.support.v4.app.NotificationCompat.getExtras(notification);
        if (extras == null) {
            return null;
        }
        if (Build$VERSION.SDK_INT >= 21) {
            Parcelable parcelable = extras.getParcelable("android.mediaSession");
            if (parcelable != null) {
                return MediaSessionCompat$Token.fromToken(parcelable);
            }
            return null;
        }
        IBinder binder = BundleCompat.getBinder(extras, "android.mediaSession");
        if (binder == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeStrongBinder(binder);
        parcelObtain.setDataPosition(0);
        MediaSessionCompat$Token mediaSessionCompat$TokenCreateFromParcel = MediaSessionCompat$Token.CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return mediaSessionCompat$TokenCreateFromParcel;
    }

    public NotificationCompat$MediaStyle() {
    }

    public NotificationCompat$MediaStyle(NotificationCompat$Builder notificationCompat$Builder) {
        setBuilder(notificationCompat$Builder);
    }

    public NotificationCompat$MediaStyle setShowActionsInCompactView(int... iArr) {
        this.mActionsToShowInCompact = iArr;
        return this;
    }

    public NotificationCompat$MediaStyle setMediaSession(MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.mToken = mediaSessionCompat$Token;
        return this;
    }

    public NotificationCompat$MediaStyle setShowCancelButton(boolean z) {
        if (Build$VERSION.SDK_INT < 21) {
            this.mShowCancelButton = z;
        }
        return this;
    }

    public NotificationCompat$MediaStyle setCancelButtonIntent(PendingIntent pendingIntent) {
        this.mCancelButtonIntent = pendingIntent;
        return this;
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 21) {
            notificationBuilderWithBuilderAccessor.getBuilder().setStyle(fillInMediaStyle(new Notification$MediaStyle()));
        } else if (this.mShowCancelButton) {
            notificationBuilderWithBuilderAccessor.getBuilder().setOngoing(true);
        }
    }

    @RequiresApi(21)
    Notification$MediaStyle fillInMediaStyle(Notification$MediaStyle notification$MediaStyle) {
        if (this.mActionsToShowInCompact != null) {
            notification$MediaStyle.setShowActionsInCompactView(this.mActionsToShowInCompact);
        }
        if (this.mToken != null) {
            notification$MediaStyle.setMediaSession((MediaSession$Token) this.mToken.getToken());
        }
        return notification$MediaStyle;
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 21) {
            return null;
        }
        return generateContentView();
    }

    RemoteViews generateContentView() {
        RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(false, getContentViewLayoutResource(), true);
        int size = this.mBuilder.mActions.size();
        int iMin = this.mActionsToShowInCompact == null ? 0 : Math.min(this.mActionsToShowInCompact.length, 3);
        remoteViewsApplyStandardTemplate.removeAllViews(R$id.media_actions);
        if (iMin > 0) {
            for (int i = 0; i < iMin; i++) {
                if (i >= size) {
                    throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i), Integer.valueOf(size - 1)));
                }
                remoteViewsApplyStandardTemplate.addView(R$id.media_actions, generateMediaActionButton(this.mBuilder.mActions.get(this.mActionsToShowInCompact[i])));
            }
        }
        if (this.mShowCancelButton) {
            remoteViewsApplyStandardTemplate.setViewVisibility(R$id.end_padder, 8);
            remoteViewsApplyStandardTemplate.setViewVisibility(R$id.cancel_action, 0);
            remoteViewsApplyStandardTemplate.setOnClickPendingIntent(R$id.cancel_action, this.mCancelButtonIntent);
            remoteViewsApplyStandardTemplate.setInt(R$id.cancel_action, "setAlpha", this.mBuilder.mContext.getResources().getInteger(R$integer.cancel_button_image_alpha));
        } else {
            remoteViewsApplyStandardTemplate.setViewVisibility(R$id.end_padder, 0);
            remoteViewsApplyStandardTemplate.setViewVisibility(R$id.cancel_action, 8);
        }
        return remoteViewsApplyStandardTemplate;
    }

    private RemoteViews generateMediaActionButton(NotificationCompat$Action notificationCompat$Action) {
        boolean z = notificationCompat$Action.getActionIntent() == null;
        RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), R$layout.notification_media_action);
        remoteViews.setImageViewResource(R$id.action0, notificationCompat$Action.getIcon());
        if (!z) {
            remoteViews.setOnClickPendingIntent(R$id.action0, notificationCompat$Action.getActionIntent());
        }
        if (Build$VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(R$id.action0, notificationCompat$Action.getTitle());
        }
        return remoteViews;
    }

    int getContentViewLayoutResource() {
        return R$layout.notification_template_media;
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 21) {
            return null;
        }
        return generateBigContentView();
    }

    RemoteViews generateBigContentView() {
        int iMin = Math.min(this.mBuilder.mActions.size(), 5);
        RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(false, getBigContentViewLayoutResource(iMin), false);
        remoteViewsApplyStandardTemplate.removeAllViews(R$id.media_actions);
        if (iMin > 0) {
            for (int i = 0; i < iMin; i++) {
                remoteViewsApplyStandardTemplate.addView(R$id.media_actions, generateMediaActionButton(this.mBuilder.mActions.get(i)));
            }
        }
        if (this.mShowCancelButton) {
            remoteViewsApplyStandardTemplate.setViewVisibility(R$id.cancel_action, 0);
            remoteViewsApplyStandardTemplate.setInt(R$id.cancel_action, "setAlpha", this.mBuilder.mContext.getResources().getInteger(R$integer.cancel_button_image_alpha));
            remoteViewsApplyStandardTemplate.setOnClickPendingIntent(R$id.cancel_action, this.mCancelButtonIntent);
        } else {
            remoteViewsApplyStandardTemplate.setViewVisibility(R$id.cancel_action, 8);
        }
        return remoteViewsApplyStandardTemplate;
    }

    int getBigContentViewLayoutResource(int i) {
        return i <= 3 ? R$layout.notification_template_big_media_narrow : R$layout.notification_template_big_media;
    }
}
