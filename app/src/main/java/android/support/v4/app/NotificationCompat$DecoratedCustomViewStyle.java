package android.support.v4.app;

import android.app.Notification$DecoratedCustomViewStyle;
import android.os.Build$VERSION;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.compat.R$color;
import android.support.compat.R$id;
import android.support.compat.R$layout;
import android.widget.RemoteViews;

public class NotificationCompat$DecoratedCustomViewStyle extends NotificationCompat$Style {
    private static final int MAX_ACTION_BUTTONS = 3;

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 24) {
            notificationBuilderWithBuilderAccessor.getBuilder().setStyle(new Notification$DecoratedCustomViewStyle());
        }
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT < 24 && this.mBuilder.getContentView() != null) {
            return createRemoteViews(this.mBuilder.getContentView(), false);
        }
        return null;
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 24) {
            return null;
        }
        RemoteViews bigContentView = this.mBuilder.getBigContentView();
        if (bigContentView == null) {
            bigContentView = this.mBuilder.getContentView();
        }
        if (bigContentView == null) {
            return null;
        }
        return createRemoteViews(bigContentView, true);
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 24) {
            return null;
        }
        RemoteViews headsUpContentView = this.mBuilder.getHeadsUpContentView();
        RemoteViews contentView = headsUpContentView != null ? headsUpContentView : this.mBuilder.getContentView();
        if (headsUpContentView == null) {
            return null;
        }
        return createRemoteViews(contentView, true);
    }

    private RemoteViews createRemoteViews(RemoteViews remoteViews, boolean z) {
        int iMin;
        boolean z2 = true;
        RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(true, R$layout.notification_template_custom_big, false);
        remoteViewsApplyStandardTemplate.removeAllViews(R$id.actions);
        if (!z || this.mBuilder.mActions == null || (iMin = Math.min(this.mBuilder.mActions.size(), 3)) <= 0) {
            z2 = false;
        } else {
            for (int i = 0; i < iMin; i++) {
                remoteViewsApplyStandardTemplate.addView(R$id.actions, generateActionButton(this.mBuilder.mActions.get(i)));
            }
        }
        int i2 = z2 ? 0 : 8;
        remoteViewsApplyStandardTemplate.setViewVisibility(R$id.actions, i2);
        remoteViewsApplyStandardTemplate.setViewVisibility(R$id.action_divider, i2);
        buildIntoRemoteViews(remoteViewsApplyStandardTemplate, remoteViews);
        return remoteViewsApplyStandardTemplate;
    }

    private RemoteViews generateActionButton(NotificationCompat$Action notificationCompat$Action) {
        boolean z = notificationCompat$Action.actionIntent == null;
        RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), z ? R$layout.notification_action_tombstone : R$layout.notification_action);
        remoteViews.setImageViewBitmap(R$id.action_image, createColoredBitmap(notificationCompat$Action.getIcon(), this.mBuilder.mContext.getResources().getColor(R$color.notification_action_color_filter)));
        remoteViews.setTextViewText(R$id.action_text, notificationCompat$Action.title);
        if (!z) {
            remoteViews.setOnClickPendingIntent(R$id.action_container, notificationCompat$Action.actionIntent);
        }
        if (Build$VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(R$id.action_container, notificationCompat$Action.title);
        }
        return remoteViews;
    }
}
